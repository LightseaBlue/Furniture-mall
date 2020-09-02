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
		<div class="ban-news"></div>
		<div class="m-news">
			<div class="wp">
				<h2 class="g-tit-j1 wow fadeInUp">Company News</h2>
				<h4 class="g-tit-j2 wow fadeInUp">─ 公司动态 ─</h4>
				<ul class="ul-news on">

					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-08-24</p>
						<p class="t2">
							<a href="detail.jsp">【马氏家具集团】奇趣童真，欢乐亲子...</a>
						</p>
						<p class="t3">为了培养孩子与家长们的亲子感情，通过孩子和家长牵手一起游戏，感受快乐的同时，能和爸爸妈妈共同度过一个愉快而又难忘的时光，马氏家具集团特举办“七彩假日”亲子活动，让我们来看看当时快...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-06-22</p>
						<p class="t2">
							<a href="detail.jsp">精彩继续 马氏家具集团家人在一起！...</a>
						</p>
						<p class="t3">经过第一天的学习，学员对马氏家具集团的品牌发展策略以及马氏家具集团产品体系有了较为深入的认识，各学习小组成员也在不断交流与讨论过程中逐渐变得融洽，小组成员之间活跃的氛围、积极的态度为这次...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-06-21</p>
						<p class="t2">
							<a href="detail.jsp">2017马氏家具集团精英培训赛开班啦！...</a>
						</p>
						<p class="t3">2017年6月20日，马氏家具集团2017年度精英培训赛正式开班啦！来自全国各地的加盟店店长及销售精英们齐聚杭州马氏家具集团总部展厅，怀着求学求知的心态开始了为期5天的学习之旅。...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
				</ul>
				<ul class="ul-news">

					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-04-06</p>
						<p class="t2">
							<a href="detail.jsp"> 【马氏家具集团家具】2017年家博会风采回顾...</a>
						</p>
						<p class="t3">第39届中国（广州）国际家具博览会，于广州琶洲 03月31日完美落幕。这场全球设计与时尚的盛宴再次吸引了世界的目光，Genova已连续多年参展，经过长期对休闲办公的探索研...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-04-01</p>
						<p class="t2">
							<a href="detail.jsp">【马氏家具集团家具】这几天有点“上火”...</a>
						</p>
						<p class="t3">2017年3月31日，今天是第39届中国（广州）家具博览会展会的最后一天，马氏家具集团作为国内办公家具的佼佼者，以精致的展示空间与时尚优雅的产品细节成为展会上一道靓丽的风景，慕名...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-03-29</p>
						<p class="t2">
							<a href="detail.jsp">马氏家具集团家具--2017年第39届中国（广州）国际...</a>
						</p>
						<p class="t3">2017年3月28日，第39届中国（广州）国际家具博览会正式拉开帷幕。 这是一场家具界的饕餮盛宴，汇集国际众多优质品牌和专业观众，堪称国际顶级家具展。 浙江马氏家具集团家具制...
						</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
				</ul>
				<ul class="ul-news">

					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-03-23</p>
						<p class="t2">
							<a href="detail.jsp">Genova马氏家具集团的蜕变 坚持变革创新 稳固发展...</a>
						</p>
						<p class="t3">自2005年以来，马氏家具集团一直秉承“诚信、求实、开拓、卓越”的经营理念，以“创造工作新价值”为品牌核心诉求，凭借优质的产品，完善的服务，以及设计的创新，马氏家具集团赢得了客户及社会广...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2017-03-21</p>
						<p class="t2">
							<a href="detail.jsp">2017广州国际家具博览会 | 马氏家具集团强势来袭...</a>
						</p>
						<p class="t3">第39届中国（广州）国际家具博览会CIFF 2017展会时间：2017年3月28日-31日展会地点：广州琶洲 • 广交会展馆&保利世贸博览馆 马氏家具集团展位号：A区S4.2 B...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2016-01-21</p>
						<p class="t2">
							<a href="detail.jsp">进击的加盟店--2016年的开门炮...</a>
						</p>
						<p class="t3">最近在朋友圈讨论的最热烈的话题无疑是即将来临的杭城-10℃，为此大家都在呼吁“毛衣毛裤齐上阵，蔬菜水果囤起来”，积极做好各种抗寒抗冻的防护措施。然而在这波号称历史最低温的...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
				</ul>
				<ul class="ul-news">

					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2016-01-05</p>
						<p class="t2">
							<a href="detail.jsp">马氏家具集团2015年终盘点大集合...</a>
						</p>
						<p class="t3">2015年12月31日是羊年的最后一天，公司进行了每年常规的年度盘点，盘点范围包括公司全部原材料、车间在制品、成品、工具、设备等有价资产。...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>
					<li>
						<a href="detail.jsp">
							<img src="images/20170824145154bdvf.jpg">
						</a>
						<p class="t1">2015-11-11</p>
						<p class="t2">
							<a href="detail.jsp">双11太火！马氏家具集团家具举行大规模消防演习！...</a>
						</p>
						<p class="t3">在我国，11月9日的月日数恰好与火警电话号码119相同，而且这一天前后，正值风干物燥、火灾多发之际，全国各地都在紧锣密鼓地开展冬季防火工作。为增加全民的消防安全意识，使“...</p>
						<p class="t4">
							<a href="detail.jsp">Read More</a>
						</p>
					</li>

				</ul>

				<div class="h"></div>

				<ul class="jg-tab">
					</li>
					</li>
					<li class=""></li>

					</li>
					</li>
					</li>
					<li class=""></li>

					</li>
					</li>
					</li>
					<li class=""></li>

					</li>
					</li>
					</li>
				</ul>
				<div class="h"></div>
			</div>
			<div class="h20 pt20"></div>
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
            $(function(){
				$('.jg-tab li').eq(0).addClass('on');
                $('.m-news .jg-tab li').click(function(){
                    $('.m-news .jg-tab li').siblings().removeClass('on');
                    $(this).addClass('on');
                    $('.m-news .ul-news').siblings().removeClass('on');
                    $('.m-news .ul-news').eq($(this).index()).addClass('on');
                });
            });
        </script>


	</body>

</html>