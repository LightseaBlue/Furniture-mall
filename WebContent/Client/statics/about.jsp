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
							<a href="gwc.jsp">购物车</a>
						</li>
						<li class="">
							<a href="join.jsp">加盟中心</a>
						</li>
						<li class="">
							<a href="news.jsp">新闻资讯</a>
						</li>
						<li class="">
							<a href="contact.jsp">联系我们</a>
						</li>
					</ul>
						
					
					<div class="menu" style="display: none; ">

						
						
					</div>
					
				</div>
			</div>
		</div>
		<!-- 头部end -->
		<div class="cont-ban jg-ban1"></div>
		<div class="wp">
			<div class="lm-tit01 wow fadeInUp">
				<h3>BRAND POSITIONING MARKET</h3>
				<p>—品牌定位市场—</p>
			</div>
			<div class="lm-txtimg">
				<div class="txt1 l wow fadeInLeft">
					<h3 class="lm-tit02">GENOVA</h3>
					<p>
						湖南马氏家具集团家具制造有限公司为中国家具协会会员单位，是一家集研发、生产、销售及服务于一体的现代化办公家具企业。Genova马氏家具集团秉承“诚信、求实、开拓、卓越”的经营理念，以“创造工作新价值”为品牌核心价值，以精益求精的态度为全球消费者提供专业环保的产品、完美的消费体验、全程无忧的售后服务，以专业化、多元化、国际化的视角将马氏家具集团打造成为国内最具影响力的系统办公家具品牌。
					</p>
				</div>
				<div class="img-l wow fadeInRight"><img src="images/about-p1.jpg" height="373" width="611" alt=""></div>
			</div>
			<div class="c"></div>
			<div class="lm-tit01 wow fadeInUp">
				<h3>BRAND CORE VALUES</h3>
				<p>—品牌核心价值—</p>
			</div>
			<div class="lm-txtimg">
				<div class="txt1 r wow fadeInLeft">
					<h3 class="lm-tit02">GENOVA</h3>
					<p>
						公司以“创造工作新价值”为品牌核心价值，这也是马氏家具集团十余年发展历程中沉淀和积累的企业文化价值观。<br> 人生的价值，即以其人对社会所做的工作为尺度，因此，在马氏家具集团的世界里，办公室不仅仅只是工作的场所，更是其人生价值的见证者。
						<br> 马氏家具集团人将秉承“创造工作新价值”的精神，
						<br> 在自己的工作中努力奋斗实现个人的社会价值，
						<br> 同时在充分满足现代审美与发展的基础上，与时俱进、开拓创新，
						<br> 不断研发设计更适合现代办公空间的办公系统，为消费者打造人生价值的新高度。

					</p>
				</div>
				<div class="img l wow fadeInRight"><img src="images/about-p2.jpg" alt=""></div>
			</div>
			<div class="c"></div>
			<div class="lm-tit01 wow fadeInUp">
				<h3>BRAND EXECUTION POLICY</h3>
				<p>—品牌执行战略—</p>
			</div>
			<div class="lm-txtimg">
				<div class="txt2 wow fadeInUp">
					<p>
						品牌战略是以塑造行业强势品牌为核心目标的企业发展战略，马氏家具集团以十余年的发展经验总结出品牌建设必须提升到企业经营战略的高度，对企业的现在与未来的属性、结构、范围、内容、愿景与管理机制等问题做出明确规划。<br> 马氏家具集团的品牌战略以市场发展为核心，从产品、服务、品牌、传播四个层面全方位的构建品牌核心竞争力，不断提高品牌的附加值，为企业与品牌发展奠定坚实的市场基础。

					</p>
				</div>
				<div class="imgtxt-roll">
					<ul>
						<li class="wow fadeInUp" data-wow-delay="0s">
							<div class="item">
								<em class="border-white"></em>
								<a class="btn"></a>
								<img src="images/20151230155740gjzz.jpg" alt="">
								<p class="p1">
									产品层面 <span>PRODUCT LEVEL</span>
								</p>
								<p class="p2" style="font-size:13px; margin-left:10px;  ">
									-产品线规划与定位<br> -合理的成本与制造工艺
									<br> -标准化与模块化
									<br>
								</p>
							</div>
						</li>
						<li class="wow fadeInUp" data-wow-delay="0.2s">
							<div class="item">
								<em class="border-white"></em>
								<a class="btn"></a>
								<img src="images/20151230155936tefs.jpg" alt="">
								<p class="p1">
									服务层面 <span>SERVICE LEVEL</span>
								</p>
								<p class="p2" style="font-size:13px; margin-left:10px;  ">
									-用户研究与消费者调查<br> -市场营销团队建设指导
									<br> -360销售服务理念
									<br>
								</p>
							</div>
						</li>
						<li class="wow fadeInUp" data-wow-delay="0s">
							<div class="item">
								<em class="border-white"></em>
								<a class="btn"></a>
								<img src="images/20151230155943agng.jpg" alt="">
								<p class="p1">
									品牌层面 <span>BRAND LEVEL</span>
								</p>
								<p class="p2" style="font-size:13px; margin-left:10px;  ">
									-品牌识别性研究<br> -品牌核心价值观
									<br> -品牌与市场有效对话
									<br>
								</p>
							</div>
						</li>
						<li class="wow fadeInUp" data-wow-delay="0.4s">
							<div class="item">
								<em class="border-white"></em>
								<a class="btn"></a>
								<img src="images/20151230155949badw.jpg" alt="">
								<p class="p1">
									传播层面 <span>SPREAD LEVEL</span>
								</p>
								<p class="p2" style="font-size:13px; margin-left:10px;  ">
									-产品展示与店面终端设计<br> -媒体发布与平台推广
									<br> -行业展会塑造强势品牌
									<br>
								</p>
							</div>
						</li>
					</ul>
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