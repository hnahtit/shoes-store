<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="header-top">
		<div class="wrap">
			<div class="logo">
				<a href="/ShoesSore/"><img src="<c:url value = "/assets/user/images/logo.png"/>" alt="" /></a>
			</div>
			<div class="cssmenu">
				<ul>
					<li class="active"><a href="/ShoesSore/register">ĐĂNG KÝ</a></li>
					<li><a href="/ShoesSore/shop">CỬA HÀNG</a></li>
					<li><a href="/ShoesSore/login">TÀI KHOẢN</a></li>
					<li><a href="/ShoesSore/checkout">GIỎ HÀNG</a></li>
				</ul>
			</div>
			<ul class="icon2 sub-icon2 profile_img">
				<li><a class="active-icon c2" href="#"> </a>
					<ul class="sub-icon2 list">
						<li><h3>Products</h3>
							<a href=""></a></li>
						<li><p>
								Lorem ipsum dolor sit amet, consectetuer <a href="">adipiscing
									elit, sed diam</a>
							</p></li>
					</ul></li>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<div class="header-bottom">
		<div class="wrap">
			<!-- start header menu -->
			<ul class="megamenu skyblue">
			<c:forEach var ="item" items = "${loaisanphamModel }">
					<li><a class="color12" href="<c:url value = "/shop/${item.idloaisanpham }/1"/>">${item.tenloaisanpham }</a></li>
			</c:forEach>
		
			</ul>
			<div class="clear"></div>
		</div>
	</div>