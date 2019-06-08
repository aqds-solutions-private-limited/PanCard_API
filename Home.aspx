<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title></title>
    <!-- Google font -->

	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet" />

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Owl Carousel -->
	<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
	<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />

	<!-- Magnific Popup -->
	<link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />

	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>

    <!-- Sweet Alert -->
  
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css"
        rel="stylesheet" type="text/css" />


     
	
</head>
<body>
    <!-- Header -->
	<header id="home">
		<!-- Background Image -->
		<div class="bg-img">
			<div class="overlay">
			<div id="wowslider-container1">
	<div class="ws_images"><ul>
<li><img src="data1/images/chrysanthemum.png" alt="" title="" id="wows1_0"/></li>
<li><img src="data1/images/desert.jpg" alt="" title="" id="wows1_1"/></li>
<li><img src="data1/images/hydrangeas.jpg" alt="" title="" id="wows1_2"/></li>
<li><img src="data1/images/lighthouse.jpg" alt="" title="" id="wows1_3"/></li>
<li><img src="data1/images/penguins.jpg" alt="" title="" id="wows1_4"/></li>

</ul></div>
<div class="ws_bullets"><div>
<a href="#" title=""><img src="data1/tooltips/chrysanthemum.jpg" alt=""/>1</a>
<a href="#" title=""><img src="data1/tooltips/desert.jpg" alt=""/>2</a>
<a href="#" title=""><img src="data1/tooltips/hydrangeas.jpg" alt=""/>3</a>


<a href="#" title=""><img src="data1/tooltips/lighthouse.jpg" alt=""/>4</a>
<a href="#" title=""><img src="data1/tooltips/penguins.jpg" alt=""/>5</a>

