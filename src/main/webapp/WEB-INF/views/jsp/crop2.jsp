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

<script src="<spring:url htmlEscape="true" value="/resources/js/variables.js" />"></script>
<script src="<spring:url htmlEscape="true" value="/resources/js/components.js" />"></script>

<script>
    contexPath = "${pageContext.servletContext.contextPath}";
</script>
<style>
.imageBox {
    position: relative;
    height: 400px;
    width: 400px;
    border: 1px solid #aaa;
    background: #fff;
    overflow: hidden;
    background-repeat: no-repeat;
    cursor: move;
}

.imageBox .thumbBox {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 200px;
    height: 200px;
    margin-top: -100px;
    margin-left: -100px;
    box-sizing: border-box;
    border: 1px solid rgb(102, 102, 102);
    box-shadow: 0 0 0 1000px rgba(0, 0, 0, 0.5);
    background: none repeat scroll 0% 0% transparent;
}

.imageBox .spinner {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    text-align: center;
    line-height: 400px;
    background: rgba(0, 0, 0, 0.7);
}

.container-crop {
    position: absolute;
    top: 10%;
    left: 10%;
    right: 0;
    bottom: 0;
}

.action {
    width: 400px;
    height: 30px;
    margin: 10px 0;
}

.cropped>img {
    margin-right: 10px;
}
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
    


    <script type="text/javascript">
        $(window).load(function() {
            var options = {
                thumbBox : '.thumbBox',
                spinner : '.spinner'
                
            };
            
            console.log('fuck');
            console.log($('#imageCrop'));
            
            var cropper = $('#imageCrop').cropbox(options);
            
            $('#file').on('change', function() {
                var reader = new FileReader();
                reader.onload = function(e) {
                    options.imgSrc = e.target.result;
                    cropper = $('.imageBox').cropbox(options);
                };
                reader.readAsDataURL(this.files[0]);
                this.files = [];
            });
            $('#btnCrop').on('click', function() {
                var img = cropper.getDataURL();
                $('.cropped').append('<img src="'+img+'">');
            });
            $('#btnZoomIn').on('click', function() {
                cropper.zoomIn();
            });
            $('#btnZoomOut').on('click', function() {
                cropper.zoomOut();
            });
        });
    </script>
</body>
</html>




