<%@page import="com.mdy.Po.TypePo"%>
<%@page import="java.util.List"%>
<%@page import="com.mdy.DB.DbHelper"%>
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
				<p class="r"><span class="sp2">110-120-10086</span><span
					 class="sp3">fox1172893066@qq.com</span></p>
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
						<li class="">
							<a href="index.jsp">首页</a>
						</li>
						<li class="">
							<a href="about.jsp">关于马氏家具集团</a>
						</li>
						<li class="">
							<a href="product.jsp">产品中心</a>
						</li>
						
						<li class="">
							<a href="showCar.jsp">购物车</a>
						</li>
						<li class="">
							<a href="join.jsp">加盟中心</a>
						</li>
						<li class="">
							<a href="news.jsp">新闻资讯</a>
						</li>
						<li class="">
							<a href="towe.jsp">联系我们</a>
						</li>
					</ul>
					
				</div>
			</div>
		</div>
		<!-- 头部end -->
		<div class="f0f0 fix">
			<div class="wp">
				<div class="jz-t2">产品类型</div>
				<ul class="ul-pic ul-pic-a1">
				<% 
					DbHelper db=new DbHelper();
					String sql=" SELECT * from f_type";
					List<TypePo> list=db.findMutil(sql, null, TypePo.class);
					for(TypePo po:list){
						String type=po.getT_name();
				%>
					<li class="">
						<a href="findp.jsp?type=<%=type %>">
							<img src="<%=po.getT_img()%>" alt="">
							<div class="jz-txt">
								<em><%=po.getT_name() %></em>
								<p>|<%=po.getT_js() %>|</p>
								<span>查看此类型</span>
							</div>
						</a>
					</li>
					<%}%>
				</ul>
				<div class="c"></div>
				<div>
					<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
					<style>
						.mod-page {
							padding: 20px 0;
							text-align: center;
							height: 24px;
							zoom: normal;
							font-size: 0
						}
						
						.mod-page a,
						.mod-page span {
							font-size: 12px;
							margin: 0 2px;
							vertical-align: middle;
							border-radius: 2px
						}
						
						.mod-page a {
							display: inline-block;
							padding: 0 14px;
							height: 30px;
							line-height: 30px;
							background: #fff;
							border: 1px solid #e3e3e3;
							text-align: center
						}
						
						.mod-page a.a1 {
							background: url(/Myapp/Common/images/titleBg001.png) 0 -60px no-repeat;
							width: 56px
						}
						
						.mod-page a:hover {
							background: #f1f1f1;
							color: #000;
							text-decoration: none
						}
						
						.mod-page .current {
							display: inline-block;
							padding: 0 14px;
							height: 30px;
							line-height: 30px;
							background: #288ce6;
							color: #fff;
							text-align: center
						}
						
						.mod-page .noPage {
							display: inline-block;
							width: 56px;
							height: 22px;
							line-height: 22px;
							background: url(/Myapp/Common/images/images/titleBg001.png) 0 -60px repeat-x;
							border: 1px solid #e3e3e3;
							text-align: center;
							color: #a4a4a4
						}
					</style>

					<div class="comdiv mod-page">

					</div>

				</div>
				<!-- <div class="txt-loading">loading...</div>-->
				<div class="h20 pt20"></div>
			</div>
		</div>
		<!-- 底部 -->
		<div id="fd">
		
			<div class="wp" style="background: #333333 !important; ">
				<div class="l">
					<p><span>Copyright © LightseaBlue</span><br></p>
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