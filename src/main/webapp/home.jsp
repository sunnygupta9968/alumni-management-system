 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.db.DBConnection" %>
 <%@ page import ="java.sql.Connection" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jai Shree Ram</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="components/sAttyle.css">
</head>
<body>
<%
	Connection con=DBConnection.getConn();
	out.print(con);

%>


<%@include file="components/navbar.jsp"%>
			<div class="home">
			
		<%@include file="components/bootnav.jsp"%>
		<div class="section-hero">
			<div class="container">
				<div class="hero-text-content">
					<div class="hero-heading">
						<h2>Earn While You Learn</h2>
						<p class="hero-para">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Dolores, dolorem.</p>
						<div class="hero-search">

							<input type="text" class="hero-searchbar"
								placeholder="Paste Youtube Course Link or Search..."> <i
								class='bx bx-search'></i>
						</div>
					</div>
				</div>
				<div class="hero-img">
					<img
						src="https://plus.unsplash.com/premium_vector-1721306578295-7dd4e505343e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTF8fGlsbHVzdHJhdGlvbiUyMHByb2dyYW1tZXJ8ZW58MHx8MHx8fDA%3D"
						alt="">
				</div>

			</div>

		</div>
		<br>
		<hr>




		<%@include file="components/notes.jsp"%>

		<%@include file="components/memories.jsp"%>
		<%@include file="components/startupSlider.jsp"%>
		<%@include file="components/footer.jsp"%>
	</div>

	<script src="components/ssScripts.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>