<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="top"></div>
<header class="header-container">

	<div class="row pl-5 pr-5 pt-3 pb-3">

		<div class="mobile-menu">
			<div class="mobile_overlay"></div>
			<div class="button" id="btn">
				<div class="bar top"></div>
				<div class="bar middle"></div>
				<div class="bar bottom"></div>
			</div>
			<div class="mobile_sidebar">
				<form class="search-bar" role="search">
					<input type="search"
						class="input-group-field header-search__input pl-5"
						placeholder="Search">
					<button type="submit" class="icon-search">
						<i class="fas fa-search"></i>
					</button>
				</form>
				<a href="home.html">Home</a> <a href="catalog.html">Catalog</a> <a
					href="#">Blog</a> <a href="#">Pages</a>
			</div>
		</div>
		<div class="col-lg-2 col-md-6 col-sm-6 text-md-center header_logo">
			<img src='<c:url value="resources/Images/Boom-Logo.png" />'>
		</div>
		<div class="col-lg-6 header_menu">
			<ul>
				<li><a href="home.html">Home</a></li>
				<li><a href="catalog.html">Catalog</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Pages</a></li>
			</ul>
		</div>
		<div class="col-lg-4 col-md-3 col-sm-3 text-right header_account">
			<ul>
				<li>
					<div class="dropdown">
						<button id="menuLanguage_btn" class="btn dropdown-toggle show"
							type="button" id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							<img src='<c:url value="resources/Images/USD.png" />'> USD
						</button>
						<div id="menuLanguage"
							class="dropdown-menu dropdown-menu-right animateSlide slideIn"
							aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#"> <img
								src='<c:url value="resources/Images/USD.png" />'> USD
							</a> <a class="dropdown-item" href="#"> <img
								src='<c:url value="resources/Images/EUR.png" />'> EUR
							</a> <a class="dropdown-item" href="#"> <img
								src='<c:url value="resources/Images/GBP.png" />'> GBP
							</a> <a class="dropdown-item" href="#"> <img
								src='<c:url value="resources/Images/AUD.png" />'> AUD
							</a>
						</div>
					</div>
				</li>
				<li><a href="#"><i class="fas fa-shopping-bag"></i></a></li>
				<li><a href="#"><i class="fas fa-user"></i></a></li>
			</ul>
		</div>
	</div>
</header>