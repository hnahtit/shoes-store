
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<title> <decorator:title default = "Master Layout"/></title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value = "/assets/user/css/style.css"/> " rel="stylesheet" type="text/css" media="all" />

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<c:url value = "/assets/user/js/jquery.min.js"/>"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".dropdown img.flag").addClass("flagvisibility");

				$(".dropdown dt a").click(function() {
					$(".dropdown dd ul").toggle();
				});

				$(".dropdown dd ul li a").click(
						function() {
							var text = $(this).html();
							$(".dropdown dt a span").html(text);
							$(".dropdown dd ul").hide();
							$("#result").html(
									"Selected value is: "
											+ getSelectedValue("sample"));
						});

				function getSelectedValue(id) {
					return $("#" + id).find("dt a span.value").html();
				}

				$(document).bind('click', function(e) {
					var $clicked = $(e.target);
					if (!$clicked.parents().hasClass("dropdown"))
						$(".dropdown dd ul").hide();
				});

				$("#flagSwitcher").click(function() {
					$(".dropdown img.flag").toggleClass("flagvisibility");
				});
			});
</script>
<!-- start menu -->
<link href="<c:url value = "/assets/user/css/megamenu.css"/> " rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="<c:url value = "/assets/user/js/megamenu.js"/>"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="<c:url value = "/assets/user/js/move-top.js"/>"></script>
<script type="text/javascript" src="<c:url value = "/assets/user/js/easing.js"/>"> </script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>

<!-- shop -->
<link href="<c:url value = "/assets/user/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value = "/assets/user/css/form.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<c:url value = "/assets/user/js/jquery.min.js"/>"></script>
<script src="<c:url value = "/assets/user/js/jquery.easydropdown.js"/>"></script>

<!-- start menu -->     
<link href="<c:url value = "/assets/user/css/megamenu.css"/>" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<c:url value = "/assets/user/js/megamenu.js"/>"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<script type="text/javascript" src="<c:url value = "/assets/user/js/jquery.jscrollpane.min.js"/>"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- top scrolling -->
<script type="text/javascript" src="<c:url value = "/assets/user/js/move-top.js"/>"></script>
<script type="text/javascript" src="<c:url value = "/assets/user/js/easing.js"/>"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>		

</head>
<body>
	
	<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
	<!--Body of master layout  -->
	<decorator:body/>
	
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
	
	<script type="text/javascript">
		$(document).ready(function() {

			var defaults = {
				containerID : 'toTop', // fading element id
				containerHoverID : 'toTopHover', // fading element hover id
				scrollSpeed : 1200,
				easingType : 'linear'
			};

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<a href="#" id="toTop" style="display: block;"><span
		id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>