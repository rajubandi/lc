<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
  <jsp:include page="header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- <!DOCTYPE html>
<html lang="en">
<head>
      Global site tag (gtag.js) - Google Analytics
      <script async src="https://www.googletagmanager.com/gtag/js?id=UA-127612066-1"></script>
      <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'UA-127612066-1');
      </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Lotus Chocolates</title>
    <link rel="shotcut icon" href="img/heart.ico">
    <link rel="stylesheet" href="4.7.0/css/font-awesome.min.css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
	<script type='text/javascript' src='js/jquery-1.11.1.min.js'></script>
	<script type='text/javascript' src='js/jquery.validate.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.min.js"></script>
    <style>
    
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
						
 -->

        <!--Intro Section-->
        <section class="view intro-2">
            <div class="mask rgba-indigo-light h-100 d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">
                   
                        <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-lg-5">
							<div>
                             <h1></h1>
                            
                            </div>
                           <form:form modelAttribute="custReg" action="saveClient" class="form-horizontal " method="Post"> 
                            <!--Form with header-->
                            <div class="card wow fadeIn" data-wow-delay="0.3s">
                                <div class="card-body">

                                    <!--Header-->
                                    <div class="form-header pink-gradient">
                                        <h3>
                                            <i class="fa fa-user mt-2 mb-2"></i> Reach us for more details:</h3>
                                    </div>

                                    <!--Body-->
                                    <div class="md-form mb-0">
                                        <i class="fa fa-user prefix white-text"></i>
<!--                                         <input type="text" id="orangeForm-name" class="form-control"> -->
                                        <form:input path="name" class="form-control validate lettersonly" placeholder="Name"/>
                                        <label for="orangeForm-name">Name</label>
                                    </div>
                                    <div class="md-form mb-0">
                                        <i class="fa fa-phone prefix white-text"></i>
                                        <form:input path="mobileNumber"   class="form-control validate mobileNO"  maxlength="10" placeholder="Mobile Number"/>
<!--                                         <input type="text" id="orangeForm-email" class="form-control"> -->
                                        <label for="orangeForm-email">Phone No</label>
                                    </div>

                                    <div class="md-form mb-0">
                                        <i class="fa fa-map-marker prefix white-text"></i>
                                        <form:textarea path="location" class="form-control validate " placeholder="Location"/>
<!--                                         <input type="password" id="orangeForm-pass" class="form-control"> -->
                                        <label for="orangeForm-pass">Location</label>
                                    </div>
						<c:if test="${not empty msg}">
                                    <div class="msgdiv row">
											<div class="col-sm-12">
												<div class="form-group">
													<div class="alert alert-${cssMsg} fadeIn animated">${msg}</div>
												</div>
											</div>
										</div>
									</c:if>
                                    <div class="text-center">
                                        <button type="submit" class="btn pink-gradient btn-lg" id="submitId" >Send</button>
                                        
                                        <div class="inline-ul text-center d-flex justify-content-center">
                                            <a class="p-2 m-2 fa-lg tw-ic">
                                                <i class="fa fa-whatsapp white-text"> <span>7799 878 777 for more details</span></i>
                                            </a>
                                          
                                        </div>
                                    </div>
                                   

                                </div>
                            </div>
                            <!--/Form with header-->
                            </form:form>

                        </div>
                    </div>
                </div>
            </div>
        </section>

    </header>
    <!--Main Navigation-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
