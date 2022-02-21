<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<footer class="footer-container">
	<div class="row text-center">
		<div class="col-lg-12">
			<a href="#"><img
				src='<c:url value="resources/Images/Boom-Logo1.png" />'></a>
			<p class="footer_heading">Subscribe Our Newsletter</p>
		</div>
		<div class="container">
			<form>
				<button type="button" class="btn notify-btn">Notify Me</button>
				<input id="input" type="email" placeholder="Email" required>
				<button type="button" class="submit-btn">Send</button>
				<button type="button" class="btn thanku-btn">Thank You!</button>
			</form>
		</div>
		<div class="offset-lg-4 col-lg-4 footer_social mt-5">
			<ul>
				<li><a href="#"><i class="fab fa-facebook-square"></i></a></li>
				<li><a href="#"><i class="fab fa-twitter"></i></a></li>
				<li><a href="#"><i class="fab fa-instagram"></i></a></li>
				<li><a href="#"><i class="fab fa-pinterest"></i></a></li>
			</ul>
			<ul class="mt-5 footer_menu">
				<li><a href="home.html">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="catalog.html">Shop</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
	</div>
	<hr>
	<p class="text-center">Copyright © 2020 Boom Earwear Powered by
		Shopify. All Rights Reserved.</p>
</footer>
