package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;

import com.factory.helper.FactoryProvider;
import com.hibernate.entities.Note;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public SaveNoteServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
//			fetch title and content
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Note note=new Note(title, content, new Date());
//			System.out.println(note.getId());
			
//			now saving the data to DB using Hibernate
			Session session=FactoryProvider.getfactory().openSession();
			session.beginTransaction();
			
			session.save(note);
			
			session.getTransaction().commit();
			
			session.close();
			
			response.setContentType("text/html");
			PrintWriter writer=response.getWriter();
			writer.println("<br><br><h2 style='text-align:center;'>Note was created today, "+new Date().toString()+"<br> Note is saved successfully in database..!!</h2>");
			writer.println("<br><h2 style='text-align:center;'><a href='all_notes.jsp'>View All Notes</a></h2>");
//			FactoryProvider.closeFactory();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
