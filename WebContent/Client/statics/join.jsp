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
		String name = (String) session.getAttribute("user");
		if (name == null || name.length() <= 0) {
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
			<p class="l"><%=name%>,马氏家具集团欢迎你!
			</p>
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
				<a href="index.jsp"><img src="img/logo1.png"
					style="height: 70px; width: 134px"></a>
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
	<div class="netwrok blfff fix">
		<!-- <div class="cont-ban jg-ban7"></div>-->
		<div class="c"></div>
		<div class="m-server">
			<div class="wp">
				<h2 class="g-tit-j1 wow fadeInUp">JOIN SERVICE</h2>
				<h4 class="g-tit-j2 wow fadeInUp">─ 加盟服务 ─</h4>
				<div class="col-l wow fadeInLeft">
					<strong>加盟政策:</strong>
					<div class="txt">
						<p>马氏家具集团愿与您共享未来，我们希望您:</p>
						<p>1、充分认可马氏家具集团的品牌价值理念，严格执行马氏家具集团品牌加盟政策，服从公司总部的统一管理；</p>
						<p>2、具备良好的公司信誉，具备完善、稳定的自身销售渠道和强大的销售能力；</p>
						<p>3、有足够的资金实力和信心确保完成制定的销售目标；</p>
						<p>4、具备办公家具类产品或区域市场推广销售经验；</p>
						<p>5、经公司考察具有开设展厅要求的场地资源</p>
					</div>
					<strong>加盟支持:</strong>
					<div class="txt">
						<p>为与您实现市场与品牌双赢，我们能为您:</p>
						<p>1、店面选址建议、店面装修指导、软装搭配标准、市场推广设计等全程开店服务；</p>
						<p>2、马氏家具集团360产品营销模式为您提供硬装、软装、配套产品等全方位立体空间的产品销售服务；</p>
						<p>3、项目经理制为您提供专业的店面指导、团队建设及产品培训服务；</p>
						<p>4、专业的订单客服专员为您提供完善无忧的售前咨询、售中跟踪、售后回访等服务。</p>

					</div>
				</div>
				<div class="col-r wow fadeInRight">
					<img src="images/img8.jpg">
				</div>
				<div class="h"></div>
				<h2 class="g-tit-j1 wow fadeInUp">ONLINE AFFILIATE</h2>
				<h4 class="g-tit-j2 wow fadeInUp">─ 在线加盟 ─</h4>
				<h5 class="g-tit-j3 wow fadeInUp">非常感谢您支持马氏家具集团办公家具，意向加盟，请填写一下表格，谢谢合作！</h5>
				<form class=" wow fadeInUp">
					<p>
						<label>公司名称：</label><input class="inp1" type="text" name=""
							id="company"> <label>公司地址：</label><input class="inp2"
							type="text" name="" id="address">
					</p>
					<p>
						<label>公司人员：</label><input class="inp3" type="number" name=""
							id="companyer"><em>名</em> <label>公司销售人员：</label><input
							class="inp3" type="number" name="seller" id="seller"><em>名</em><br><br>
							
						<label>今年销售额： </label><input
							class="inp3" type="number" name="" id="paiming2"><em>万元</em>
					</p>
					
					<p>
						<label>现代理的品牌：</label><input class="inp1" type="text" name=""
							id="brandnew"> <label>曾代理的品牌：</label><input class="inp7"
							type="text" name="" id="brandold">
					</p>
					<p>
						<label>填表人：</label><input class="inp6" type="text" name=""
							id="name"> <label>职位：</label><input class="inp6"
							type="text" name="" id="job"> <label>联系方式：</label><input
							class="inp6" type="text" name="" id="phone">
					</p>
					<input class="btn" type="button" id="fb" value="提交表格"> <input
						type="hidden" name="__hash__"
						value="0439e4c040c50802eb3e2f0fe5cfdf04" />
				</form>
			</div>
		</div>
	</div>
	<!-- 底部 -->
	<div id="fd">

		<div class="wp" style="background: #333333 !important;">
			<div class="l">
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
	<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
	<script>
		$(function() {

			$('#fb').click(
							function() {
								var company = $('#company').val();
								var address = $('#address').val();
								var companyer = $('#companyer').val();
								var seller = $('#seller').val();
								var paiming2 = $('#paiming2').val();
								var brandnew = $('#brandnew').val();
								var brandold = $('#brandold').val();
								var name = $('#name').val();
								var job = $('#job').val();
								var phone = $('#phone').val();

								if (company == "") {
									alert('公司名称不能为空!');
									return false;
								}
								if (address == "") {
									alert('公司地址不能为空!');
									return false;
								}
								if (companyer == "") {
									alert('公司人员不能为空!');
									return false;
								}
								if (seller == "") {
									alert('公司销售人员不能为空!');
									return false;
								}
								if (brandnew == "") {
									alert('现代理品牌不能为空!');
									return false;
								}
								if (brandold == "") {
									alert('曾代理的品牌不能为空!');
									return false;
								}
								if (name == "") {
									alert('填表人不能为空!');
									return false;
								}
								if (phone == "") {
									alert('联系方式不能为空!');
									return false;
								}
								$.post("../../join.action", {
									op:"addjoin",
												company : company,
												address : address,
												companyer : companyer,
												seller : seller,
												paiming2 : paiming2,
												brandnew : brandnew,
												brandold : brandold,
												name : name,
												job : job,
												phone : phone
											},  function(data){
												alert(data);	
												if(data==1){
													window.location.reload(); 
												}
										});
							});
		});
	</script>

</body>

</html>