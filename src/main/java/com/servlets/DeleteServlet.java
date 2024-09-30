package com.servlets;

import java.io.IOException;

import org.hibernate.Session;
import com.factory.helper.FactoryProvider;
import com.hibernate.entities.Note;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;


public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int noteId=Integer.parseInt(request.getParameter("note_id").trim());
			Session s=FactoryProvider.getfactory().openSession();
			
			s.beginTransaction();
			Note note=(Note)s.get(Note.class, noteId);
			s.delete(note);
			s.getTransaction().commit();
			
			s.close();
			response.sendRedirect("all_notes.jsp");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}


}
