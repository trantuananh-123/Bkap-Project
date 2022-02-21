<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
<link rel="stylesheet" href='<c:url value="resources/CSS/home.css"/>'>
</head>
<body>
	<div class="container-fluid">
		<%@ include file="../layout/header.jsp"%>
		<main class="main-container">

			<div class="swiper-container swiper1">
				<div class="swiper-wrapper">
					<div class="swiper-slide slide1">
						<div class="row pl-5 pr-5">
							<div class="col-lg-6 col-md-6 col-sm-12 slider">
								<p class="slide_subheading">Sing Along</p>
								<p class="slide_heading mt-3">Inspired Design & Quality
									Sound With Beats</p>
								<p class="slide_text mt-5">Love what you listen, listen to
									what you love. Music speaks when words don’t. Make it clear.
									Let music reach your heart.</p>
								<button type="button" class="slide_btn mt-5">Shop now</button>
							</div>
						</div>
					</div>
					<div class="swiper-slide slide2">
						<div class="row pl-5 pr-5">
							<div class="col-lg-6 col-md-6 slider">
								<p class="slide_subheading">Sing Along</p>
								<p class="slide_heading mt-3">Inspired Design & Quality
									Sound With Beats</p>
								<p class="slide_text mt-5">Love what you listen, listen to
									what you love. Music speaks when words don’t. Make it clear.
									Let music reach your heart.</p>
								<button type="button" class="slide_btn mt-5">Shop now</button>
							</div>
						</div>
					</div>
					<div class="swiper-slide slide3">
						<div class="row pl-5 pr-5">
							<div class="col-lg-6 col-md-6 slider">
								<p class="slide_subheading">Sing Along</p>
								<p class="slide_heading mt-3">Inspired Design & Quality
									Sound With Beats</p>
								<p class="slide_text mt-5">Love what you listen, listen to
									what you love. Music speaks when words don’t. Make it clear.
									Let music reach your heart.</p>
								<button type="button" class="slide_btn mt-5">Shop now</button>
							</div>
						</div>
					</div>
				</div>
				<!-- Add Arrows -->
				<div class="swiper1-button-next"></div>
				<div class="swiper1-button-prev"></div>
			</div>

			<section
				class="collections_container animate__animated animate__fadeIn wow fadeIn"
				data-wow-duration="1.5s">
				<div class="row pl-5 pr-5">
					<div class="col-lg-6 col-md-6 col-sm-12">
						<img
							src='<c:url value="resources/Images/Collections/Airpod.png"/>'>
					</div>
					<div class="col-lg-6 col-md-6  col-sm-12collections_item">
						<div class="slide_subheading">Simply awesome</div>
						<p class="slide_heading mt-3">Amazing music gadgets for music
							lovers</p>
						<p class="slide_text mt-5">Sed viverra ipsum nunc aliquet
							bibendum. Viverra ipsum nunc aliquet bibendum enim facilisis
							gravida neque. Imperdiet massa tincidunt nunc pulvinar sapien et
							ligula ullamcorper.</p>
						<button type="button" class="slide_btn mt-5">Buy now</button>
					</div>
				</div>

				<div class="row pl-5 pr-5">
					<div class="col-lg-6 col-md-6 collections_item">
						<div class="slide_subheading">Simply awesome</div>
						<p class="slide_heading mt-3">Amazing music gadgets for music
							lovers</p>
						<p class="slide_text mt-5">Sed viverra ipsum nunc aliquet
							bibendum. Viverra ipsum nunc aliquet bibendum enim facilisis
							gravida neque. Imperdiet massa tincidunt nunc pulvinar sapien et
							ligula ullamcorper.</p>
						<button type="button" class="slide_btn mt-5">Buy now</button>
					</div>
					<div class="col-lg-6 col-md-6">
						<img
							src='<c:url value="resources/Images/Collections/Boom-wire.png"/>'>
					</div>
				</div>
			</section>

			<section class="shopify-container pt-5 pb-5">
				<div class="row pr-5">
					<div
						class="col-lg-6 col-md-6 col-sm-12 animate__animated wow animate__slideInUp slideInUp"
						data-wow-duration="1.5s">
						<img
							src='<c:url value="resources/Images/Collections/Shopify.png"/>'>
					</div>
					<div
						class="col-lg-6 col-md-6 animate__animated wow animate__slideInUp slideInUp"
						data-wow-duration="1.5s">
						<div class="shopify_subheading">Advanced Features</div>
						<p class="shopify_feature_heading mt-5">Ultimate comfort and
							best sound</p>
						<ul>
							<li>
								<div class="shopify_feature">
									<i class="fab fa-bluetooth shopify_feature_icon fa-2x"></i>
									<p class="shopify_feature_text">Bluetooth connectivity</p>
								</div>
							</li>
							<li>
								<div class="shopify_feature">
									<i class="fas fa-wifi shopify_feature_icon fa-2x"></i>
									<p class="shopify_feature_text">Bluetooth connectivity</p>
								</div>
							</li>
							<li>
								<div class="shopify_feature">
									<i
										class="fas fa-battery-three-quarters shopify_feature_icon fa-2x"></i>
									<p class="shopify_feature_text">Long lasting battery</p>
								</div>
							</li>
							<li>
								<div class="shopify_feature">
									<i class="fas fa-tint shopify_feature_icon fa-2x"></i>
									<p class="shopify_feature_text">Higher water & dust
										resistance</p>
								</div>
							</li>
							<li>
								<div class="shopify_feature">
									<i class="fas fa-microphone shopify_feature_icon fa-2x"></i>
									<p class="shopify_feature_text">One Touch Control</p>
								</div>
							</li>
							<li>
								<div class="shopify_feature">
									<i class="fas fa-volume-up shopify_feature_icon fa-2x"></i>
									<p class="shopify_feature_text">Active noise cancelling</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</section>

			<section class="testimonial-container" data-wow-duration="1.5s">
				<div class="row">
					<div
						class=" offset-lg-6 col-lg-6 offset-md-6 col-md-6 col-sm-12 mt-5">
						<div class="slide_subheading">Magical listening experience</div>
						<p class="slide_heading mt-3">Wireless Headphones & Ear-buds
							are Comfort & Fit</p>
					</div>
				</div>
				<div class="testimonial-carousel">
					<div class="testimonial-carousel-cell">
						<div class="row pl-5 pr-5">
							<div
								class="col-lg-6 col-md-6 col-sm-12 testimonial-avatar text-center">
								<img class="avatar"
									src='<c:url value="resources/Images/Collections/Testimonials1.png"/>'>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 testimonial-text">
								<p class="slide_text mt-5">Pharetra sit amet aliquam id
									diam. Cum sociis natoque penatibus et magnis. Eget nullam non
									nisi est sit amet facilisis magna. Odio morbi quis commodo odio
									aenean sed adipiscing diam donec. Sit amet justo donec enim
									diam vulputate ut pharetra sit. Ipsum a arcu cursus vitae
									congue.</p>
								<p class="slide_name mt-5">Alicia Woods - USA</p>
								<p class="slide_job mt-3">Fashion Designer</p>
							</div>
						</div>
					</div>
					<div class="testimonial-carousel-cell">
						<div class="row pl-5 pr-5">
							<div
								class="col-lg-6 col-md-6 col-sm-12 testimonial-avatar text-center">
								<img class="avatar"
									src='<c:url value="resources/Images/Collections/Testimonials2.png"/>'>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 testimonial-text">
								<p class="slide_text mt-5">Pharetra sit amet aliquam id
									diam. Cum sociis natoque penatibus et magnis. Eget nullam non
									nisi est sit amet facilisis magna. Odio morbi quis commodo odio
									aenean sed adipiscing diam donec. Sit amet justo donec enim
									diam vulputate ut pharetra sit. Ipsum a arcu cursus vitae
									congue.</p>
								<p class="slide_name mt-5">Melvin Powell - Norway</p>
								<p class="slide_job mt-3">Marketing Manager</p>
							</div>
						</div>
					</div>
					<div class="testimonial-carousel-cell">
						<div class="row pl-5 pr-5">
							<div
								class="col-lg-6 col-md-6 col-sm-12 testimonial-avatar text-center">
								<img class="avatar"
									src='<c:url value="resources/Images/Collections/Testimonials3.png"/>'>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12 testimonial-text">
								<p class="slide_text mt-5">Pharetra sit amet aliquam id
									diam. Cum sociis natoque penatibus et magnis. Eget nullam non
									nisi est sit amet facilisis magna. Odio morbi quis commodo odio
									aenean sed adipiscing diam donec. Sit amet justo donec enim
									diam vulputate ut pharetra sit. Ipsum a arcu cursus vitae
									congue.</p>
								<p class="slide_name mt-5">Erica Ryan - UK</p>
								<p class="slide_job mt-3">Fitness Coach</p>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="video-banner mt-3 mb-5">
				<div class="row text-center">
					<div class="offset-3 col-lg-6 col-md-6 col-sm-12">
						<p class="slide_heading mt-3">The Right Headphones</p>
						<p class="slide_text mt-5">In ornare quam viverra orci
							sagittis. Duis ultricies lacus sed turpis tincidunt id aliquet
							risus. Arcu felis bibendum ut tristique et.</p>
						<div class="video-show mt-5">
							<i class="far fa-play-circle fa-4x"></i>
						</div>
					</div>
				</div>
				<div class="overlay"></div>
				<div class="video">
					<iframe width="700" height="400"
						src="https://www.youtube.com/embed/x4D1jt0aThg?mute=1"
						frameborder="10"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<i class="fas fa-times fa-3x"></i>
				</div>
			</section>

			<section class="blog-container pl-5 pr-5 pb-5">
				<div class="row text-center">
					<div class="col-lg-12 col-md-12 blog_text">
						<p class="slide_text mt-3">Good treble performance</p>
						<p class="slide_heading mt-5">Rhythmic Music Blog</p>
					</div>
				</div>
				<div class="row mt-5">
					<div class="col-lg-4 col-md-4">
						<div class="card">
							<a href="#" class="blog_card"><img class="card-img-top"
								src='<c:url value="resources/Images/Blog/Blog1.png"/>'></a>
							<div class="card-body">
								<a href="#">
									<p class="slide_heading mt-3">The Right Headphones</p>
								</a>
								<p class="blog_comment mt-2">by Ramamoorthi M / Aug 04, 2020
									1 comment</p>
								<p class="slide_text mt-3">In ornare quam viverra orci
									sagittis. Duis ultricies lacus sed turpis tincidunt id aliquet
									risus. Arcu felis bibendum ut tristique et.</p>
								<a href="#"><button type="button" class="slide_btn mt-5">Read
										more</button></a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card">
							<a href="#"><img class="card-img-top"
								src='<c:url value="resources/Images/Blog/Blog2.png"/>'></a>
							<div class="card-body">
								<a href="#">
									<p class="slide_heading mt-3">The Right Headphones</p>
								</a>
								<p class="blog_comment mt-2">by Ramamoorthi M / Aug 04, 2020
									1 comment</p>
								<p class="slide_text mt-3">In ornare quam viverra orci
									sagittis. Duis ultricies lacus sed turpis tincidunt id aliquet
									risus. Arcu felis bibendum ut tristique et.</p>
								<a href="#"><button type="button" class="slide_btn mt-5">Read
										more</button></a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4">
						<div class="card">
							<a href="#"><img class="card-img-top"
								src='<c:url value="resources/Images/Blog/Blog3.png"/>'></a>
							<div class="card-body">
								<a href="#">
									<p class="slide_heading mt-3">The Right Headphones</p>
								</a>
								<p class="blog_comment mt-2">by Ramamoorthi M / Aug 04, 2020
									1 comment</p>
								<p class="slide_text mt-3">In ornare quam viverra orci
									sagittis. Duis ultricies lacus sed turpis tincidunt id aliquet
									risus. Arcu felis bibendum ut tristique et.</p>
								<a href="#"><button type="button" class="slide_btn mt-5">Read
										more</button></a>
							</div>
						</div>
					</div>
				</div>
			</section>
		</main>
		<%@ include file="../layout/footer.jsp"%>
	</div>

	<script src='<c:url value="resources/JS/home.js"/>'></script>
	<script>
		new WOW().init();
	</script>

</body>
</html>