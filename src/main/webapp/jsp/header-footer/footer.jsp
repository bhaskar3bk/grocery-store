<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>

<%
	String depth = request.getParameter("locationDepth");
	pageContext.setAttribute("depth", depth);
%>

<footer id="footer-block">
	<div class="block color-scheme-white-90">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<article class="payment-service">
						<a href="#"></a>
						<div class="row">
							<div class="col-md-4 text-center">
								<i class="fa fa-thumbs-up"></i>
							</div>
							<div class="col-md-8">
								<h3 class="color-active">Safe Payments</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							</div>
						</div>
					</article>
				</div>
				<div class="col-md-4">
					<article class="payment-service">
						<a href="#"></a>
						<div class="row">
							<div class="col-md-4 text-center">
								<i class="fa fa-truck"></i>
							</div>
							<div class="col-md-8">
								<h3 class="color-active">Free shipping</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							</div>
						</div>
					</article>
				</div>
				<div class="col-md-4">
					<article class="payment-service">
						<a href="#"></a>
						<div class="row">
							<div class="col-md-4 text-center">
								<i class="fa fa-fax"></i>
							</div>
							<div class="col-md-8">
								<h3 class="color-active">24/7 Support</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							</div>
						</div>
					</article>
				</div>
			</div>



		</div>
	</div>

	<div class="social">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="socials">
						<a href="#"><i class="fa fa-skype"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-youtube"></i></a>
					</div>
				</div>
				<div class="col-md-6">
					<form class="form-horizontal">
						<input type="text" class="input form-control"
							placeholder="Newsletter">
						<button type="submit">
							Sign up <i class="fa fa-angle-right"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-information">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="header-footer">
						<h3>Information</h3>
					</div>
					<ul class="footer-categories list-unstyled">
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Delivery Information</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Terms & Conditions</a></li>
						<li><a href="#">Site Map</a></li>
						<li><a href="#">Returns</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<div class="header-footer">
						<h3>My Account</h3>
					</div>
					<ul class="footer-categories list-unstyled">
						<li><a href="#">My Account</a></li>
						<li><a href="#">Wish List</a></li>
						<li><a href="#">Order History</a></li>
						<li><a href="#">Brands</a></li>
						<li><a href="#">Specials</a></li>
						<li><a href="#">Newsletter</a></li>
						<li><a href="#">Secure payment</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<div class="header-footer">
						<h3>I want ...</h3>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
					<div class="want">
						<form class="form-horizonta">
							<textarea class="form-control" placeholder="I want ..."></textarea>
							<button type="submit">
								Send us <i class="fa fa-angle-right"></i>
							</button>
						</form>
					</div>



				</div>
				<div class="col-md-3">
					<div class="header-footer">
						<h3>Get In Touch</h3>
					</div>
					<p>
						<strong>Phone: 1-000-000-0000</strong><br>
						<strong>Email:</strong> info@yourdomain.com
					</p>
					<p>
						<strong>Your Company LTD.</strong><br>Street Name, 000000,
						City Name
					</p>
					<p>
						<a href=""><i class="icon-map-marker"></i> Location in Google
							Maps</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-copy color-scheme-1">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<a href="index.html" class="logo-copy pull-left"></a>
				</div>
				<div class="col-md-4">
					<p class="text-center">
						<a href="">Copyright В© 2014</a> Effect | All rights reserved.<br>Designed
						by <a href="http://mosaicdesign.uz" target="_blank">Mosaic
							Design</a>
					</p>
				</div>
				<div class="col-md-4">
					<ul class="footer-payments pull-right">
						<li><img src="<%=depth%>img/payment-maestro.jpg"
							alt="payment" /></li>
						<li><img src="<%=depth%>img/payment-discover.jpg"
							alt="payment" /></li>
						<li><img src="<%=depth%>img/payment-visa.jpg" alt="payment" /></li>
						<li><img src="<%=depth%>img/payment-american-express.jpg"
							alt="payment" /></li>
						<li><img src="<%=depth%>img/payment-paypal.jpg" alt="payment" /></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>