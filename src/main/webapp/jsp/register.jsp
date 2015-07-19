<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">``
        <![endif]-->
<title>Sign Up!</title>
<meta name="description"
	content="Effect, premium HTML5&amp;CSS3 template">
<meta name="author" content="MosaicDesign">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/theme-style.css">
<link rel="stylesheet" href="css/ie.style.css">
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
        <![endif]-->
<!--[if IE 7]>
          <link rel="stylesheet" href="css/font-awesome-ie7.css">
        <![endif]-->
<script src="js/vendor/modernizr.js"></script>
<!--[if IE 8]><script src="js/vendor/less-1.3.3.js"></script><![endif]-->
<!--[if gt IE 8]><!-->
<script src="js/vendor/less.js"></script>
<!--<![endif]-->

<script type="text/javascript">

	function validateRegistrationForm(){
		var firstName 		= document.registrationForm.inputFirstName.value;	
		var lastName 		= document.registrationForm.inputLastName.value;
		var eMail 			= document.registrationForm.inputEMail.value;
		var phone 			= document.registrationForm.inputPhone.value;
		var phoneLength		= phone.length;
//		alert(phone);
// 		var address 		= document.registrationForm.inputAddress.value;
// 		var city 			= document.registrationForm.inputCity.value;
// 		var postalCode 		= document.registrationForm.inputPostCode.value;
// 		var state 			= document.registrationForm.inputState.value;
		var password 		= document.registrationForm.inputPassword1.value;
		var retypePassword 	= document.registrationForm.inputPassword2.value;
		var atposition		= eMail.indexOf("@");  
		var dotposition		= eMail.lastIndexOf(".");  

// 		alert(phone.length);
// 		return true;
		
		if (firstName == null || firstName == "") {
			alert("First Name can't be blank!");
			return false;
		}
		else if (lastName == null || lastName == "") {
			alert("Last Name can't be blank!");
			return false;
		}
		else if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length){  
		  	alert("Please enter a valid E-Mail address!");  
		  	return false;  
		}
		// if (isNaN(phone)) {
		// 			alert("Phone number must contain only digits!");
		// 			return false;
		// 		}
		else if (phone.length < 10 || phone.length > 10) {
			alert("Phone number must must be exctly 10 digits long!");
			return false;
		}
// 		if (lastName == null || lastName == "") {
// 			alert("Last Name can't be blank");
// 			return false;
// 		}
// 		if (lastName == null || lastName == "") {
// 			alert("Last Name can't be blank");
// 			return false;
// 		}
//  		if (lastName == null || lastName == "") {
// 			alert("Last Name can't be blank");
// 			return false;
// 		}
//  		if (lastName == null || lastName == "") {
// 			alert("Last Name can't be blank");
// 			return false;
// 		}
//  		if (password.length < 6 || password.length >= 20){  
// 			  alert("Password must be at between 6 nd 20 characters long.");  
// 			return false;
// 		}
//  		if (password != retypePassword) {
// 			alert("Passwords do not match!");
// 			return false;
// 		}

		return true;
	}
</script>