</div></div> 
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
			
			</div>
		</div>
		<!-- /Background Image -->

		<!-- Nav -->
		<nav id="nav" class="navbar nav-transparent" style=" height:90px;">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo --> 
					<div class="navbar-brand">
						<a href="Home.aspx">
							<img class="logo" src="img/logo.png" alt="logo" />
							<img class="logo-alt" src="img/logo.png" alt="logo" />
						</a>
					</div>
					<!-- /Logo -->

					<!-- Collapse nav button -->
					<div class="nav-collapse">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
					<li><a href="#home">Home</a></li>
					<li><a href="#about">About US</a></li>
				      
                    <li><a href="#service">Services</a>	</li>	
                    <li> <a href = "#work_flow">WorkFlow</a></li>				
                    <li> <a href = "Agent_Login1.aspx"> Agent Login</a></li>			
					
					<li><a href="#contact">Contact</a></li>
				</ul>
				<!-- /Main navigation -->

			</div>
		</nav>
		<!-- /Nav -->

		<!-- home wrapper -->
		<div class="home-wrapper">
			<div class="container">
				<div class="row">

					<!-- home content -->
					<div class="col-md-10 col-md-offset-1">
						<div class="home-content">
							<h1 class="white-text">We Are Creative Agency</h1>
							<p class="white-text">		</p>
							<button class="white-btn">Get Started!</button>
							<button class="main-btn">Learn more</button>
						</div>
					</div>
					<!-- /home content -->

				</div>
			</div>
		</div>
		<!-- /home wrapper -->

	</header>
	<!-- /Header -->

	<!-- About -->
	<div id="about" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Welcome to Website</h2>
				</div>
				<!-- /Section header -->

				<!-- about -->
				<div class="col-md-4">
					<div class="about">
                    <i class="fa fa-mobile"></i>
						<h3>Fully Responsive</h3>
						<p>Application can run on devices of different sizes.</p>
						<a href="#">Read more</a>						
					</div>
				</div>
				<!-- /about -->

				<!-- about -->
				<div class="col-md-4">
					<div class="about">
						<i class="fa fa-handshake-o"></i>
						<h3>Secure Payment</h3>
						<p>Fully Secure Transaction with maintaing User Privacy and Confidentiality</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<!-- /about -->

				<!-- about -->
				<div class="col-md-4">
					<div class="about">
						<i class="fa fa-support"></i>
						<h3>24 X 7 Tech Support</h3>
						<p>We provide Full Tech Support at anytime, anywhere.</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<!-- /about -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /About -->


	<!-- Service -->
	<div id="service" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">What we offer</h2>
				</div>
				<!-- /Section header -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-money"></i>
						<h3>Online Money Transfer</h3>
						<p>We offer Money Transfer Services .Can transfer money from one bank to another bank without any trouble.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-rocket"></i>
						<h3>Online Bill Payment</h3>
						<p>We provide All types of Bill Payments through one platform. You can pay bills hassle-free and quick.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-cogs"></i>
						<h3>All Mobile Recharges</h3>
						<p>You can recharge your mobile online or offline any time any where with absolutely hassle-free & quickly.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i><img src= "img/uti.png"></i>
						<h3>UTI Pan Card Services</h3>
						<p> We have aim Of Providing Better Services And Technical Solutions To Our PAN PSA with UTI API support. </p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
					<!-- 	<i class="fa fa-pencil"></i> -->
                   <i><img src= "img/nsdl1.png"></i>  
						<h3>NSDL Authorized Pan Card</h3>
						<p>NSDL Authorized PanCard and much more Services providers in all Over India.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i><img src= "img/aeps1.png" /></i>
						<h3>Aeps Service Provider</h3>
						<p>AEPS can send and receive payment from any where and any time using aadhaar number and thumb impression.</p>
					</div>
				</div>
				<!-- /service -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Service -->


	<!-- Why Choose Us 
	<div id="features" class="section md-padding bg-grey">

		<!-- Container 
		<div class="container">
         
			<!-- Row 
			<div class="row">

				<!-- why choose us content 
				<div class="col-md-6">
					<div class="section-header">
						<h2 class="title">Why Choose Us</h2>
					</div>
					<p>Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris. Ultrices sagittis orci a scelerisque purus.</p>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Quis varius quam quisque id diam vel quam elementum.</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Mauris augue neque gravida in fermentum.</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Orci phasellus egestas tellus rutrum.</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Nec feugiat nisl pretium fusce id velit ut tortor pretium.</p>
					</div>
				</div>
				<!-- /why choose us content -->

				<!-- About slider 
				<div class="col-md-6">
					<div id="about-slider" class="owl-carousel owl-theme">
						<img class="img-responsive" src="./img/about1.jpg" alt="">
						<img class="img-responsive" src="./img/about2.jpg" alt="">
						<img class="img-responsive" src="./img/about1.jpg" alt="">
						<img class="img-responsive" src="./img/about2.jpg" alt="">
					</div>
				</div>
				<!-- /About slider 

			</div>
			<!-- /Row 

		</div>
		<!-- /Container 

	</div>
	<!-- /Why Choose Us -->


	<!-- Work Flow -->
	<div id="work_flow" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Work Flow</h2>
				</div>
				<!-- /Section header -->

				<!-- workflow -->
				<div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title" style= "font-size:20px">Master Distributer  </span>
							<div class="price">
								<h3><span class="duration"><i class = "fa fa-user-circle-o" style="font-size:110px"></i></span></h3>
							</div>
						</div>
			        	<ul class="price-content">
						
                            <li>
								<p>Automatic Refund</p>
							</li>
                            <li>
								<p>High Margin</p>
							</li>
                            <li>
								<p>24/7 support</p>
							</li>
							<li>
								<p>24/7 Billing</p>
							</li>
						</ul> 
						<div class="price-btn">
							<button class="outline-btn">Read More</button>
						</div>
					</div>
				</div>
				<!-- /pricing -->

				<!-- pricing -->
				<div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title" style= "font-size:20px">Distributer </span>
							<div class="price">
								<h3><span class="duration"><i class= "fa fa-user-circle-o" style="font-size:110px"></i></span></h3>
							</div>
						</div>
					    <ul class="price-content">
						
                            <li>
								<p>Automatic Refund</p>
							</li>
                            <li>
								<p>High Margin</p>
							</li>
                            <li>
								<p>24/7 support</p>
							</li>
							<li>
								<p>24/7 Billing</p>
							</li>
						</ul> 
						<div class="price-btn">
							<button class="outline-btn">Read More</button>
						</div>
					</div>
				</div>
				<!-- /pricing -->

				<!-- pricing -->
				<div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title" style= "font-size:20px">Retailer</span>
							<div class="price">
								<h3><span class="duration"> <i class = "fa fa-user-circle-o" style="font-size:110px"></i><span></h3>
							</div>
						</div>
						<ul class="price-content">
						
                            <li>
								<p>Pancard Services</p>
							</li>
                            <li>
								<p>Money Transfer Services</p>
							</li>
							<li>
								<p>Automatic Refund</p>
							</li>
							
                            <li>
								<p>24/7 Biling</p>
							</li>
						</ul> 
						<div class="price-btn">
							<button class="outline-btn">Read More</button>
						</div>
					</div>
				</div>
				<!-- /pricing -->

			</div>
			<!-- Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /workflow -->


	<!-- Testimonial -->
	<div id="testimonial" class="section md-padding">

		<!-- Background Image -->
		<div class="bg-img" style="background-image: url('./img/background3.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Testimonial slider -->
				<div class="col-md-10 col-md-offset-1">
					<div id="testimonial-slider" class="owl-carousel owl-theme">

						<!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="./img/perso1.jpg" alt="">
								<h3 class="white-text">John Doe</h3>
								<span>Customer</span>
							</div>
							<p class="white-text"></p>
						</div>
						<!-- /testimonial -->

						<!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="./img/perso2.jpg" alt="">
								<h3 class="white-text">John Doe</h3>
								<span>Customer</span>
							</div>
							<p class="white-text"></p>
						</div>
						<!-- /testimonial -->

					</div>
				</div>
				<!-- /Testimonial slider -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Testimonial -->

	
	



	<!-- Contact -->
	<div id="contact" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section-header -->
				<div class="section-header text-center">
					<h2 class="title">Get in touch</h2>
				</div>
				<!-- /Section-header -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-phone"></i>
						<h3>Phone</h3>
						<p>9999999999</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-envelope"></i>
						<h3>Email</h3>
						<p>email@support.com</p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact -->
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-map-marker"></i>
						<h3>Address</h3>
						<p></p>
					</div>
				</div>
				<!-- /contact -->

				<!-- contact form -->
				<div class="col-md-8 col-md-offset-2">
					<form id="form1" runat="server" class="contact-form" >
                        <asp:TextBox runat = "server" ID = "textbox1" CssClass="input" Text="Name"></asp:TextBox>
						<asp:TextBox runat = "server" ID="textbox2" CssClass = "input" Text="Email"></asp:TextBox>
                        <asp:TextBox runat = "server" ID="textbox3" CssClass = "input" Text="Subject"></asp:TextBox>
						<asp:TextBox runat = "server" ID="textbox4" CssClass = "input" TextMode="MultiLine" Text="Body"></asp:TextBox>
						<asp:Button runat = "server" ID="button1" CssClass = "main-btn" 
                            Text="Send Message" onclick="button1_Click"/>
                        <asp:label runat="server" ID="label1"></asp:label>
					</form>
				</div>
				<!-- /contact form -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Contact -->
   

	<!-- Footer -->
	<footer id="footer" class="sm-padding bg-dark">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<div class="col-md-12">

					<!-- footer logo -->
					<div class="footer-logo">
						<a href="Home.aspx"><img src="img/logo.png" alt="logo" style=" height:200px;"></a>
                <br />
                        <a href="Home.aspx"><img src="img/121.png" alt="logo" style=" width:200px;"></a>
					</div>
                   
					<!-- /footer logo -->

					<!-- footer follow -->
					<ul class="footer-follow">
						<li><a href="#"><i class="fa fa-facebook-square" style= " font-size:40px; color:White; background-color:#3b5998;"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter" style= " font-size:40px; color:White; background-color:#6195FF";></i></a></li>
						<li><a href="#"><i class="fa fa-whatsapp" style=" font-size:40px; color:white; background-color: #25d366"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram" style=" font-size:40px; color:white; background-color: #3f729b"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin" style=" font-size:40px; color:white; background-color: #0976b4"></i></a></li>
						<li><a href="#"><i class="fa fa-youtube" style=" font-size:40px; color:white; background-color: @fa-youtube"></i></a></li>  
					</ul>
					<!-- /footer follow -->

					<!-- footer copyright -->
					<div class="footer-copyright">
						<p>Copyright © 2019. All Rights Reserved. Designed by our team<a href="#" target="_blank"></a></p>
					</div>
					<!-- /footer copyright -->

				</div>

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</footer>
	<!-- /Footer -->

	<!-- Back to top -->
	<div id="back-to-top"></div>
	<!-- /Back to top -->

	<!-- Preloader -->
	<div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
	<!-- /Preloader -->

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
