<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
</head>
<body>
	<div class="index-banner">
		<div class="wmuSlider example1" style="height: 560px;">
			<div class="wmuSliderWrapper">
			
				<c:forEach var = "item" items = "${sanphamModel }">
				<article style="position: relative; width: 100%; opacity: 1;">
					<div class="banner-wrap">
						<div class="slider-left">
							<img src="<c:url value = "/assets/user/images/myimages/${item.link1 }"/>" alt="" />
						</div>
						<div class="slider-right">
							<h1>${item.tensanpham }</h1>
							<h2>Mới</h2>
						
							<div class="btn">
								<a href="/ShoesSore/shop">Cửa hàng</a>
							</div>
						</div>
						<div class="clear"></div>
					</div>
				</article>
				
				</c:forEach>
				
				
				
			</div>
			<a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
			<ul class="wmuSliderPagination">
				<li><a href="#" class="">0</a></li>
				<li><a href="#" class="">1</a></li>
				<li><a href="#" class="wmuActive">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
			</ul>
			<a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
			<ul class="wmuSliderPagination">
				<li><a href="#" class="wmuActive">0</a></li>
				<li><a href="#" class="">1</a></li>
				<li><a href="#" class="">2</a></li>
				<li><a href="#" class="">3</a></li>
				<li><a href="#" class="">4</a></li>
			</ul>
		</div>
		<script src="<c:url value = "/assets/user/js/jquery.wmuSlider.js"/>"></script>
		<script type="text/javascript" src="<c:url value = "/assets/user/js/modernizr.custom.min.js"/>"></script>
		<script>
			$('.example1').wmuSlider();
		</script>
	</div>
	<div class="main">
		<div class="wrap">
			<div class="content-top">
				<div class="lsidebar span_1_of_c1">
					<p>Kết nối với chúng tôi qua mạng xã hội</p>
				</div>
				<div class="cont span_2_of_c1">
					<div class="social">
						<ul>
							<li class="facebook"><a href="https://www.facebook.com/"><span> </span></a>
							<div class="radius">
									<img src="<c:url value = "/assets/user/images/radius.png"/>"><a href="https://www.facebook.com/"> </a>
								</div>
								<div class="border hide">
									<p class="num">1.2K</p>
								</div></li>
						</ul>
					</div>
					<div class="social">
						<ul>
							<li class="twitter"><a href="#"><span> </span></a>
							<div class="radius">
										<img src="<c:url value = "/assets/user/images/radius.png"/>">
								</div>
								<div class="border hide">
									<p class="num">1.11K</p>
								</div></li>
						</ul>
					</div>
					<div class="social">
						<ul>
							<li class="google"><a href="https://www.google.com/?gws_rd=ssl"><span> </span></a>
							<div class="radius">
										<img src="<c:url value = "/assets/user/images/radius.png"/>">
								</div>
								<div class="border hide">
									<p class="num">1.51K</p>
								</div></li>
						</ul>
					</div>
					<div class="social">
						<ul>
							<li class="dot"><a href="#"><span> </span></a>
							<div class="radius">
										<img src="<c:url value = "/assets/user/images/radius.png"/>">
								</div>
								<div class="border hide">
									<p class="num">1.0K</p>
								</div></li>
						</ul>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="content-bottom">
				<div class="box1">
					<c:forEach var = "item" items = "${sanphamModel }">
					<div class="col_1_of_3 span_1_of_3">
						<a href="single.html">
							<div class="view view-fifth">
								<div class="top_box">
									<h3 class="m_1">${item.tensanpham }</h3>
									<p class="m_2">Lorem ipsum</p>
									<div class="grid_img">
										<div class="css3">
											<img src="<c:url value = "/assets/user/images/myimages/${item.link1 }"/>" alt="" />
										</div>
										<div class="mask">
											<a href = "<c:url value = "/single/${item.idsanpham }" />"><div class="info">Xem thêm</div></a>
										</div>
									</div>
									<div class="price">${item.gia}.000 VNĐ</div>
								</div>
							</div>
							 <span class="rating"> <input type="radio"
								class="rating-input" id="rating-input-1-5" name="rating-input-1">
								<label for="rating-input-1-5" class="rating-star1"></label> <input
								type="radio" class="rating-input" id="rating-input-1-4"
								name="rating-input-1"> <label for="rating-input-1-4"
								class="rating-star1"></label> <input type="radio"
								class="rating-input" id="rating-input-1-3" name="rating-input-1">
								<label for="rating-input-1-3" class="rating-star1"></label> <input
								type="radio" class="rating-input" id="rating-input-1-2"
								name="rating-input-1"> <label for="rating-input-1-2"
								class="rating-star"></label> <input type="radio"
								class="rating-input" id="rating-input-1-1" name="rating-input-1">
								<label for="rating-input-1-1" class="rating-star"></label>&nbsp;
								(${item.rating })
						</span>
							<ul class="list">
								<li><img src="images/plus.png" alt="" />
									<ul class="icon1 sub-icon1 profile_img">
										<li><a class="active-icon c1" href="#">Thêm vào giỏ</a>
										</li>	
									</ul></li>
							</ul>
							<div class="clear"></div>
						</a>
					</div>
	
					</c:forEach>
					<div class="clear"></div>
				</div>	
				
			</div>
		</div>
	</div>
</body>
</html>