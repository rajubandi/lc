<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%-- <%@ page import="java.io.*" pageEncoding="ISO-8859-1"%> --%>
  <jsp:include page="header.jsp" />
  <meta charset="utf-8">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <script src="https://rawgit.com/dbrekalo/attire/master/dist/js/build.min.js"></script>

        <link rel="stylesheet" href="dist/simpleLightbox.min.css">
		<!-- <link rel="stylesheet" type="text/css" href="css1/demo.css" />
		<link rel="stylesheet" type="text/css" href="css1/style.css" />
		<link rel="stylesheet" type="text/css" href="css1/elastislide.css" /> -->
	
	<style>
	#gallery {
  padding-top: 40px;
  @media screen and (min-width: 991px) {
    padding: 60px 30px 0 30px;
  }
}
.img-thumbnail {
    padding: .25rem;
    background-color: #fff;
    border: 1px solid #dee2e6;
    border-radius: .25rem;
    margin: 8px;
}
.img-wrapper {
  position: relative;
  margin-top: 15px;
  img {
    width: 100%;
  }
}
	.tab-content>.tab-pane {
    display: none;
}
	
	.tab-content>.active {
    display: block;
}
.fade.in {
    opacity: 1;
}
.fade {
    opacity: 1;
    -webkit-transition: opacity .15s linear;
    -o-transition: opacity .15s linear;
    transition: opacity .15s linear;
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
          height: auto;
        }

        @media (max-width: 740px) {
          html,
          body,
          header,
          .view {
            height: auto;
          }
        }

        @media (min-width: 800px) and (max-width: 850px) {
          html,
          body,
          header,
          .view  {
            height: auto;
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
		a:hover,a:focus{
    text-decoration: none;
    outline: none;
}

.vertical-tab{ display: table; }

.vertical-tab .nav-tabs{
    display: table-cell;
    width: 20%;
    min-width: 20%;
    border: none;
    position: relative;
}

.vertical-tab .nav-tabs li{
    float: none;
    vertical-align: top;
    margin-right: 0;
}

.vertical-tab .nav-tabs li a{
    display: block;
    padding: 8px;
    margin: 0 7px 7px 0;
    background: transparent;
    font-size: 14px;
    font-weight: 600;
    color: #909090;
    text-transform: uppercase;
    text-align: center;
    border: 1px solid #f1f1f1;
    border-radius: 0;
    overflow: hidden;
    position: relative;
    transition: all 0.3s ease 0s;
}

.vertical-tab .nav-tabs li a:hover,
.vertical-tab .nav-tabs li.active a{
    color: #fff;
    background: #680406;
}

.vertical-tab .nav-tabs li a:before,
.vertical-tab .nav-tabs li a:after{
    content: "";
    width: 15px;
    height: 15px;
    border-radius: 50%;
    background: #fff;
    position: absolute;
    top: 50%;
    left: 0;
    transform: translateY(-50%) scale(0);
    transition: all 0.8s ease-out 0s;
}

.vertical-tab .nav-tabs li a:after{ transition: all 0.4s ease-in 0.3s; }

.vertical-tab .nav-tabs li a:hover:before,
.vertical-tab .nav-tabs li.active a:before,
.vertical-tab .nav-tabs li a:hover:after,
.vertical-tab .nav-tabs li.active a:after{
    width: 200px;
    height: 200px;
    opacity: 0;
    transform: translateY(-50%) scale(4);
}

.vertical-tab .tab-content{
    display: table-cell;
    padding: 15px 18px 0;
    background: #f1f1f1;
    font-size: 15px;
    color: #fff;
    line-height: 24px;
    letter-spacing: 1px;
    text-align: justify;
    border: 4px solid transparent;
    box-shadow: 0 0 0 4px #fff inset;
    border-radius: 0 15px 0 15px;
    vertical-align: top;
    position: relative;
}
 /* .fixed-top {
    position: relative !important;
    right: 0;
    left: 0;
    z-index: 1030;
    margin-bottom: 15px !imporatant;
} */
.vertical-tab .tab-content h3{
    font-size: 24px;
    margin: 0 0 5px 0;
}

@media only screen and (max-width: 479px){
    .vertical-tab .nav-tabs{
        display: block;
        width: 100%;
        border-right: none;
    }
    .vertical-tab .nav-tabs li{ margin: 0 0 10px 0; }
    .vertical-tab .nav-tabs li a{
        padding: 10px;
        margin: 0;
    }
    .vertical-tab .tab-content{
        display: block;
        padding: 20px 15px 5px;
        border-radius: 0 0 10px 10px;
    }
    .vertical-tab .tab-content h3{ font-size: 18px; }
}
header {
	margin-bottom:15px;}
	.iconMenu  {
		display:none !important;}
		 ul {
    margin-bottom: -0.5rem;
}
@media (min-width: 768px) {
.col-md-4 {
    -ms-flex: 0 0 33.333333%;
    flex: 0 0 30.333333%;
    max-width: 30.333333%;
	margin-bottom:10px;
}
}
.img-responsive{
max-width: 100%;
height: auto;
display:block;
}

    </style>

</head>
    <div class="">
    <div class="">
    <img src="img/custom.jpg" class="img-responsive"/><br>
    </div>
    <div class="container-fluid">
    <div class="vertical-tab" role="tabpanel">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab"> 1 Kg</a></li>
                                            <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab">500 Gms</a></li>
                                            <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab">250 Gms</a></li>
                                            <li role="presentation"><a href="#Section4" aria-controls="messages" role="tab" data-toggle="tab">100 Gms</a></li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content tabs">
                                            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
                                                <h3></h3>
                                               <div class="imageGallery1 col-md-12">
													
													</div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="Section2">
                                               <div class="imageGallery2 col-md-12">
														
														</div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="Section3">
                                                <div class="imageGallery3 col-md-12">
													
													</div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="Section4">
                                                <div class="imageGallery4 col-md-12">
												
												</div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    </div>
                                    </div></div>
                                    <div class="footer"><p>&copy; All Right Reserved <a target="_blank" href="http://www.charvikent.com">Charvikent.com</a> </div>
                                    
                                    
    <!--Main Navigation-->
<script type="text/javascript" src="http://jrain.oscitas.netdna-cdn.com/tutorial/js/jquery-1.12.0.min.js"></script>
 <!-- <script src="js/jquery-3.3.1.min.js"></script>
    Bootstrap tooltips
    <script type="text/javascript" src="js/popper.min.js"></script>
    Bootstrap core JavaScript
    <script type="text/javascript" src="js/bootstrap.js"></script>
    MDB core JavaScript
    <script type="text/javascript" src="js/mdb.min.js"></script> -->
    
  <!--   <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript" src="js1/jquery.tmpl.min.js"></script>
		<script type="text/javascript" src="js1/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="js1/jquery.elastislide.js"></script>
		<script type="text/javascript" src="js1/gallery.js"></script> -->

<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script> -->

<script src="http://jrain.oscitas.netdna-cdn.com/tutorial/js/bootstrap.min.js"></script>
 <script type="text/javascript" > 
     var oneZeroZero =  ${oneZeroZero};
     var twoFivezero =  ${twoFivezero};
     var fiveZeroZero =  ${fiveZeroZero};
     var oneZeroZeroZero =  ${oneZeroZeroZero};
    
   $(function() {
	  
	   $.each( oneZeroZero, function( i, value ) {
	    	if(i==0) var cls='selected'; else var cls="";
	    	//$("#Section4").append('<li class="'+ cls +'"><a href="#"><img src="${baseurl}/galary/'+value+'"  data-large="${baseurl}/galary/'+value+'" alt="image01" data-description="" /></a></li>');
	    	$("#Section4 .imageGallery4").append('<a href="${baseurl}/100g/'+value+'" title=""><img class="img-thumbnail col-md-4 col-sm-4 col-xs-4" src="${baseurl}/100g/'+value+'" alt="" /></a>');
	    	
	    });
	   
	  // $(".selected").trigger("click");
	   
	   $.each( twoFivezero, function( i, value ) {
	    	if(i==0) var cls='selected'; else var cls="";
	    	//$("#Section4").append('<li class="'+ cls +'"><a href="#"><img src="${baseurl}/galary/'+value+'"  data-large="${baseurl}/galary/'+value+'" alt="image01" data-description="" /></a></li>');
	    	$("#Section3 .imageGallery3").append('<a href="${baseurl}/250g/'+value+'" title=""><img class="img-thumbnail col-md-4 col-sm-4 col-xs-4" src="${baseurl}/250g/'+value+'" alt="" /></a>');
	    	
	    });
	   
	   //$(".selected").trigger("click");
	   $.each( fiveZeroZero, function( i, value ) {
	    	if(i==0) var cls='selected'; else var cls="";
	    	//$("#Section4").append('<li class="'+ cls +'"><a href="#"><img src="${baseurl}/galary/'+value+'"  data-large="${baseurl}/galary/'+value+'" alt="image01" data-description="" /></a></li>');
	    	$("#Section2 .imageGallery2").append('<a href="${baseurl}/500g/'+value+'" title=""><img class="img-thumbnail col-md-4 col-sm-4 col-xs-4" src="${baseurl}/500g/'+value+'" alt="" /></a>');
	    	
	    });
	   
	   //$(".selected").trigger("click");
	   $.each( oneZeroZeroZero, function( i, value ) {
	    	if(i==0) var cls='selected'; else var cls="";
	    	//$("#Section4").append('<li class="'+ cls +'"><a href="#"><img src="${baseurl}/galary/'+value+'"  data-large="${baseurl}/galary/'+value+'" alt="image01" data-description="" /></a></li>');
	    	$("#Section1 .imageGallery1").append('<a href="${baseurl}/1Kg/'+value+'" title=""><img class="img-thumbnail col-md-4 col-sm-4 col-xs-4" src="${baseurl}/1Kg/'+value+'" alt="" /></a>');
	    	
	    });
	   $('.imageGallery1 a').simpleLightbox();
	   $('.imageGallery2 a').simpleLightbox();
	   $('.imageGallery3 a').simpleLightbox();
	   $('.imageGallery4 a').simpleLightbox();
	   $(".selected").trigger("click");
	   
	   $('.slbCloseBtn ').text('x'); 
       
        });
   </script>
        <script src="dist/simpleLightbox.min.js"></script>
 <script>

    //new SimpleLightbox({elements: '.imageGallery1 a'});

    // or if using jQuery
    $('.imageGallery1 a').simpleLightbox();
    $('.imageGallery2 a').simpleLightbox();
    $('.imageGallery3 a').simpleLightbox();
    $('.imageGallery4 a').simpleLightbox();
 </script>
 
   <script>     	
        //new WOW().init();
    </script>
</body>
</html>