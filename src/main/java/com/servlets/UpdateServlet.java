package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;

import com.factory.helper.FactoryProvider;
import com.hibernate.entities.Note;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
    public UpdateServlet() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			int noteId=Integer.parseInt(request.getParameter("noteId").trim());
			Session session=FactoryProvider.getfactory().openSession();
			session.beginTransaction();
			
			Note note=(Note)session.get(Note.class, noteId);
			
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			
			session.getTransaction().commit();
			
			session.close();
			
			response.sendRedirect("all_notes.jsp");
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
