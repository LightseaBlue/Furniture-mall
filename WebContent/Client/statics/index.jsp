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
						<li class="cp">
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
                     <!-- 下拉提示框 -->
					<div class="menu" style="display: none; ">
						
					</div>

				</div>
			</div>
		</div>
		<!-- 头部end -->
		<div id="banner" class="fullSlide">
			<div class="bd">
				<ul>
					<li style="background:url(images/20160421111412.jpg) no-repeat center">
						<a href="#"></a>
					</li>
					<li style="background-image: url(images/20170223163537.jpg); display: none; background-position: 50% 50%; background-repeat: no-repeat no-repeat; ">
						<a href="#"></a>
					</li>
					<li style="background-image: url(images/20170802091435.jpg); display: none; background-position: 50% 50%; background-repeat: no-repeat no-repeat; ">
						<a href="#"></a>
					</li>
				</ul>
			</div>
			<div class="hd">
				<ul>
					<li class="on">1</li>
					<li>2</li>
					<li>3</li>
				</ul>
			</div>
		</div>
		<div class="c"></div>
		<div class="m-ipro wow fadeInUp animated">
			<div class="ipro-wp wow fadeInUp animated">
				<div id="scroll-list" style="padding-left:50px;">
					<a href="javascript:;" class="prev pr"><img src="images/prev.png"></a>
					<a href="javascript:;" class="next pr"><img src="images/next.png"></a>
					<div class="tempWrap">
						<ul class="ul-pics fix pr MENU" style="width: 3456px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -1152px; ">
							<% 
					DbHelper db=new DbHelper();
					String sql=" SELECT * from f_type";
					List<TypePo> list=db.findMutil(sql, null, TypePo.class);
					for(TypePo po:list){
						String type=po.getT_name();
					
				%>
				
							<li style="float: left; width: 356px; ">
								<a href="findp.jsp?type=<%=type %>" class="img"><img src="<%=po.getT_img() %>" alt=""></a>
								<div class="aico">
									<p>
										<a href="findp.jsp?type=<%=type %>" class="i-lk"></a>
									</p>
								</div>
							</li>
							<%} %>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="h20"></div>
		<div class="wp fix">
			<div class="col-1 l">
				<div class="g-tit wow fadeInUp animated">
					<strong>模范旗舰店</strong>
				</div>
				<div class="i-slide-txt wow fadeInUp animated">
					<div class="bd">
						<div class="tempWrap">
							<ul class="ul-imgtxt" style="height: 1728px; position: relative; padding: 0px; margin: 0px; top: -576px; ">
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321150124txfb.jpg"></a>
									<h5><a href="#">香河马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321100729brsn.jpg"></a>
									<h5><a href="#">北京马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321150616dnic.jpg"></a>
									<h5><a href="#">哈尔滨马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321151020reda.jpg"></a>
									<h5><a href="#">长沙马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321144835gxje.jpg"></a>
									<h5><a href="#">石家庄马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321152237wcim.jpg"></a>
									<h5><a href="#">郑州马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321150124txfb.jpg"></a>
									<h5><a href="#">香河马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321100729brsn.jpg"></a>
									<h5><a href="#">北京马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321150616dnic.jpg"></a>
									<h5><a href="#">哈尔滨马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321151020reda.jpg"></a>
									<h5><a href="#">长沙马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321144835gxje.jpg"></a>
									<h5><a href="#">石家庄马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321152237wcim.jpg"></a>
									<h5><a href="#">郑州马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321150124txfb.jpg"></a>
									<h5><a href="#">香河马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321100729brsn.jpg"></a>
									<h5><a href="#">北京马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321150616dnic.jpg"></a>
									<h5><a href="#">哈尔滨马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321151020reda.jpg"></a>
									<h5><a href="#">长沙马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321144835gxje.jpg"></a>
									<h5><a href="#">石家庄马氏家具集团</a></h5>
									<p></p>

								</li>
								<li style="height: 75px; ">
									<a href="#"><img style="width:78px; height:55px;" src="images/20160321152237wcim.jpg"></a>
									<h5><a href="#">郑州马氏家具集团</a></h5>
									<p></p>

								</li>
							</ul>
						</div>
					</div>
					<div class="h"></div>
					<p class="imgtxt-a">
						<a href="javascript:;" class="prev imgtxt-s"></a>
						<a href="javascript:;" class="next imgtxt-x"></a>
					</p>
				</div>
			</div>
			<div class="col-2 l">
				<div class="g-tit wow fadeInUp animated">
					<strong>新闻中心</strong>
				</div>
				<ul class="ul-news wow fadeInUp animated">
					<li>
						<span style="width:45px; padding-left:0px; text-align:center"><strong>24</strong><em>2017-08</em></span>
						<h5><a href="detail.jsp">【马氏家具集团】奇趣童真，欢乐亲子...</a></h5>
						<p>为了培养孩子与家长们的亲子感情，通过孩子和家长牵手一起游戏，感受快乐的同时，能和</p>
					</li>
					<li>
						<span style="width:45px; padding-left:0px; text-align:center"><strong>27</strong><em>2017-06</em></span>
						<h5><a href="#">CCD杭州钓鱼台项目获美国Hosp...</a></h5>
						<p>全球负有盛誉的室内设计杂志HospitalityDesign《酒店设计》，于美国</p>
					</li>
					<li>
						<span style="width:45px; padding-left:0px; text-align:center"><strong>22</strong><em>2017-06</em></span>
						<h5><a href="#">精彩继续 马氏家具集团家人在一起！...</a></h5>
						<p>经过第一天的学习，学员对马氏家具集团的品牌发展策略以及马氏家具集团产品体系有了较为深入的认识，各</p>
					</li>
				</ul>
			</div>
			<div class="col-3 r">
				<div class="g-tit wow fadeInUp animated">
					<strong>关于马氏家具集团</strong>
				</div>
				<div class="m-about wow fadeInUp animated">
					<p>浙江马氏家具集团家具制造有限公司，近年来迅速成长为国内较具规模的办公家具生产企业之一。 马氏家具集团生产基地设在环境生态优雅的杭州崇贤北庄工业园区，具备现代 化的生产基地一流的 成套生产设备、完整而有序的流水线生产系统...
					</p>
					<a href="about.jsp">Read More</a>
				</div>
				<div class="h20"></div>
				<div class="m-email wow fadeInUp animated">
					<p>马氏家具集团最新资讯推送</p>
					<p><input type="text" placeholder="YouEmail Adress"></p>
					<p><input type="submit" value="订阅" class="btn-sub"></p>
				</div>
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
			<script type="text/javascript">
				jQuery("#scroll-list").slide({
					mainCell: "ul",
					effect: "leftLoop",
					autoPlay: false,
					vis: 3,
					scroll: 1,
					trigger: "click"
				});
				jQuery(".i-slide-txt").slide({
					mainCell: ".bd ul",
					effect: "topLoop",
					autoPlay: false,
					vis: 3,
					scroll: 1,
					trigger: "click"
				});
				jQuery(".fullSlide").slide({
					titCell: ".hd ul",
					mainCell: ".bd ul",
					effect: "fade",
					autoPlay: false,
					autoPage: true,
					trigger: "click"
				});
			</script>

	</body>

</html>
