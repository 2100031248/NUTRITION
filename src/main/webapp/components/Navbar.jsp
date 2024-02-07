<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<link rel="stylesheet" href="components/Navbar.css">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" id="Cname" href="index.jsp"><i
			class="fas fa-clinic-medical"></i> Cloudnine</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ">
				
				<li class="nav-item dropdown"><a
					class="nav-link active dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> SERVICES </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Something else here</a></li>
					</ul></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">ABOUT US</a></li>



				<c:if test="${empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp">APPOINTMENT</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp">CONTACT US</a></li>

					<div class="dropdown" id="ddown" >
						<button class="btn btn-danger dropdown-toggle" type="button"
							data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fas fa-sign-in-alt"></i> Login
						</button>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="user_login.jsp">User</a></li>
							<li><a class="dropdown-item" href="doctor_login.jsp">Dotor</a></li>
							<li><a class="dropdown-item" href="admin_login.jsp">Admin</a></li>
						</ul>
					</div>

				</c:if>




				<c:if test="${not empty userObj }">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_appointment.jsp">APPOINTMENT</a></li>

					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="view_appointment.jsp">VIEW
							APPOINTMENT</a></li>

					<div class="dropdown">
						<button class="btn btn-success dropdown-toggle" type="button"
							id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">
							<i class="fa-solid fa-circle-user"></i> ${userObj.fullName }
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="change_password.jsp">Change
									Password</a></li>
							<li><a class="dropdown-item" href="userLogout">Logout</a></li>

						</ul>
					</div>




				</c:if>





			</ul>
		</div>
	</div>
</nav>