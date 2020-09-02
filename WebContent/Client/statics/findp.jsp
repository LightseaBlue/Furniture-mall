<%@page import="com.mdy.Dao.CarDao"%>
<%@page import="com.mdy.Po.XtypePo"%>
<%@page import="java.util.List"%>
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
				<p class="r"><span class="sp2">110-120-10089</span><span
					 class="sp3">fox1172893099@qq.com</span></p>
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
		<div class="ban-news" style="background: white;">
					<video autoplay="autoplay" loop
						style="width:100%; height:100%; ">
						<source src="images/view.mp4"></source>
					</video>
		</div>
		<div class="m-news">
			<div class="wp">
			<%
				
				String type=request.getParameter("type");
			%>
				<h2 class="g-tit-j1 wow fadeInUp">Product Display</h2>
				<h4 class="g-tit-j2 wow fadeInUp">─ <%=type %> ─</h4>
				<!-- 搜索框 -->
				<button style="position: absolute; top: 915px; left: 613px; height: 21px;" id="btnc">查找</button>
				<input type="text" placeholder="找找看......." id="whatp" style="">
				
				<div id="nr">
				<%
				CarDao dao=new CarDao();
				List<XtypePo> list=dao.findbyname(type, null);
				int i=list.size();
				//页数
				Double j=Math.ceil(i/9.0);
				int m=0;
				int n=0;
				if(i<9){
					n=i;
				}else{
					n=9;
				}
				String jj="";
				for(int y=0;y<j;y++){
					if(y==0){
						jj="on";
					}else{
						jj="";
					}
				%>
				<ul class="ul-news <%=jj%>">
					<%
					
					for(int x=m;x<n;x++){
					%>
					<li>
						<a href="detailedp.jsp?name=<%=list.get(x).getX_name()%>">
							<img src="<%=list.get(x).getX_img() %>" style="width: 343.79px; height: 215px">
						</a>
						
						
						<p class="t3"><%=list.get(x).getX_name() %></p>
						<p class="t3">价格:￥<%=list.get(x).getX_sj() %></p>
						<p class="t4">
						<%if(list.get(x).getX_num()>0){ %>
							<a href="javascript:tocar('<%=list.get(x).getX_name()%>','<%=name%>','<%=type%>')">加入购物车</a>
						<%
						}else{
							%>
							抱歉，该商品告罄！！
						<% }%>
							
						</p>
					</li>
				<%
					
				}
				%>
				</ul>
				<%
				m=m+9;
				n=n+9;
				if(n>=i){
					n=i;
				}
				}
				%>
				</div>
				
				
				<div class="h"></div>

				<ul class="jg-tab" id="xb">
				<%
					if(j!=1){
					for(int xx=0;xx<j;xx++){
				%>
					<li class=""></li>

					<%} 
					}%>

					
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
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript">
//加入购物车
function tocar(pname,uname,type) {
	$.post("../../car.action",{
		op:"addcar",
		num:"1",
		uname:uname,
		pname:pname,
		type:type
	},function(data){
		alert(data)
	})
}



//搜索框
$('#btnc').click(function () {
	var nr=$('#whatp').val();
	one="<ul class=\"ul-news on \">\r\n" ; 
	three= "				</ul>";
	two="";
	if(nr!=''){
		$('#nr').empty();
		$('#xb').empty();
		$.post("../../car.action",{
			op:"ssh",
			type:"<%=list.get(0).getT_type() %>",
			name:nr
		},function(data){
			$.each(JSON.parse(data),function(i,n){
					two+="\r\n" + 
					"<li>\r\n" + 
					"<a href=\"detailedp.jsp?name="+n.x_name+"\">\r\n" + 
					"<img src=\""+n.x_img+"\" style=\"width: 343.79px; height: 215px\">\r\n" + 
					"</a>\r\n" + 
					"\r\n" + 
					"<p class=\"t2\">\r\n" + 
					"<a href=\"detail.html\"></a>\r\n" + 
					"</p>\r\n" + 
					"<p class=\"t3\">"+n.x_name+"</p>\r\n" + 
					"<p class=\"t3\">价格:￥"+n.x_sj+"</p>\r\n" + 
					"<p class=\"t4\">\r\n" + 
					"<a href=\"detail.html\">加入购物车</a>\r\n" + 
					"</p>\r\n" + 
					"</li>\r\n" + 
					"\r\n" ;
			});
			newhtml=one+two+three;
			$('#nr').html(newhtml);
		});
		
	}
})
</script>
</html>