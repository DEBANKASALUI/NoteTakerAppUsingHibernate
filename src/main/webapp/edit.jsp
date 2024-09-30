<!doctype html>
<%@page import="com.hibernate.entities.Note"%>
<%@page import="com.factory.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Note Taker: EDIT page</title>
<%@include file="all_js_css.jsp"%>
</head>

<body>

	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>EDIT your note</h1>
		<br>
		<%
		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		Session s=FactoryProvider.getfactory().openSession();
		Note note=(Note)s.get(Note.class, noteId);
		
		%>
		
		<form action="UpdateServlet" method="post">
		<input value="<%=note.getId()%>" name="noteId" type="hidden"/>
			<div class="form-group">
				<label for="title">Title</label> 
				<input 
				name="title"
				required type="text"
					class="form-control"
					id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter title here"
					value="<%=note.getTitle() %>"/>
					
			</div>
			
		
			<div class="form-group">
				<label for="content">Content</label> 
				
				<textarea 
				name="content"
				required
				id="content" 
				class="form-control" 
				placeholder="Enter Description here"
				style="height: 200px"><%=note.getContent() %></textarea>
				
			</div>
			
			<button type="submit" class="btn btn-success">SAVE your Note</button>
		</form>
		
	</div>




</body>
</html>