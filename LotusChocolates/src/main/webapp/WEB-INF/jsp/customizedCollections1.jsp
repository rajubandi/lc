<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%-- <%@ page import="java.io.*" pageEncoding="ISO-8859-1"%> --%>
  <jsp:include page="header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

        <link rel="stylesheet" type="text/css" href="css1/demo.css" />
		<link rel="stylesheet" type="text/css" href="css1/style.css" />
		<link rel="stylesheet" type="text/css" href="css1/elastislide.css" />
		<style>
		header{
				height:auto !important;
				margin-bottom:50px;
				}
				.es-carousel ul{
					display:block;
				 	width:100% !important;
				}
				.es-carousel ul li{
				width: 10% !important;
				}
				
		</style>
		 <%-- <%
       String baseurl = (String)session.getAttribute("baseurl");
        List imageUrlList = new ArrayList();
        File folder = new File(baseurl+"/images");
        File[] files = folder.listFiles();
        for(File imageFile : folder.listFiles()){
        	 String imageFileName = imageFile.getName();
        	imageUrlList.add(imageFileName);
        	/* if(files[i].isFile()){
        		String name = files[i].getName();
        	} */
        }
        request.setAttribute("imageUrlList",imageUrlList );
        %> --%>
		<script id="img-wrapper-tmpl" type="text/x-jquery-tmpl">	
			<div class="rg-image-wrapper">
				{{if itemsCount > 1}}
					<div class="rg-image-nav">
						<a href="#" class="rg-image-nav-prev">Previous Image</a>
						<a href="#" class="rg-image-nav-next">Next Image</a>
					</div>
				{{/if}}
				<div class="rg-image"></div>
				<div class=""></div>
				<div class="rg-caption-wrapper">
					<div class="rg-caption" style="">
						<p></p>
					</div>
				</div>
			</div>
		</script>
		</header>
        <!--Intro Section-->
       
        <section class="container">
        <div id="rg-gallery" class="rg-gallery">
					<div class="rg-thumbs">
						<!-- Elastislide Carousel Thumbnail Viewer -->
						<div class="es-carousel-wrapper">
							<div class="es-nav">
								<span class="es-nav-prev">Previous</span>
								<span class="es-nav-next">Next</span>
							</div>
							<div class="es-carousel"  id="imgUlId">
								<ul>
								 <%-- <c:forEach var="img" items="${imageUrlList} ">
								 <li><a href="#"><img src='${baseurl}/galary/${img}'  data-large="images/img" alt="image01" data-description="" /></a></li>
								</c:forEach>  --%>
<%-- 								    <li><a href="#"><img src="images/<%=name%>" data-large="images/250g.png" alt="image01" data-description="" /></a></li>  --%>
								    <!-- <li><a href="#"><img src="images/250g1.png" data-large="images/250g1.png" alt="image01" data-description="" /></a></li>
								    <li><a href="#"><img src="images/250g2.png" data-large="images/250g2.png" alt="image01" data-description="" /></a></li>
								    <li><a href="#"><img src="images/500g.png" data-large="images/500g.png" alt="image01" data-description="" /></a></li>
								    <li><a href="#"><img src="images/500g1.png" data-large="images/500g1.png" alt="image01" data-description="" /></a></li>
								    <li><a href="#"><img src="images/1kg.png" data-large="images/1kg.png" alt="image01" data-description="" /></a></li> -->
								
								
								</ul>
							</div>
						</div>
						<!-- End Elastislide Carousel Thumbnail Viewer -->
					</div><!-- rg-thumbs -->
				</div><!-- rg-gallery -->  
            <!-- <div class="mask rgba-indigo-light h-100 d-flex justify-content-center align-items-center">
                <div class="container">
                    <div class="row">
                   
                     
                            
                            </div>
                        

                        </div>
                    </div> -->
                </div>
            </div>
        </section>

   
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
    
 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript" src="js1/jquery.tmpl.min.js"></script>
		<script type="text/javascript" src="js1/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="js1/jquery.elastislide.js"></script>
		<script type="text/javascript" src="js1/gallery.js"></script>
    <script>
   var allImages =  ${imageUrlList}
   /*  var fileExt= [];
    fileExt[0]= ".png";
    fileExt[1]= ".jpg";
    fileExt[2]= ".gif";   */
    
   $(document).ready(function() {
	   
	   $.each( allImages, function( i, value ) {
	    	if(i==0) var cls='selected'; else var cls="";
	    	$("#imgUlId ul").append('<li class="'+ cls +'"><a href="#"><img src="${baseurl}/galary/'+value+'"  data-large="${baseurl}/galary/'+value+'" alt="image01" data-description="" /></a></li>');
	    });
	   
	   $(".selected").trigger("click");
	        
       /*  $.ajax({
            //This will retrieve the contents of the folder if the folder is configured as 'browsable'
            //url: '../../Images/Avatar/',
            url: '${baseurl }/galary/',
            success: function (data) {
               $("#fileNames").html('<ul>');
               //List all png or jpg or gif file names in the page
               $(data).find("a:contains(" + fileExt[0] + "),a:contains(" + fileExt[1] + "),a:contains(" + fileExt[2] + ")").each(function () {
                   var filename = this.href.replace(window.location.host, "").replace("http:///", "");
                   $("#fileNames").append( "<li>" + filename + "</li>");
               });
               $("#fileNames").append('</ul>');
             }     
          }); */
        });
        	
        	

    </script>
</body>
</html>