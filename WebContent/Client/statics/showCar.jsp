<%@page import="com.mdy.Po.XtypePo"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.mdy.Po.CarPo"%>
<%@page import="java.util.List"%>
<%@page import="com.mdy.Dao.CarDao"%>
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
		<link rel="stylesheet" type="text/css" href="css/carts.css" />
		<link rel="stylesheet" type="text/css" href="css/reset.css" />
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
				<h2 class="g-tit-j1 wow fadeInUp">Shopping Cart</h2>
				<h4 class="g-tit-j2 wow fadeInUp">─ 购物车 ─</h4>
				</div>
			

        <section class="cartMain">
        <div class="cartMain_hd">
            <ul class="order_lists cartTop">
                <li class="list_chk">
                    <!--所有商品全选-->
                    <input type="checkbox" id="all" class="whole_check">
                    <label for="all"></label>
                    全选
                </li>
                <li class="list_con">商品信息</li>
                <li class="list_info">商品参数</li>
                <li class="list_price">单价</li>
                <li class="list_amount">数量</li>
                <li class="list_sum">金额</li>
                <li class="list_op">操作</li>
            </ul>
        </div>


		<%
			CarDao dao=new CarDao();
            List<CarPo> list=dao.findcar(name,null);
            Map<String,Object> size=new HashMap<String,Object>();
            for(CarPo p:list){
            	size.put(p.getT_name(), p.getT_name());
            }
            int zz=1;
            char yy='a';
            for(Object c:size.values()){
		%>


        <div class="cartBox">
            <div class="shop_info">
            
				<div class="all_check">
                    <!--店铺全选-->
                    <input type="checkbox" id="shop_<%=yy %>" class="shopChoice">
                    <label for="shop_<%=yy %>" class="shop"></label>
                </div>
                
                <div class="shop_name">
                    品牌：<a href="findp.jsp?type=<%=c%>" class="typea"><%=c %></a>
                </div>
            </div>
            <div class="order_content">
                <%
                List<CarPo> list1=dao.findcar(name, c.toString());
                for(CarPo po:list1){
                	String pname=po.getX_name();
                	XtypePo xt=dao.findPbyname(pname);
                %>
                <ul class="order_lists">
                    <li class="list_chk">
                        <input type="checkbox" id="checkbox_<%=zz %>" class="son_check">
                        <label for="checkbox_<%=zz%>"></label>
                    </li>
                    <li class="list_con">
                        <div class="list_img"><a href="detailedp.jsp?name=<%=po.getX_name()%>"><img src="<%=xt.getX_img() %>" style="height: 90px;width: 90px" alt=""></a></div>
                        <div class="list_text"><a class="pname" href="detailedp.jsp?name=<%=po.getX_name()%>"><%=po.getX_name() %></a></div>
                    </li>
                    <li class="list_info">
                        <p>尺寸：<%=xt.getX_size() %></p>
                    </li>
                    <li class="list_price">
                        <p class="price">￥<%=xt.getX_sj() %></p>
                    </li>
                    <li class="list_amount">
                        <div class="amount_box">
                            <a href="javascript:;" class="reduce reSty">-</a>
                            <input type="text" value="<%=po.getC_num() %>" class="sum">
                            <a href="javascript:;" class="plus">+</a>
                        </div>
                    </li>
                    <li class="list_sum">
                        <p class="sum_price">￥<%=(Double.parseDouble(xt.getX_sj().toString()))* (Double.parseDouble(po.getC_num().toString())) %></p>
                    </li>
                    <li class="list_op">
                        <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </li>
                </ul>
               
               <%
   			zz++;} %>
            </div>
        </div>


		<%
		yy++;
            } %>


        
        
        
        <!--底部-->
        <div class="bar-wrapper">
            <div class="bar-right">
                <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
                <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
                <div class="calBtn"><a href="javascript:addr();">结算</a></div>
            </div>
        </div>
   </section>
    <section class="model_bg"></section> 
    <section class="my_model">
        <p class="title">删除宝贝<span class="closeModel">X</span></p>
        <p>您确认要删除该宝贝吗？</p>
        <div class="opBtn"><a href="javascript:deletep('<%=name %>');" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
    </section>
    
     <section class="my_mode2" id="one">
        <p class="title">修改地址<span class="closeMode2">X</span></p>
        <p>请填写邮寄地址：</p>
        <input type="text" id="add" style="margin-top: 18px">
       <div id="addb"><a href="javascript:finish('<%=name %>');" class="dialog-sureadd">确定</a></div>
       	
    </section>
    
	
    <script src="js/jquery.min.js"></script>
    <script src="js/carts.js"></script>
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
        //显示添加地址框
        function addr() {
        		$('#one').fadeIn(300);
		}
        //获取点击的商品名
        $('.delBtn').click(function () {
 	        pname1 = $(this).parents('.order_lists').find('.pname')[0].innerText;
 	        
 	   });
        //产品删除
       function deletep(name) {
    	   console.log(pname1)
			$.post("../../car.action",{
				op:"deletep",
				uname1:name,
				pname1:pname1,
				jj:"1"
			},function(data){
				alert(data);
			})
		}
        //完成支付
        function finish(uname) {
        	var addr=$('#add').val();
        	var nums=new Array();
        	var pname=new Array();
        	
        	if(addr!=""){
        		var x=0;
        		$('.son_check:checked').parents('.order_lists').find('.sum').each(function (i,n) {
    				nums[i]=n.value;
    			});
    			$('.son_check:checked').parents('.order_lists').find('.pname').each(function (i,n) {
    				pname[i]=n.innerText;
    			});
    			var num=JSON.stringify(nums);
    			var pnames=JSON.stringify(pname);
    			alert("长度："+nums.length);
    			alert(uname);
    				$.post("../../car.action",{
    					op:"finish",
    					uname:uname,
    					pname:pnames,
    					addr:addr,
    					num:num
    				},function(data){
    					alert(data);
    					if(data!=1){
    						alert("失败");
    					}else{
    	    				window.location.reload();
    						
    					}
    				})
        	$('#one').fadeOut(300);	
        	}
		}
        
        
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
