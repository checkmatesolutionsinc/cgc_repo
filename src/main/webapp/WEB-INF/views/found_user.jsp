<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/modern-business.css" rel="stylesheet">
<link href="../resources/css/sb-admin.min.css" rel="stylesheet">

<link
	href="https://fortawesome.github.io/Font-Awesome/assets/font-awesome/css/font-awesome.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Graduate"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Found</title>
</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-dark cl-bg-primary fixed-top"
		id="mainNav"> <a class="navbar-brand nav-titel cl-txt-primary"
		href="../business/home">COMMUNITY GAME CHANGER</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="" data-original-title="Home"><a class="nav-link"
				href="../business/home"> <i class="fa fa-fw fa-home"></i> <span
					class="nav-link-text">Home</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="" data-original-title="Reports"><a class="nav-link"
				href="../business/reports"> <i class="fa fa-fw fa-area-chart"></i>
					<span class="nav-link-text">Reports</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="" data-original-title="Transaction"><a class="nav-link"
				href="../transaction"> <i class="fa fa-fw fa-credit-card-alt"></i>
					<span class="nav-link-text">Make Transaction</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="" data-original-title="Search for User"><a
				class="nav-link" href="../search/user"> <i
					class="fa fa-fw fa-search"></i> <span class="nav-link-text">Search
						for User</span>
			</a></li>
		</ul>
		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center"
				id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="../business/logout"> <i class="fa fa-fw fa-sign-out"></i>Logout
			</a></li>
		</ul>
	</div>
	</nav>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-10 col-sm-10 col-centered card">
					<div class="text-center">
						<h3>User Found</h3>
					</div>
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<th>Name</th>
								<th>Address</th>
								<th>Phone</th>
								<th>Email</th>
								<th></th>
							</tr>
							<c:forEach items="${users}" var="user" varStatus="loop">
								<tr>
									<th>${user.first_name}${user.last_name}</th>
									<th>${user.address}</th>
									<th>${user.phone}</th>
									<th>${user.email}</th>
									<th><a
										href="<c:url value="/transaction?userId=${user.user_profile_id}" />">Select</a>
									</th>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="../resources/vendor/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery.matchHeight/0.7.0/jquery.matchHeight-min.js"></script>
<script src="../resources/vendor/popper/popper.min.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../resources/js/sb-admin.js"></script>
</html>