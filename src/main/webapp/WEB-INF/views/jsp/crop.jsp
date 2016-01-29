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
<link href="<spring:url htmlEscape="true" value="/resources/css/imgareaselect-default.css" />" rel="stylesheet">

<script src="<spring:url htmlEscape="true" value="/resources/js/variables.js" />"></script>
<script src="<spring:url htmlEscape="true" value="/resources/js/components.js" />"></script>

<script>
	contexPath = "${pageContext.servletContext.contextPath}";
</script>
<style>
</style>
</head>

<body style="">
	<div class="navbar navbar-default navbar-static-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"> <strong>Mobi-Flirt</strong>
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
								<a href="<spring:url value="/photo" htmlEscape="true" />">test</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="<spring:url value="/photo" htmlEscape="true" />">test</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">Загрузи фотографию</div>
			<div class="panel-body">

				<div class="container">
					<div class="imageBox" id="imageCrop">
						<div class="thumbBox"></div>
						<div class="spinner" style="display: none">Loading...</div>
					</div>
					<div class="action">
						<input type="file" id="file" style="float: left; width: 250px">
						<input type="button" id="btnCrop" value="Crop" style="float: right">
						<input type="button" id="btnZoomIn" value="+" style="float: right">
						<input type="button" id="btnZoomOut" value="-" style="float: right">
					</div>
					<div class="cropped"></div>
				</div>

			</div>
		</div>
	</div>

	<script src="<spring:url htmlEscape="true" value="/resources/js/cropbox.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/jquery-1.11.3.min.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/jquery-ui.min.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<spring:url htmlEscape="true" value="/resources/js/jquery.imgareaselect.pack.js" />"></script>



	<script type="text/javascript">
		$(document).ready(function() {
			$('img#photo').imgAreaSelect({
				handles : true,
				onSelectEnd : someFunction
			});
		});
	</script>
</body>
</html>




