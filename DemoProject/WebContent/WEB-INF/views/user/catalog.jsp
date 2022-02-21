<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catalog</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> -->
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<script src='https://cdn.rawgit.com/matthieua/WOW/1.0.1/dist/wow.min.js'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500&display=swap"
	rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href='<c:url value="resources/CSS/reset.css"/>'>
<link rel="stylesheet" href='<c:url value="resources/CSS/catalog.css"/>'>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<main class="main-container">

		<section class="product-banner">
			<div class="row text-center">
				<div class="col-lg-12">
					<p>PRODUCTS</p>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Library</li>
						</ol>
					</nav>
				</div>
			</div>
		</section>

		<section class="product-shop pl-5 pr-5 pb-5">

			<div class="mobile-filter">
				<div class="mobile_filter_overlay"></div>
				<div class="button_filter">
					<i class="fas fa-filter"></i>
				</div>
				<div class="mobile_filter_sidebar">
					<div class="filter-close text-right">
						<i id="filter_close" class="fas fa-times fa-2x"></i>
					</div>
					<div class="col-md-12 product_sidebar">
						<div class="catalog category">
							<h4>Category</h4>
							<hr>
							<div class="row mt-4">
								<div class="col-md-6">
									<a href="#">Wireless</a>
								</div>
								<div class="col-md-6 text-right">
									<i class="show-more fas fa-plus-circle" data-toggle="collapse"
										href="#collapse1"></i> <i class="fas fa-minus-circle"
										data-toggle="collapse" href="#collapse1"></i>
								</div>
								<div class="col-md-12">
									<div class="collapse mt-3 ml-5" id="collapse1">
										<ul>
											<li><a href="#">V50 Earphone</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row mt-4">
								<div class="col-md-6">
									<a href="#">Noise Isolated</a>
								</div>
								<div class="col-md-6 text-right">
									<i class="show-more fas fa-plus-circle" data-toggle="collapse"
										href="#collapse2"></i> <i class="fas fa-minus-circle"
										data-toggle="collapse" href="#collapse2"></i>
								</div>
								<div class="col-md-12">
									<div class="collapse mt-3 ml-5" id="collapse2">
										<ul>
											<li><a href="#">Bluetooth Earphone</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row mt-4">
								<div class="col-md-6">
									<a href="#">Noise-Cancelling</a>
								</div>
								<div class="col-md-6 text-right">
									<i class="show-more fas fa-plus-circle" data-toggle="collapse"
										href="#collapse3"></i> <i class="fas fa-minus-circle"
										data-toggle="collapse" href="#collapse3"></i>
								</div>
								<div class="col-md-12">
									<div class="collapse mt-3 ml-5" id="collapse3">
										<ul>
											<li><a href="#">Portable Earphone</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="row mt-4">
								<div class="col-md-6">
									<a href="#">Sport Earbud</a>
								</div>
								<div class="col-md-6 text-right">
									<i class="show-more fas fa-plus-circle" data-toggle="collapse"
										href="#collapse4"></i> <i class="fas fa-minus-circle"
										data-toggle="collapse" href="#collapse4"></i>
								</div>
								<div class="col-md-12">
									<div class="collapse mt-3 ml-5" id="collapse4">
										<ul>
											<li><a href="#">In-Ear Earphone</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="catalog color">
							<h4 class="catalog-show" data-toggle="collapse" href="#collapse5">
								<i class="chevron-up"></i> Shop By Color
							</h4>
							<hr>
							<div class="collapse mt-3 show" id="collapse5">
								<ul>
									<li><a href="#"><span style="background-color: red;"></span></a></li>
									<li><a href="#"><span style="background-color: blue;"></span></a></li>
									<li><a href="#"><span
											style="background-color: chartreuse;"></span></a></li>
									<li><a href="#"><span
											style="background-color: chocolate;"></span></a></li>
									<li><a href="#"><span style="background-color: black;"></span></a></li>
									<li><a href="#"><span style="background-color: white;"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="catalog price">
							<h4 class="catalog-show" data-toggle="collapse" href="#collapse6">
								<i class="chevron-up"></i> Shop By Price
							</h4>
							<hr>
							<div class="collapse mt-3 show" id="collapse6">
								<ul>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">$100 -
											$200</a></li>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">$200 -
											$300</a></li>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">$300 -
											$400</a></li>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">$400 -
											$500</a></li>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">$500 -
											$600</a></li>
								</ul>
							</div>
							<div class="catalog brand">
								<h4 class="catalog-show" data-toggle="collapse"
									href="#collapse7">
									<i class="chevron-up"></i> Shop By Brand
								</h4>
								<hr>
								<div class="collapse mt-3 show" id="collapse7">
									<ul>
										<li><input class="form-check-input" type="checkbox"
											value="" id="flexCheckDefault"> <a href="#">Autofy</a>
										</li>
										<li><input class="form-check-input" type="checkbox"
											value="" id="flexCheckDefault"> <a href="#">Beat</a>
										</li>
										<li><input class="form-check-input" type="checkbox"
											value="" id="flexCheckDefault"> <a href="#">Nemu</a>
										</li>
									</ul>
								</div>
							</div>
							<div class="catalog size">
								<h4 class="catalog-show" data-toggle="collapse"
									href="#collapse8">
									<i class="chevron-up"></i> Shop By Size
								</h4>
								<hr>
								<div class="collapse mt-3 show" id="collapse8">
									<ul>
										<li>
											<button>2.5 mm</button>
										</li>
										<li>
											<button>3.5 mm</button>
										</li>
										<li>
											<button>12 mm</button>
										</li>
									</ul>
									<ul>
										<li>
											<button>12.5 mm</button>
										</li>
										<li>
											<button>13.5 mm</button>
										</li>
										<li>
											<button>15 mm</button>
										</li>
									</ul>
								</div>
							</div>
							<div class="catalog best_seller">
								<h4>Best Seller</h4>
								<hr>
								<div class="best_seller-carousel text-center"
									data-flickity='{ "autoPlay": 3000 }'>
									<div class="carousel-cell">
										<img
											src='<c:url value="resources/Images/Catalog/Best-Seller/Best1.png" />'>
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="far fa-star"></i> <a href="#">Trendy Earbud</a>
										<p>$910.00</p>
									</div>
									<div class="carousel-cell">
										<img
											src='<c:url value="resources/Images/Catalog/Best-Seller/Best2.png" />'>
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <a href="#">Portable Earphone</a>
										<p>$910.00</p>
									</div>
									<div class="carousel-cell">
										<img
											src='<c:url value="resources/Images/Catalog/Best-Seller/Best3.png" />'>
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <a href="#">Slick Earphone</a>
										<p>$910.00</p>
									</div>
									<div class="carousel-cell">
										<img
											src='<c:url value="resources/Images/Catalog/Best-Seller/Best4.png"/>'>
										<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <i class="fas fa-star"></i> <i
											class="fas fa-star"></i> <a href="#">V42 Earphone</a>
										<p>$900.00</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row laptop-filter">
				<div class="col-lg-3 product_sidebar">
					<div class="catalog category">
						<h4>Category</h4>
						<hr>
						<div class="row mt-4">
							<div class="col-lg-6">
								<a href="#">Wireless</a>
							</div>
							<div class="col-lg-6 text-right">
								<i class="show-more fas fa-plus-circle" data-toggle="collapse"
									href="#collapse1"></i> <i class="fas fa-minus-circle"
									data-toggle="collapse" href="#collapse1"></i>
							</div>
							<div class="col-lg-12">
								<div class="collapse mt-3 ml-5" id="collapse1">
									<ul>
										<li><a href="#">V50 Earphone</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row mt-4">
							<div class="col-lg-6">
								<a href="#">Noise Isolated</a>
							</div>
							<div class="col-lg-6 text-right">
								<i class="show-more fas fa-plus-circle" data-toggle="collapse"
									href="#collapse2"></i> <i class="fas fa-minus-circle"
									data-toggle="collapse" href="#collapse2"></i>
							</div>
							<div class="col-lg-12">
								<div class="collapse mt-3 ml-5" id="collapse2">
									<ul>
										<li><a href="#">Bluetooth Earphone</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row mt-4">
							<div class="col-lg-6">
								<a href="#">Noise-Cancelling</a>
							</div>
							<div class="col-lg-6 text-right">
								<i class="show-more fas fa-plus-circle" data-toggle="collapse"
									href="#collapse3"></i> <i class="fas fa-minus-circle"
									data-toggle="collapse" href="#collapse3"></i>
							</div>
							<div class="col-lg-12">
								<div class="collapse mt-3 ml-5" id="collapse3">
									<ul>
										<li><a href="#">Portable Earphone</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="row mt-4">
							<div class="col-lg-6">
								<a href="#">Sport Earbud</a>
							</div>
							<div class="col-lg-6 text-right">
								<i class="show-more fas fa-plus-circle" data-toggle="collapse"
									href="#collapse4"></i> <i class="fas fa-minus-circle"
									data-toggle="collapse" href="#collapse4"></i>
							</div>
							<div class="col-lg-12">
								<div class="collapse mt-3 ml-5" id="collapse4">
									<ul>
										<li><a href="#">In-Ear Earphone</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="catalog color">
						<h4 class="catalog-show" data-toggle="collapse" href="#collapse5">
							<i class="chevron-up"></i> Shop By Color
						</h4>
						<hr>
						<div class="collapse mt-3 show" id="collapse5">
							<ul>
								<li><a href="#"><span style="background-color: red;"></span></a></li>
								<li><a href="#"><span style="background-color: blue;"></span></a></li>
								<li><a href="#"><span
										style="background-color: chartreuse;"></span></a></li>
								<li><a href="#"><span
										style="background-color: chocolate;"></span></a></li>
								<li><a href="#"><span style="background-color: black;"></span></a></li>
								<li><a href="#"><span style="background-color: white;"></span></a></li>
							</ul>
						</div>
					</div>
					<div class="catalog price">
						<h4 class="catalog-show" data-toggle="collapse" href="#collapse6">
							<i class="chevron-up"></i> Shop By Price
						</h4>
						<hr>
						<div class="collapse mt-3 show" id="collapse6">
							<ul>
								<li><input class="form-check-input" type="checkbox"
									value="" id="flexCheckDefault"> <a href="#">$100 -
										$200</a></li>
								<li><input class="form-check-input" type="checkbox"
									value="" id="flexCheckDefault"> <a href="#">$200 -
										$300</a></li>
								<li><input class="form-check-input" type="checkbox"
									value="" id="flexCheckDefault"> <a href="#">$300 -
										$400</a></li>
								<li><input class="form-check-input" type="checkbox"
									value="" id="flexCheckDefault"> <a href="#">$400 -
										$500</a></li>
								<li><input class="form-check-input" type="checkbox"
									value="" id="flexCheckDefault"> <a href="#">$500 -
										$600</a></li>
							</ul>
						</div>
						<div class="catalog brand">
							<h4 class="catalog-show" data-toggle="collapse" href="#collapse7">
								<i class="chevron-up"></i> Shop By Brand
							</h4>
							<hr>
							<div class="collapse mt-3 show" id="collapse7">
								<ul>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">Autofy</a>
									</li>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">Beat</a></li>
									<li><input class="form-check-input" type="checkbox"
										value="" id="flexCheckDefault"> <a href="#">Nemu</a></li>
								</ul>
							</div>
						</div>
						<div class="catalog size">
							<h4 class="catalog-show" data-toggle="collapse" href="#collapse8">
								<i class="chevron-up"></i> Shop By Size
							</h4>
							<hr>
							<div class="collapse mt-3 show" id="collapse8">
								<ul>
									<li>
										<button>2.5 mm</button>
									</li>
									<li>
										<button>3.5 mm</button>
									</li>
									<li>
										<button>12 mm</button>
									</li>
								</ul>
								<ul>
									<li>
										<button>12.5 mm</button>
									</li>
									<li>
										<button>13.5 mm</button>
									</li>
									<li>
										<button>15 mm</button>
									</li>
								</ul>
							</div>
						</div>
						<div class="catalog best_seller">
							<h4>Best Seller</h4>
							<hr>
							<div class="best_seller-carousel text-center"
								data-flickity='{ "autoPlay": 3000 }'>
								<div class="carousel-cell">
									<img
										src='<c:url value="resources/Images/Catalog/Best-Seller/Best1.png" />'>
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Trendy Earbud</a>
									<p>$910.00</p>
								</div>
								<div class="carousel-cell">
									<img
										src='<c:url value="resources/Images/Catalog/Best-Seller/Best2.png" />'>
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">Portable Earphone</a>
									<p>$910.00</p>
								</div>
								<div class="carousel-cell">
									<img
										src='<c:url value="resources/Images/Catalog/Best-Seller/Best3.png" />'>
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">Slick Earphone</a>
									<p>$910.00</p>
								</div>
								<div class="carousel-cell">
									<img
										src='<c:url value="resources/Images/Catalog/Best-Seller/Best4.png" />'>
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">V42 Earphone</a>
									<p>$900.00</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-9">
					<div class="row mobile_toolbar">
						<div class="col-sm-12">
							<span class="dropdown"> <span>SHOW: </span>
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span class="text-left">8</span>
								</button>
								<div class="dropdown-menu show-drop"
									aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">12</a> <a
										class="dropdown-item" href="#">16</a> <a class="dropdown-item"
										href="#">20</a> <a class="dropdown-item" href="#">24</a> <a
										class="dropdown-item" href="#">30</a> <a class="dropdown-item"
										href="#">50</a>
								</div>
							</span>
						</div>
						<div class="col-sm-12">
							<span class="dropdown"> <span>SORT BY: </span>
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span class="text-left">Featured</span>
								</button>
								<div class="dropdown-menu sort-drop"
									aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">Price, low to high</a> <a
										class="dropdown-item" href="#">Price, high to low</a> <a
										class="dropdown-item" href="#">A - Z</a> <a
										class="dropdown-item" href="#">Z - A</a> <a
										class="dropdown-item" href="#">Date, old to new</a> <a
										class="dropdown-item" href="#">Date, new to old</a> <a
										class="dropdown-item" href="#">Best Selling</a>
								</div>
							</span>
						</div>
					</div>
					<div class="row toolbar">
						<div class="col-lg-4 col-md-5 col-sm-12">
							<div class="col-lg-12 col-md-12 mt-4 mb-4">
								<label>VIEW:</label>
								<div id="view-mode">
									<span class="icon-mode icon-mode-list show-active"></span> <span
										class="icon-mode icon-mode-grid grid-1"></span> <span
										class="icon-mode icon-mode-grid grid-2"></span> <span
										class="icon-mode icon-mode-grid grid-3"></span> <span
										class="icon-mode icon-mode-grid grid-4"></span>
								</div>
							</div>
						</div>
						<div class="col-lg-8 col-md-7 text-right mt-4 mb-4">
							<span class="dropdown"> <span>SHOW: </span>
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">8</button>
								<div class="dropdown-menu show-drop"
									aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">12</a> <a
										class="dropdown-item" href="#">16</a> <a class="dropdown-item"
										href="#">20</a> <a class="dropdown-item" href="#">24</a> <a
										class="dropdown-item" href="#">30</a> <a class="dropdown-item"
										href="#">50</a>
								</div>
							</span> <span class="dropdown ml-5"> <span>SORT BY: </span>
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">Featured</button>
								<div class="dropdown-menu sort-drop"
									aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#">Price, low to high</a> <a
										class="dropdown-item" href="#">Price, high to low</a> <a
										class="dropdown-item" href="#">A - Z</a> <a
										class="dropdown-item" href="#">Z - A</a> <a
										class="dropdown-item" href="#">Date, old to new</a> <a
										class="dropdown-item" href="#">Date, new to old</a> <a
										class="dropdown-item" href="#">Best Selling</a>
								</div>
							</span>
						</div>
					</div>

					<div class="row product-list mt-3 mb-3">
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro1.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro1.png"/>'>
									</div>

									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>

								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">Bluetooth Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro2.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro2.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Comfort Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro3.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro3.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">In-Ear Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro4.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro4.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"/>'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png"/>'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Noise Isolation
										Earbud</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
					</div>

					<div class="row product-list mt-3 mb-3">
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro5.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro5.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"/>'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png"/>'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">Bluetooth Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro6.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro6.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"/>'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Comfort Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro7.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro7.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png"/>'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png"/>'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">In-Ear Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro8.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro8.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Noise Isolation
										Earbud</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
					</div>

					<div class="row product-list mt-3 mb-3">
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro9.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro9.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">Bluetooth Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro10.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro10.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Comfort Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro11.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro11.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <a href="#">In-Ear Earphone</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-6">
							<div class="card">
								<div class="card-image">
									<img class="card-img-top"
										src='<c:url value="resources/Images/Catalog/Product/Pro4.png"/>'>
									<div class="card-img-slide">
										<img class="card-img-top"
											src='<c:url value="resources/Images/Catalog/Product/Pro4.png"/>'>
									</div>
									<button type="button" class="pro_btn fadeIn">Quick
										view</button>

									<div class="quick_view"></div>
									<div class="pro_view">
										<div class="row pl-5 pr-5 pt-5 pb-5">
											<div class="col-lg-6 col-md-6 col-sm-12 pro_main_img">
												<img class="main_img"
													src='<c:url value="resources/Images/Catalog/Product/Pro1.png"
                                                        />'>
												<div class="row pro_sub_img mt-3">
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro10.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro9.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro8.png" />'>
													</div>
													<div class="col-lg-3 col-md-3 col-sm-6">
														<img class="sub_img"
															src='<c:url value="resources/Images/Catalog/Product/Pro7.png" />'>
													</div>
												</div>
											</div>
											<div class="col-lg-6 col-md-6 mt-4 pro_view_details">
												<a class="pro_view_heading" href="#">Bluetooth Earphone</a>
												<p class="pro_view_des mt-5">Damus id ullamcorper neque.
													Sed vitae mi a mi pretium aliquet ac sed elit. Pellentesque
													nulla eros accumsan quis justo at tincidunt lobortis
													denimes loremous. Suspendisse vestibulum lectus in lectus
													volutpat Nam tempus turpis at metus scelerisque placerat
													nulla deumantos...</p>
												<div class="row">
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Price:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>$910.00</p>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Availability :</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>In Stock</p>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Size:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_size">
															<button class="pro_size">12.5mm</button>
															<button class="pro_size">13.5mm</button>
															<button class="pro_size">2.5mm</button>
															<button class="pro_size">3.5mm</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Color:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_color">
															<button class="pro_color"
																style="background-color: black;"></button>
															<button class="pro_color" style="background-color: grey;"></button>
															<button class="pro_color"
																style="background-color: mediumblue;"></button>
															<button class="pro_color"
																style="background-color: chartreuse;"></button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-12 col-sm-6">
														<p>Material:</p>
													</div>
													<div class="col-lg-6 col-md-12 col-sm-6">
														<ul class="pro_view_material">
															<button class="pro_material">Silicon</button>
															<button class="pro_material">Plastic</button>
															<button class="pro_material">Fiber</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6 col-sm-6">
														<p>Quantity:</p>
													</div>
													<div class="col-lg-6 col-md-6 col-sm-6">
														<ul class="pro_view_quantity">
															<button>
																<i class="fas fa-minus"></i>
															</button>
															<button id="quantity">0</button>
															<button>
																<i class="fas fa-plus"></i>
															</button>
														</ul>
													</div>

													<div class="col-lg-6 col-md-6">
														<p>Total:</p>
													</div>
													<div class="col-lg-6 col-md-6">
														<p id="pro_view_total" class="pro_view_total">$910.00</p>
													</div>
												</div>
												<button type="button" class="slide_btn mt-3">Add to
													Cart</button>
											</div>
										</div>
									</div>

									<div class="pro_nav">
										<a class="pro_link" href="#"><i class="fas fa-link"></i></a> <a
											class="pro_link" href="#"><i class="far fa-heart"></i></a>
									</div>
								</div>
								<div class="card-body">
									<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="fas fa-star"></i> <i class="fas fa-star"></i> <i
										class="far fa-star"></i> <a href="#">Noise Isolation
										Earbud</a>
									<p>$910.00</p>
								</div>
							</div>
						</div>
					</div>

					<div class="row text-center">
						<div class="col-lg-12">
							<button id="showMore" type="button" class="slide_btn mt-5">Show
								more</button>
						</div>
					</div>

				</div>
			</div>
		</section>
	</main>
	<%@ include file="../layout/footer.jsp"%>
	
	<script src='<c:url value="resources/JS/catalog.js"/>'></script>
</body>
</html>