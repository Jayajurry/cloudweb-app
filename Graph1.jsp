						       <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%><%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Owner-enabled Secure Authorized Keyword Search Over Encrypted Data with Flexible Metadata</title>
<!--

Template 2102 Constructive

http://www.tooplate.com/view/2102-constructive

-->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
	<link rel="stylesheet" href="css/fontawesome-all.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/magnific-popup.css"/>
	<link rel="stylesheet" type="text/css" href="slick/slick.css"/>
	<link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
	<link rel="stylesheet" href="css/tooplate-style.css">

	<script>
		var renderPage = true;

	if(navigator.userAgent.indexOf('MSIE')!==-1
		|| navigator.appVersion.indexOf('Trident/') > 0){
   		/* Microsoft Internet Explorer detected in. */
   		alert("Please view this in a modern browser such as Chrome or Microsoft Edge.");
   		renderPage = false;
	}
	</script>
</head>

<body>
	<!-- Loader -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>
	
	<!-- Page Content -->
	<div class="container-fluid tm-main">
		<div class="row tm-main-row">

			<!-- Sidebar -->
			<div id="tmSideBar" class="col-xl-3 col-lg-4 col-md-12 col-sm-12 sidebar">

				<button id="tmMainNavToggle" class="menu-icon">&#9776;</button>

		<div class="inner" style="margin-top:-40px;">
                    <ul class="list-unstyled components mb-5" style="line-height: 1.5cm;">
	          
                        <li class="active">
	            <a href="Cloud_Home.jsp"><span class="fa fa-home mr-3"></span> Home</a>
	          </li>  
                  <li><a href="Vuser.jsp"><span class="fa fa-user mr-3"></span>View all User</a>
	          </li> <li><a href="Vowner.jsp"><span class="fa fa-user mr-3"></span>View all Owner</a>
	          </li> <li><a href="Vfiles.jsp"><span class="fa fa-users mr-3"></span>View Files</a>
                    </li> <li><a href="Csreq.jsp"><span class="fa fa-user mr-3"></span>View User Search Request</a> 
                 <li> <a href="Viewreq.jsp"><span class="fa fa-download mr-3"></span> View User Download Request</a>
	          </li>
	          </li> <li><a href="Vreq.jsp"><span class="fa fa-user mr-3"></span>View Key send Details</a>
	          </li> <li><a href="Graph.jsp"><span class="fa fa-user mr-3"></span>No.Of.Attribute</a>
	          </li> <li><a href="Graph1.jsp"><span class="fa fa-user mr-3"></span>No.of.Nodes</a>
	          </li>
	        <a href="index.html"><span class="fa fa-paper-plane mr-3"></span> Logout</a>
                  </li>
                    </u1>

					</nav>
				</div>
			</div>

			<div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 tm-content" style="background-color: bisque; color:black;">
                                   <section id="tm-section-1" class="tm-section" >
						<div class="ml-auto"> 

<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
String plan="";
String  time="";
double id=0;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();Class.forName("com.mysql.jdbc.Driver");

 
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/keyword","root","root"); 
             
           
        
PreparedStatement ps = con.prepareStatement("select count(downlad) as count, image from request group by image ");
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                plan = rs.getString("image");
                id=rs.getDouble("count")/10000;
               
map = new HashMap<Object,Object>(); map.put("label", plan); map.put("y", id); list.add(map);

            }
String dataPoints = gsonObj.toJson(list);
            
