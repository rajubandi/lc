<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-127612066-1"></script>
<script>
window.dataLayer = window.dataLayer || [];
function gtag(){dataLayer.push(arguments);}
gtag('js', new Date());
gtag('config', 'UA-127612066-1');
</script>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- For Google -->
<meta name="description" content="no1 lotus Chocolates service, best lotus chocolates website" />
<meta name="keywords" content="chocolates, lotus chocolates,yummy yummy,customized chocolates,photo chocolates,pics chocolates, yummi chocolates, no1 chocolates in Andhra Pradesh" />

<meta name="author" content="Lotus makers" />
<meta name="copyright" content="lotus Chocolates" />
<meta name="application-name" content="http://lotuschocolates.in" />

<!-- For Facebook -->
<meta property="og:title" content="lotus Chocolates" />
<meta property="og:type" content="article" />
<meta property="og:image" content="img/fb.jpg" />
<meta property="og:url" content="http://lotuschocolates.in" />
<meta property="og:description" content="chocolates, lotus chocolates,yummy yummy,customized chocolates,photo chocolates,pics chocolates, yummi chocolates, no1 chocolates in Andhra Pradesh" />

<!-- For Twitter -->
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="lotus Chocolates" />
<meta name="twitter:description" content="chocolates, lotus chocolates, no1 chocolates in Andhra Pradesh" />
<meta name="twitter:image" content="img/tw.jpg" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Lotus Chocolates</title>
    <link rel="shotcut icon" href="img/heart.ico">
    <link rel="stylesheet" href="4.7.0/css/font-awesome.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <script type='text/javascript' src='js/jquery-1.11.1.min.js'></script>
    <script type='text/javascript' src='js/jquery.validate.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
<!--   <link rel="stylesheet" href="/resources/demos/style.css"> -->
    <style>
    .footer {
    background:#000;
    padding:4px;
    float:left;
    width:100%;
    margin-top:15px;
    }
    .footer p {
    text-align:center;
    color:#fff;
    margin-bottom:0px;
    font-size:13px;
    }
    .footer p a{
    color:#fff;
    }
     .msgcss
			{
			/* 	width: 50% !important; */
			/* 	font-weight: bold; */
				margin: auto;
				text-align: center;
				top: 3px !important;
				left:0;
				right:0;
				position: fixed;
				font-size: 14px;
				z-index:99999;
			}
			.alert {
			    padding: 0px;
			    margin-bottom: 11px;
			    -webkit-border-radius: 2px;
			    -moz-border-radius: 2px;
			    border-radius: 2px;
			    border: none;
			}
			.alert-success {
			  color: #ffffff;
			  background-color: #00c9b6;
			  border-color: #00635a; }
			
			.alert-info {
			  color: #ffffff;
			  background-color: #80a9cd;
			  border-color: #4177a6; }
			
			.alert-warning {
			  color: #ffffff;
			  background-color: #ff9776;
			  border-color: #ff4910; }
			
			.alert-danger {
			  color: #ffffff;
			  background-color: #e08989;
			  border-color: #cc3739; }
			
    .has-error{
     color: red;
    }
        .intro-2 {
            background: url("img/91.jpg")no-repeat center center;
            background-size: cover;
        }

        .card {
            background-color: rgba(229, 228, 255, 0.2);
        }

        .md-form label {
            color: #ffffff;
        }

        h6 {
            line-height: 1.7;
        }
		h1 {
            line-height: 1.7;
			text-align:center;
			margin-bottom:35px;
			color:#FFF;
        }
		i span {
			font-family:'Arimo', sans-serif;
		}
        html,
        body,
        header,
        .view {
          height: 100vh;
        }

        @media (max-width: 740px) {
          html,
          body,
          header,
          .view {
            height: 700px;
          }
        }

        @media (min-width: 800px) and (max-width: 850px) {
          html,
          body,
          header,
          .view  {
            height: 650px;
          }
        }

        .card {
            margin-top: 30px;
            /*margin-bottom: -45px;*/
        }

        .md-form input[type=text]:focus:not([readonly]),
        .md-form input[type=password]:focus:not([readonly]) {
            border-bottom: 1px solid #fb5364;
            box-shadow: 0 1px 0 0 #fb5364;
        }

        .md-form input[type=text]:focus:not([readonly])+label,
        .md-form input[type=password]:focus:not([readonly])+label {
            color: #fb5364;
        }

        .md-form .form-control {
            color: #fff;
        }
    </style>
     							
</head>
<c:if test="${not empty msg}">
										<div class="msgcss row">
											<div class="col-sm-6 col-sm-offset-4">
												<div class="form-group">
													<div class="alert alert-${cssMsg} fadeIn animated">${msg}</div>
												</div>
											</div>
										</div>
									</c:if>
	<body class="creative-lp">

    <!--Main Navigation-->
    <header>

        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light  scrolling-navbar white">
            <div class="container">
                <a class="navbar-brand font-weight-bold title" href="#"><img src="img/logo-png.png"  class="img-fluid"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
              </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="list-unstyled navbar-nav mr-auto">
                        <li class="nav-item ml-4 mb-0">
                            <a class="nav-link  title"  href="home"> Home </a>
                        </li>
                        <li class="nav-item ml-4">
                            <a class="nav-link  title" href="customizedCollections">Customized Collections</a>
                        </li>
                        <li class="nav-item ml-4">
                            <a class="nav-link title" href="bookorder">Order Now</a>
                        </li>
                       
                </ul>
                    <!-- Social Icon  -->
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a class="nav-link" target="_blank" href="https://www.facebook.com/LotusChocos">
                                <i class="fa fa-facebook title"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"  target="_blank" href="https://twitter.com/lotuschocos">
                                <i class="fa fa-twitter title"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" target="_blank" href="https://www.instagram.com/lotuschocolates/" target="_blank">
                                <i class="fa fa-instagram title"></i>
                            </a>
                        </li>
                        
                  </ul>
                </div>
            </div>
        </nav>
        <%
	String baseurl =  request.getScheme() + "://" + request.getServerName() +      ":" +   request.getServerPort() +  request.getContextPath();
	session.setAttribute("baseurl", baseurl);
	
		
%>
	