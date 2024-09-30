<!doctype html>
<%@page import="java.io.Writer"%>
<%@page import="com.hibernate.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.factory.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Show All Notes: Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>ALL NOTES:</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getfactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top" style="max-width:70px;"src="image/note.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p><b class="text-primary"><%=note.getAddedDate()%></b></p>
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
					</div>
				</div>
				<%
				}

				s.close();
				%>
			</div>
		</div>
		<%-- <%
		Session s = FactoryProvider.getfactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for (Note note : list) {
			out.println(note.getId() + " " + note.getTitle() + " " + note.getContent() + " " + note.getAddedDate() + "<br>");
		}

		s.close();
		%> --%>
	</div>

</body>
</html>