<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h3>Please add your Personalized Notes here..!!</h3>
		<br>
		<!--add form  -->
		<form action="SaveNoteServlet" method="post">
		
			<div class="form-group">
				<label for="title">Title</label> 
				<input 
				name="title"
				required type="text"
					class="form-control"
					id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter title here"/>
					 
					<!-- <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small> -->
			</div>
			
		
			<div class="form-group">
				<label for="content">Content</label> 
				
				<textarea 
				name="content"
				required
				id="content" 
				class="form-control" 
				placeholder="Enter Description here"
				style="height: 200px"></textarea>
				
			</div>
			
			<button type="submit" class="btn btn-primary">ADD</button>
		</form>


	</div>


</body>
</html>