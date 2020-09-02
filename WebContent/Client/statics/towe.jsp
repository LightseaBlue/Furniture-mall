<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>马氏家具集团办公家具【官网】</title>
<meta name="keywords" content="#">
<meta name="description" content="#">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="css/cui.css">
<link rel="stylesheet" href="css/lib.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<style>
#hd {
	border-bottom: 1px #e2e2e2 solid;
}
</style>

</head>

<body class="white" style="">
<%
		String name=(String)session.getAttribute("user");
		if(name==null||name.length()<=0){
			response.sendRedirect("../login.html");
		}
		
	%>
	<style>
#top div {
	height: 43px;
	line-height: 43px;
	margin: 0 auto;
	width: 1120px;
}
</style>
	<!-- 顶部 -->
	<div id="top">
		<div style="">
			<p class="l"><%=name %>,马氏家具集团欢迎你!</p>
			<p class="r">
				<span class="sp2">110-120-10086</span><span class="sp3">fox1172893066@qq.com</span>
			</p>
		</div>
	</div>
	<!-- 顶部end -->
	<!-- 头部  -->
	<div id="hd">
		<div class="wp pr">
			<div class="logo">
			<a href="index.jsp"><img src="img/logo1.png" style="height: 70px; width: 134px"></a>
			</div>
			<div class="nav">
				<ul class="ul-nav">
					<li class=""><a href="index.jsp">首页</a></li>
					<li class=""><a href="about.jsp">关于马氏家具集团</a></li>
					<li class=""><a href="product.jsp">产品中心</a></li>
					<li class=""><a href="showCar.jsp">购物车</a></li>
					<li class=""><a href="join.jsp">加盟中心</a></li>
					<li class=""><a href="news.jsp">新闻资讯</a></li>
					<li class=""><a href="towe.jsp">联系我们</a></li>
				</ul>

			</div>
		</div>
	</div>
	<!-- 头部end -->
	<div class="c"></div>
	<div class="wp">
		<div class="jz-cont" style="position: relative;">
			<Div style="position: absolute; right: 0; top: 0; z-index: 9999;">
				<shuidizhibowrapper class="clearfix" data-width="277"
					data-sn="36072754901,36072754822,36072748032"></shuidizhibowrapper>
				<script src="http://jia.360.cn/listbuilder/index.js" charset="utf-8"></script>
			</Div>
			<h2 class="wow fadeInUp" data-wow-delay="0s">CONTACT</h2>
			<span class="wow fadeInUp" data-wow-delay="0.2s">追求新颖时尚办公环境是马氏家具集团十余年发展历程中沉淀和积累的文化价值</span>
			<p class="wow fadeInUp" data-wow-delay="0.4s">国际贸易部：110-10086
				fox1172893066@qq.com</p>
			<p class="wow fadeInUp" data-wow-delay="0.6s">国内销售部：110-10086
				fox1172893066@qq.com</p>
			<div class="col-l wow fadeInLeft">
				<h4>
					<font color="#666">联系方式</font>
				</h4>
				<p>电话：100-10086</p>
				<p>邮箱：fox1172893066@qq.com</p>
			</div>
			<div class="col-r wow fadeInRight">
				<h4>
					<font color="#666">湖南马氏家具集团家具制造有限公司</font>
				</h4>
				<p>厂部地址：湖南省工学院</p>
				<p>厂部地址：湖南省工学院</p>
				<p>展厅地址：湖南省工学院</p>
			</div>
		</div>
	</div>
	<div class="h20"></div>
	<div class="h20"></div>

	<!-- 底部 -->
	<div id="fd">

		<div class="wp" style="background: #333333 !important;">
			<div class="l" style="height: 10px;">
				<p>
					<span>Copyright © LightseaBlue</span><br>
				</p>
			</div>
		</div>
	</div>
	<!-- 底部 end-->
	<style>
.tt {
	width: 30px;
	height: 30px;
	display: block;
	position: fixed;
	bottom: 100px;
	right: 10px;
	background-position: center;
	background-repeat: no-repeat;
	background-image: url(images/1.png);
	z-index: 9999999999999999999999999999999999999
}

.tt:hover {
	background-image: url(images/2.png);
}

#totop {
	position: fixed;
	width: 30px;
	height: 30px;
	background: url(images/1.png) no-repeat;
	right: 10px;
	bottom: 100px;
	z-index: 999;
	display: none;
}

#totop:hover {
	background-image: url(images/2.png);
}
</style>

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/lib.js"></script>
	<script type="text/javascript" src="js/jquery.SuperSlide.js"></script>

</body>

</html>
