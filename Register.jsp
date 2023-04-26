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

		<div class="inner" style="margin-top: -160px;">
                    <ul class="list-unstyled components mb-5" style="line-height: 1.5cm;">
	          
                        <li class="active">
	            <a href="index.html"><span class="fa fa-home mr-3"></span> Home</a>
	          </li>
	          <li>
	              <a href="Admin_Login.jsp"><span class="fa fa-user mr-3"></span> Data Owner</a>
	          </li>
	          <li>
              <a href="User_Login.jsp"><span class="fa fa-sticky-note mr-3"></span> Data User</a>
	          </li><li>
	              <a href="Key_Login.jsp"><span class="fa fa-user mr-3"></span>Confirmer</a>
	          </li>
	          <li>
              <a href="Cloud_Login.jsp"><span class="fa fa-cogs mr-3"></span> Cloud Server</a>
	          </li>
	          <li>
              <a href="#"><span class="fa fa-paper-plane mr-3"></span> Contacts</a>
	          </li>
	        </ul>

					</nav>
				</div>
			</div>
	

			<div class="col-xl-9 col-lg-8 col-md-12 col-sm-12 tm-content" style="background-color: bisque; color:black;">

					<!-- section 1 -->
                                        <section id="tm-section-1" class="tm-section" >
						<div class="ml-auto">
							<header class="mb-4"><h3 class="tm-text-shadow" style="font-family: cursive; font-size: 25px; color: blue"></h3></header>
							<style>
      table{
          font-family: cambria;
          width: 50%;
          color: #e43c5c;
          margin-left: 25%;
          font-size: 20px;
      }
      tr,td{
          padding-bottom: 10px;
      }
     
  </style>
        <!-- Page Content  -->
        <div id="content" class="p-4 p-md-5 pt-5" >
      <h2 style="margin-top: 20px; color:maroon; margin-left: 150px;font-family: cambria;font-weight: bold; font-size: 30px;">Data Owner Registration Page</h2><br>
        <form action="ownereg_Login_Action" method='post' enctype="multipart/form-data">
        <table>
          <tr><td><strong>ID: </strong></td><td><input type="text" name="id" value="" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Username: </strong></td><td><input type="text" name="user" required></td></tr>
          <tr><td><strong>Password: </strong></td><td><input type="password" name="password"  required></td></tr>
          <tr><td><strong>Mail ID: </strong></td><td><input type="email" name="email"  required></td></tr>
          <tr><td><strong>DOB: </strong></td><td><input type="text" name="dob"  style="border-radius: 2px;"  required></td></tr>
          <tr><td><strong>Profile: </strong></td><td><input type="file" name="file" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Gender: </strong></td><td><input type="text" name="gen" style="border-radius: 2px;" required></td></tr>
          <tr><td><strong>Contact: </strong></td><td><input type="text" name="address" required></td></tr>
           <tr><td><strong>Address: </strong></td><td><input type="text" name="cont" required></td></tr>
         
          <tr><td align="center" colspan="2"><button type="submit">Register</button></td></tr>
         </table></form>
         <h1 style="font-family: cursive; font-size: 13px; color: red;margin-left: 400px; "><a href="Admin_Login.jsp" style="font-family:cursive; color: blue; font-size: 28x;">Click here to back</a></h1>
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