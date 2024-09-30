<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Note Taker: Home page</title>
<%@include file="all_js_css.jsp"%>
</head>

<body>

	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h2>Welcome to the Note-Taker APP..!</h2>
		<br>
		<div class="card"></div>
		
		<img class="img-fluid mx-auto" style="max-width:350px;"src="image/note.png" alt="Card image cap">
		<h3 class="text-primary text-center">Start taking your Notes!!</h3>
		<div class="container text-center">
		<!-- button class="btn btn-outline-primary text-center">Start Here</button>-->
		<a href="add_notes.jsp" class="btn btn-primary text-center">Start Here</a>
		</div>
		
	</div>
</body>
</html>