<!--     <script src="js/jquery-3.3.1.min.js"></script> -->
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <script>
        new WOW().init();
       
          
    		   
    		   
 $(document).ready(function() { 
	 
 window.setTimeout(function() {
 	    $(".msgdiv").fadeTo(500, 0).slideUp(500, function(){
 	        $(this).remove(); 
 	    });
 	}, 5000); 
	 
	 jQuery.validator.addMethod('lettersonly', function(value, element) {
 	    return this.optional(element) || /^[a-z. ������������������������]+$/i.test(value);
 	}, "Please Enter Valid Name");

 	   jQuery.validator.addMethod("mobileNO", function(phone_number, element) {
 	   phone_number = phone_number.replace(/\s+/g, ""); 
 	 return this.optional(element) || phone_number.length > 9 &&
 	   phone_number.match(/^[7-9]\d+$/);
 	}, "Invalid Mobile Number");
 	   
 	 /*  $("#custReg").validate({
		    errorElement: 'span',
		    errorClass: 'has-error',
			rules:
			{
			    name:{required:	true, lettersonly: true},
			    mobileNumber:{required: true, number: true, mobileNO: true, minlength: 10, maxlength: 10},
			    
		    },
			messages:
			{
			    name:{required: 'Name'},
			    mobileNumber:{required: 'Mobile Number', number: '10 digit mobile number'},
			          
		    },
		    errorPlacement: function(error, element){
		      if(element.attr("name") == "gender")
		        error.insertAfter(".gender_error").css("color", "red");
		      else if(element.attr("name") == "accomodation")
		        error.insertAfter(".accomodation_error").css("color", "red"); 
		      else if(element.attr("name") == "dob1")
		        error.insertAfter(".dob1_error").css("color","red");   
		      else if(element.attr("name") == "busroute")
		        error.insertAfter(".busroute_error").css("color","red");
		      else if(element.attr("name") == "busfacility")
		        error.insertAfter(".busfacility_error").css("color","red"); 
		     
		    
		      else
		        error.insertAfter(element);
		      }
	    	
		}); */
		var styleBlock = '.placeholder-style.placeholder-style::-moz-placeholder {color: #cc0000;} .placeholder-style::-webkit-input-placeholder {color: #cc0000;}';
    	$('.validate').blur(function() {
    		var id = $(this).attr('id');
    		var placeholder = $(this).attr('placeholder');
    		var value1 = $("#" + id).val();
    		var value=$.trim(value1);
    		if (value == null || value == "" || value == "undefined") {
    			//$('style').append(styleBlock);
    			$("#" + id ).attr("placeholder", placeholder);
    			$("#" + id ).css('border-color','#e73d4a');
    			$("#" + id ).css('color','#e73d4a');
    			$("#" + id ).addClass('placeholder-style your-class');
    			
    			if ($("#" + id+"_chosen").length)
    			{
    				$("#" + id+"_chosen").children('a').css('border-color','#e73d4a');
    			}
//    			$("#" + id + "Error").text("Please " + placeholder);
    		} else {
    			$("#" + id + "Error").text("");
    		}
    	});

    	var idArray = $.makeArray($('.validate').map(function() {
    		return this.id;
    	}));
    	
    	var validation = true;


    	$('.validate').keydown(function() {
    		var id = $(this).attr('id');
    		removeBorder(id);
    	});
    	     

    	   $('#submitId').click(function(){
    				 
    				/*  if($("#custReg").valid()==true) {
    					 
    					 return true;
    				 }else{
    					 
    					 return false;
    				 } */
    				 
    			validation = true;
         		$.each(idArray, function(i, val) {
         			var value = $("#" + idArray[i]).val();
         			var placeholder = $("#" + idArray[i]).attr('placeholder');
         			
         			/* optional variable is for hidden and show input field validation  */
         			 
         			var optional = $("#" + idArray[i]).hasClass('display-none');
         			var errorCls = $("#" + idArray[i]).hasClass('errorCls');
         			if ((value == null || value == "" || value == "undefined" || errorCls) && !optional) {
         				//$('style').append(styleBlock);
         				$("#" + idArray[i] ).attr("placeholder", placeholder);
         				$("#" + idArray[i] ).css('border-color','#e73d4a');
         				$("#" + idArray[i] ).css('color','#e73d4a');
         				$("#" + idArray[i] ).addClass('placeholder-style your-class');
         				 var id11 = $("#" + idArray[i]+"_chosen").length;
         				if ($("#" + idArray[i]+"_chosen").length)
         				{
         					$("#" + idArray[i]+"_chosen").children('a').css('border-color','#e73d4a');
         				}
//         				$("#" + idArray[i] + "Error").text("Please " + placeholder);
         				validation = false;
         			} 
         		});
         		if(validation) {
         			$("#submitId").attr("disabled",true);
         			$("#submitId").val("Please wait...");
         			$("form").submit();											
         		}else {
         			event.preventDefault();
         			return false;
         		}	 
    				 
    	   });
 });

	//remove borders
	function removeBorder(el){	
		  $("#"+el).css("border", "");
		  $("#"+el).css('color','black');
		  $('#'+el).addClass('default-class');
		  if ($("#" + el+"_chosen").length)
			{
				$("#" +el+"_chosen").children('a').css('border-color','black');
			}
	}
    </script>
</body>
</html>