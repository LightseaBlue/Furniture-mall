<%@page import="com.mdy.Po.XtypePo"%>
<%@page import="com.mdy.Dao.CarDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
		<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
		<script src="js/jquery.min.js"></script>
		<script src="js/imagezoom.js"></script>
		
		  <script defer src="js/jquery.flexslider.js"></script>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		
		<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
		  $('.flexslider').flexslider({
		    animation: "slide",
		    controlNav: "thumbnails"
		  });
		});
		</script>
		
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
	<body>
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
				<div class="jz-t2">产品详细</div>
				
				<%
					String name1=request.getParameter("name");
					CarDao dao=new CarDao();
					XtypePo po=dao.findPbyname(name1);
				%>
					<div class="single-grids">
								
							<div class="col-md-4 single-grid"  style="padding-left: 0px; padding-right: 30px;">		
								<div class="flexslider" style="background: #f0f0f0">
									<ul class="slides">
										<li  style="list-style: none;">
											<div class="thumb-image" style="height:243px"> <img src="<%=po.getX_img() %>" data-imagezoom="true" class="img-responsive" style="height: 243px; width: 100%"> </div>
										</li>
										 
									</ul>
								</div>
							</div>	
							<div class="col-md-4 single-grid simpleCart_shelfItem" style="width:600px">		
								<h3>品牌：<%=po.getX_name() %></h3>
								<h4 style="margin-bottom:5px;font-family:宋体"></h4>
								
								<h4 style="margin-bottom:5px">尺寸：<%=po.getX_size() %></h4>
								
									<h4 style="margin-bottom:5px">详细：<%=po.getX_js() %></h4>
										<p></p>
									<div class="galry">
										
											<h5 class="item_price" style=" color:red">￥<%=po.getX_sj() %></h5>
										
									
										<div class="clearfix">虽贵但有理</div>
									</div>
										<p class="qty"> 数量 :  </p><input id="num" min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small">
									<div class="btn_form">
									<%if(po.getX_num()<=0){ %>
										<h4 style="margin-bottom:5px; margin-top: 10px; color: red">抱歉，该商品告罄！！</h4>
										<%}else{ %>
										<a href="javascript:tocar('<%=po.getX_name() %>','<%=name %>','<%=po.getT_type() %>')" class="add-cart item_add">加入购物车</a>	
										<%} %>
									</div>
									
							</div>
							
							<div class="clearfix"> </div>
						</div>
				
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
		<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
		<script type="text/javascript">
		function tocar(pname,uname,type) {
			var num=$('#num').val();
			$.post("../../car.action",{
				op:"addcar",
				num:num,
				uname:uname,
				pname:pname,
				type:type
			},function(data){
				alert(data)
			})
		}
		
		
		
		
		
		
		
		
		
		
		
		
		</script>
	</body>
</html>