%>
 
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "ThroughPut (ms)"
	},
	axisY: {
		suffix: ""
	},
	axisX: {
		title: "FILE NAME"
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0\"\"",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>
<style>
    .w3-black, .w3-hover-black:hover{ background-color:burlywood!important}
    
body, h1,h2,h3,h4,h5,h6 {font-family: "Montserrat", sans-serif}
.w3-row-padding img {margin-bottom: 12px}
/* Set the width of the sidebar to 120px */
.w3-sidebar {width: 120px;background: #e91e63;}
/* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
#main {margin-left: 120px}
/* Remove margins from "page content" on small screens */
@media only screen and (max-width: 600px) {#main {margin-left: 0}}
</style>
</head>
<body class="w3-black">

<div class="w3-padding-large" id="main">
    <header class="w3-container w3-padding-32 w3-center w3-black" id="home">
        <h1 class="w3-jumbo" style="
    font-family: initial;
"><span class="w3-hide-small"> Throughput Result </span></h1>
   
    
  </header>
<div id="chartContainer" style="height: 450px; width: 600px;"></div>
</div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

		</div>
					</section>										
				</div>	
			</div>	<!-- row -->			
		</div>
		<div id="preload-01"></div>
		<div id="preload-02"></div>
		<div id="preload-03"></div>
		<div id="preload-04"></div>

		<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
		<script type="text/javascript" src="js/jquery.backstretch.min.js"></script>
		<script type="text/javascript" src="slick/slick.min.js"></script> <!-- Slick Carousel -->

		<script>

		var sidebarVisible = false;
		var currentPageID = "#tm-section-1";

		// Setup Carousel
		function setupCarousel() {

			// If current page isn't Carousel page, don't do anything.
			if($('#tm-section-2').css('display') == "none") {
			}
			else {	// If current page is Carousel page, set up the Carousel.

				var slider = $('.tm-img-slider');
				var windowWidth = $(window).width();

				if (slider.hasClass('slick-initialized')) {
					slider.slick('destroy');
				}

				if(windowWidth < 640) {
					slider.slick({
	              		dots: true,
	              		infinite: false,
	              		slidesToShow: 1,
	              		slidesToScroll: 1
	              	});
				}
				else if(windowWidth < 992) {
					slider.slick({
	              		dots: true,
	              		infinite: false,
	              		slidesToShow: 2,
	              		slidesToScroll: 1
	              	});
				}
				else {
					// Slick carousel
	              	slider.slick({
	              		dots: true,
	              		infinite: false,
	              		slidesToShow: 3,
	              		slidesToScroll: 2
	              	});
				}

				// Init Magnific Popup
				$('.tm-img-slider').magnificPopup({
				  delegate: 'a', // child items selector, by clicking on it popup will open
				  type: 'image',
				  gallery: {enabled:true}
				  // other options
				});
      		}
  		}

  		// Setup Nav
  		function setupNav() {
  			// Add Event Listener to each Nav item
	     	$(".tm-main-nav a").click(function(e){
	     		e.preventDefault();
		    	
		    	var currentNavItem = $(this);
		    	changePage(currentNavItem);
		    	
		    	setupCarousel();
		    	setupFooter();

		    	// Hide the nav on mobile
		    	$("#tmSideBar").removeClass("show");
		    });	    
  		}

  		function changePage(currentNavItem) {
  			// Update Nav items
  			$(".tm-main-nav a").removeClass("active");
     		currentNavItem.addClass("active");

	    	$(currentPageID).hide();

	    	// Show current page
	    	currentPageID = currentNavItem.data("page");
	    	$(currentPageID).fadeIn(1000);

	    	// Change background image
	    	var bgImg = currentNavItem.data("bgImg");
	    	$.backstretch("img/" + bgImg);		    	
  		}

  		// Setup Nav Toggle Button
  		function setupNavToggle() {

			$("#tmMainNavToggle").on("click", function(){
				$(".sidebar").toggleClass("show");
			});
  		}

  		// If there is enough room, stick the footer at the bottom of page content.
  		// If not, place it after the page content
  		function setupFooter() {
  			
  			var padding = 100;
  			var footerPadding = 40;
  			var mainContent = $("section"+currentPageID);
  			var mainContentHeight = mainContent.outerHeight(true);
  			var footer = $(".footer-link");
  			var footerHeight = footer.outerHeight(true);
  			var totalPageHeight = mainContentHeight + footerHeight + footerPadding + padding;
  			var windowHeight = $(window).height();		

  			if(totalPageHeight > windowHeight){
  				$(".tm-content").css("margin-bottom", footerHeight + footerPadding + "px");
  				footer.css("bottom", footerHeight + "px");  			
  			}
  			else {
  				$(".tm-content").css("margin-bottom", "0");
  				footer.css("bottom", "20px");  				
  			}  			
  		}

  		// Everything is loaded including images.
      	$(window).on("load", function(){

      		// Render the page on modern browser only.
      		if(renderPage) {
				// Remove loader
		      	$('body').addClass('loaded');

		      	// Page transition
		      	var allPages = $(".tm-section");

		      	// Handle click of "Continue", which changes to next page
		      	// The link contains data-nav-link attribute, which holds the nav item ID
		      	// Nav item ID is then used to access and trigger click on the corresponding nav item
		      	var linkToAnotherPage = $("a.tm-btn[data-nav-link]");
			    
			    if(linkToAnotherPage != null) {
			    	
			    	linkToAnotherPage.on("click", function(){
			    		var navItemToHighlight = linkToAnotherPage.data("navLink");
			    		$("a" + navItemToHighlight).click();
			    	});
			    }
		      	
		      	// Hide all pages
		      	allPages.hide();

		      	$("#tm-section-1").fadeIn();

		     	// Set up background first page
		     	var bgImg = $("#tmNavLink1").data("bgImg");
		     	
		     	$.backstretch("img/" + bgImg, {fade: 500});

		     	// Setup Carousel, Nav, and Nav Toggle
			    setupCarousel();
			    setupNav();
			    setupNavToggle();
			    setupFooter();

			    // Resize Carousel upon window resize
			    $(window).resize(function() {
			    	setupCarousel();
			    	setupFooter();
			    });
      		}	      	
		});

		</script>
	</body>
</html>