</head>
<body class="body-bg">
	<!-- Header-->
	<jsp:include page="/jsp/header-footer/header.jsp">
       	<jsp:param value="" name="locationDepth"/>
    </jsp:include>
	<!-- End header -->
	<section>
		<div class="second-page-container">
			<div class="block">
				<div class="container">
					<div class="header-for-light">
						<h1 class="wow fadeInRight animated" data-wow-duration="1s">
							Sign <span>Up!</span>
						</h1>
					</div>
					<div class="row">
						<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
							<div class="block-form box-border wow fadeInLeft animated"
								data-wow-duration="1s">
								<h3>
									<i class="fa fa-user"></i>Personal Information
								</h3>
								<hr>
								<form class="form-horizontal" role="form" method="post"
									action="registerServlet" name="registrationForm"
									onsubmit="return validateRegistrationForm()">
									<div class="form-group">
										<label for="inputFirstName" class="col-sm-3 control-label">First Name:<span class="text-error">*</span>
										</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputFirstName" name="inputFirstName" required 
											placeholder="First Name" oninvalid="this.setCustomValidity('Please enter your First Name here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputLastName" class="col-sm-3 control-label">Last Name:<span class="text-error">*</span>
										</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputLastName"
												name="inputLastName" placeholder="Last Name" oninvalid="this.setCustomValidity('Please enter your Last Name here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputEMail" class="col-sm-3 control-label">E-Mail:<span
											class="text-error">*</span></label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="inputEMail"
												name="inputEMail" required placeholder="E-Mail ID" oninvalid="this.setCustomValidity('Please enter your Email ID here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPhone" class="col-sm-3 control-label">Phone:<span
											class="text-error">*</span></label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputPhone" placeholder="Phone Number"
												name="inputPhone" required 
												oninvalid="this.setCustomValidity('Please enter your Phone Number here! Do not use any 0 in the start of your phone number.')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<h3>
										<i class="fa fa-truck"></i>Delivery Address Information
									</h3>
									<hr>
									<div class="form-group">
										<label for="inputAddress1" class="col-sm-3 control-label">First Line:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="firstLine"
												name="firstLine" placeholder="First Line of Address" oninvalid="this.setCustomValidity('Please enter your Address First Line here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputAddress2" class="col-sm-3 control-label">Second Line:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="secondLine"
												name="secondLine" placeholder="Second Line of Address" oninvalid="this.setCustomValidity('Please enter your Address Second Line here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputAddress3" class="col-sm-3 control-label">Third Line:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="thirdLine"
												name="thirdLine" placeholder="Third Line of Address" oninvalid="this.setCustomValidity('Please enter your Address Third Line here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputCity" class="col-sm-3 control-label">City:
										</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputCity"
												name="inputCity" placeholder="City" oninvalid="this.setCustomValidity('Please enter your City here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPostCode" class="col-sm-3 control-label">Postal
											Code: 
										</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="inputPostCode"
												name="inputPostCode" placeholder="Postal Code" oninvalid="this.setCustomValidity('Please enter your Postal Code here!')"
    										oninput="setCustomValidity('')"> 
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label">State: </label>
										<div class="col-sm-9">
											<select name="inputState" class="form-control">
												<option value="-All States-"> </option>
												<option value="State1">State1</option>
												<option value="State2">State2</option>
											</select>
										</div>
									</div>
									<h3>
										<i class="fa fa-lock"></i>Password
									</h3>
									<hr>
									<div class="form-group">
										<label for="inputPassword1" class="col-sm-3 control-label">Password:
											<span class="text-error">*</span>
										</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" required 
												id="inputPassword1" name="inputPassword1"placeholder="Password" oninvalid="this.setCustomValidity('Please enter your Password here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<div class="form-group">
										<label for="inputPassword2" class="col-sm-3 control-label">Re-Password:
											<span class="text-error">*</span>
										</label>
										<div class="col-sm-9">
											<input type="password" class="form-control"
												id="inputPassword2" required placeholder="Retype Password"
												oninvalid="this.setCustomValidity('Please retype your Password here!')"
    										oninput="setCustomValidity('')">
										</div>
									</div>
									<!-- 	
									<div class="form-group">
										<div class="col-sm-offset-3 col-sm-9">
											<div class="checkbox">
												<label> <input type="checkbox"> I've read
													and agreed on <a href="#">Terms & Conditions</a>
												</label>
											</div>
										</div>
									</div>
								-->
									<div class="form-group">
										<div class="col-sm-offset-3 col-sm-9">
											<button type="submit" class="btn-default-1">Sign Up!</button>
										</div>
									</div>
								</form>

							</div>
						</article>
						<article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

							<div class="block-form box-border wow fadeInRight animated"
								data-wow-duration="1s">
								<h3>
									<i class="fa fa-check"></i>Conditions
								</h3>
								<hr>
								<p>conditions to be put here.</p>
								<a href="#" class="btn-default-1">Read more</a>
							</div>
							<div class="block-form box-border wow fadeInRight animated"
								data-wow-duration="1s">
								<h3>
									<i class="fa fa-bookmark-o"></i>Checkout as Guest
								</h3>
								<hr>
								<a href="#" class="btn-default-1">As Guest</a>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer starts -->
        <jsp:include page="/jsp/header-footer/footer.jsp">
        	<jsp:param value="" name="locationDepth"/>
        </jsp:include>
    <!-- End Section footer -->
        
	<script src="js/vendor/jquery.js"></script>
	<script src="js/vendor/jquery.easing.1.3.js"></script>
	<script src="js/vendor/bootstrap.js"></script>

	<script src="js/vendor/jquery.flexisel.js"></script>
	<script src="js/vendor/wow.min.js"></script>
	<script src="js/vendor/jquery.transit.js"></script>
	<script src="js/vendor/jquery.jcountdown.js"></script>
	<script src="js/vendor/jquery.jPages.js"></script>
	<script src="js/vendor/owl.carousel.js"></script>

	<script src="js/vendor/responsiveslides.min.js"></script>
	<script src="js/vendor/jquery.elevateZoom-3.0.8.min.js"></script>

	<!-- jQuery REVOLUTION Slider  -->
	<script type="text/javascript"
		src="js/vendor/jquery.themepunch.plugins.min.js"></script>
	<script type="text/javascript"
		src="js/vendor/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="js/vendor/jquery.scrollTo-1.4.2-min.js"></script>

	<!-- Custome Slider  -->
	<script src="js/main.js"></script>

	<!--Here will be Google Analytics code from BoilerPlate-->
</body>
</html>