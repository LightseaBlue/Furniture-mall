<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>【后台管理系统】</title>
<link rel="stylesheet" type="text/css" href="css/easyui.css">
<link rel="stylesheet" type="text/css" href="css/icon.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

<style type="text/css">
ul, li {
	line-height: 30px;
	list-style: none;
}
</style>
</head>
<body class="easyui-layout">
	<%
		String name=(String)session.getAttribute("admin");
		if(name==null||name.length()<=0){
			response.sendRedirect("login.html");
		}
	%>
	<div data-options="region:'north',title:'管理员<%=name %>,你好！',split:true"
		style="height: 100px;">
		<%
			Integer num = (Integer) application.getAttribute("num");
		%>
		<p>官网历史访问人数为：<%=num%></p>
	</div>



	<div data-options="region:'west',title:'导航栏',split:true"
		style="width: 200px;">
		<div class="easyui-accordion" data-options="fit:true">
			<div title="职工管理">
				<ul>
					<!-- plain  点击显示样式 -->
					<li><a href="addadmin.html" class="easyui-linkbutton btn"
						data-options="plain:true">添加用户</a></li>
					<li><a href="showadmin.html" class="easyui-linkbutton btn"
						data-options="plain:true">浏览用户</a></li>
				</ul>
			</div>
			<div title="商城管理">
				<ul>
					<!-- plain  点击显示样式 -->
					<li><a href="showorder.html" class="easyui-linkbutton btn"
						data-options="plain:true">浏览产品</a></li>
					<li><a href="showd.html" class="easyui-linkbutton btn"
						data-options="plain:true">浏览订单</a></li>
						<li><a href="join.html" class="easyui-linkbutton btn"
						data-options="plain:true">加盟申请</a></li>
				</ul>

			</div>
		</div>
	</div>

	<div data-options="region:'center'" style="background: #eee;">
		<div id="show_center" class="easyui-tabs" data-options="fit:true"></div>
	</div>
	
	<script type="text/javascript">
		$(function () {
			$('#show_center').tabs('add',{
			    title:'首页',
			    <!--内容-->
			    content:'',
			    <!--关闭按钮-->
			    closable:false,
			    <!--添加图片设置响应内容-->
			    tools:[{
					iconCls:'icon-mini-refresh',
					handler:function(){
						alert('refresh');
					}
			    }]
			});
		});
		
			$('.btn').click(function () {
				var href=$(this).attr('href');
				console.log(href)
				<!--$('#show_center').panel('refresh',href);-->
				//文本内容
				var name=$(this).html();
				if($('#show_center').tabs('exists',name)){
					$('#show_center').tabs('select',name);
				}else{
					$('#show_center').tabs('add',{
					    title:name,
					   	href:href,
					  	closable:true,
					   	fit:true,
					    tools:[{
							iconCls:'icon-mini-refresh',
							handler:function(){
								alert('refresh');
							}
					    }]
					});
				}
				return false;
			});
		
		</script>


</body>
</html>
