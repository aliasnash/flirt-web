<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url var="home" value="/" scope="request" />
<title>TITLE</title>
<link href="<spring:url htmlEscape="true" value="/resources/ico/favicon.ico" />" rel="shortcut icon">
<link href="<spring:url htmlEscape="true" value="/resources/css/jquery-ui.min.css" />" rel="stylesheet">
<link href="<spring:url htmlEscape="true" value="/resources/css/bootstrap.min.css" />" rel="stylesheet" id="bootstrap-css">
<link href="<spring:url htmlEscape="true" value="/resources/css/bootstrap-select.min.css" />" rel="stylesheet">
<link href="<spring:url htmlEscape="true" value="/resources/css/fileinput.min.css" />" rel="stylesheet">
<link href="<spring:url htmlEscape="true" value="/resources/css/site.css" />" rel="stylesheet">
<link href="<spring:url htmlEscape="true" value="/resources/css/site2.css" />" rel="stylesheet">

<script src="<spring:url htmlEscape="true" value="/resources/js/variables.js" />"></script>
<script src="<spring:url htmlEscape="true" value="/resources/js/components.js" />"></script>
<script>
	contexPath = "${pageContext.servletContext.contextPath}";
</script>
</head>

<body style="">
	<div class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <strong>[COMPANY]</strong>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown ">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> Настройки <span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
							<li class="dropdown-header">Настройки</li>
							<li class=""></li>
							<li class="">
								<a href="<spring:url value="/home" htmlEscape="true" />">test</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="<spring:url value="/home" htmlEscape="true" />">test</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container-fluid main-container">
		<div class="col-md-2 sidebar">
			<div class="row">
				<!-- uncomment code for absolute positioning tweek see top comment in css -->
				<div class="absolute-wrapper"></div>
				<!-- Menu -->
				<div class="side-menu">
					<nav class="navbar navbar-default" role="navigation">
						<!-- Main Menu -->
						<div class="side-menu-container">
							<ul class="nav navbar-nav">
								<li class="active">
									<spring:url value="/home" var="homeUrl" htmlEscape="true" />
									<a href="${pageName eq 'home' ? '#' : homeUrl}"> <span class="glyphicon glyphicon-dashboard"></span> Dashboard
									</a>
								</li>
								<li class="">
									<spring:url value="/photo" var="photoUrl" htmlEscape="true" />
									<a href="${pageName eq 'photo' ? '#' : photoUrl}"> <span class="glyphicon glyphicon-signal"></span> Фото
									</a>
								</li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</nav>
				</div>
			</div>
		</div>
		<div class="col-md-10 content">
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading"></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-6"></div>
							<div class="col-md-6"></div>
						</div>
						<div class="row">
							<div class="col-md-6"></div>
							<div class="col-md-6"></div>
						</div>
						<div class="row">
							<div class="col-md-6"></div>
							<div class="col-md-6"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading"></div>
					<div class="panel-body"></div>
				</div>
			</div>
		</div>
	</div>

	<script src="<spring:url htmlEscape="true" value="/resources/js/jquery-1.11.3.min.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/jquery-ui.min.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/bootstrap-select.min.js" />"></script>

	<script src="<spring:url htmlEscape="true" value="/resources/js/site.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/script.js" />"></script>
</body>
</html>




