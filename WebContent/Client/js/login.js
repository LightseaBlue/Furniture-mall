$(function(){
	var tab = 'account_number';
	// 选项卡切换
	$(".account_number").click(function () {
		$('.tel-warn').addClass('hide');
		tab = $(this).attr('class').split(' ')[0];
		checkBtn();
        $(this).addClass("on");
        $(".message").removeClass("on");
        $(".form2").addClass("hide");
        $(".form1").removeClass("hide");
    });
	// 选项卡切换
	$(".message").click(function () {
		$('.tel-warn').addClass('hide');
		tab = $(this).attr('class').split(' ')[0];
		checkBtn();
		$(this).addClass("on");
        $(".account_number").removeClass("on");
		$(".form2").removeClass("hide");
		$(".form1").addClass("hide");
		//$("#phone").addClass("hide");
		
    });

	$('#num').keyup(function(event) {
		$('.tel-warn').addClass('hide');
		checkBtn();
	});

	$('#pass').keyup(function(event) {
		$('.tel-warn').addClass('hide');
		checkBtn();
	});

	$('#veri').keyup(function(event) {
		$('.tel-warn').addClass('hide');
		checkBtn();
	});

	$('#num2').keyup(function(event) {
		$('.tel-warn').addClass('hide');
		checkBtn();
	});

	$('#veri-code').keyup(function(event) {
		$('.tel-warn').addClass('hide');
		checkBtn();
	});

	// 按钮是否可点击
	function checkBtn()
	{
		$(".log-btn").off('click');
		if (tab == 'account_number') {
			var inp = $.trim($('#num').val());
			var pass = $.trim($('#pass').val());
			if (inp != '' && pass != '') {
				if (!$('.code').hasClass('hide')) {
					code = $.trim($('#veri').val());
					if (code == '') {
						$(".log-btn").addClass("off");
					} else {
						$(".log-btn").removeClass("off");
						sendBtn();
					}
				} else {
					$(".log-btn").removeClass("off");
						sendBtn();
				}
			} else {
				$(".log-btn").addClass("off");
			}
		} else {
			var phone = $.trim($('#num2').val());
			var code2 = $.trim($('#veri-code').val());
			if (phone != '' && code2 != '') {
				$(".log-btn").removeClass("off");
				sendBtn();
			} else {
				$(".log-btn").addClass("off");
			}
		}
	}

//	function checkAccount(username){
//		if (username == '') {
//			$('.num-err').removeClass('hide').find("em").text('请输入账户');
//			return false;
//		} else {
//			$('.num-err').addClass('hide');
//			return true;
//		}
//	}
//
//	function checkPass(pass){
//		if (pass == '') {
//			$('.pass-err').removeClass('hide').text('请输入密码');
//			return false;
//		} else {
//			$('.pass-err').addClass('hide');
//			return true;
//		}
//	}

//	function checkCode(code){
//		if (code == '') {
//			// $('.tel-warn').removeClass('hide').text('请输入验证码');
//			return false;
//		} else {
//			// $('.tel-warn').addClass('hide');
//			return true;
//		}
//	}

//	function checkPhone(phone){
//		var status = true;
//		if (phone == '') {
//			$('.num2-err').removeClass('hide').find("em").text('请输入手机号');
//			return false;
//		}
//		var param = /^1[34578]\d{9}$/;
//		if (!param.test(phone)) {
//			// globalTip({'msg':'手机号不合法，请重新输入','setTime':3});
//			$('.num2-err').removeClass('hide');
//			$('.num2-err').text('手机号不合法，请重新输入');
//			return false;
//		}
//		$.ajax({
//            url: '/checkPhone',
//            type: 'post',
//            dataType: 'json',
//            async: false,
//            data: {phone:phone,type:"login"},
//            success:function(data){
//                if (data.code == '0') {
//                    $('.num2-err').addClass('hide');
//                    // console.log('aa');
//                    // return true;
//                } else {
//                    $('.num2-err').removeClass('hide').text(data.msg);
//                    // console.log('bb');
//					status = false;
//					// return false;
//                }
//            },
//            error:function(){
//            	status = false;
//                // return false;
//            }
//       });
//		return status;
//	}

//	function checkPhoneCode(pCode){
//		if (pCode == '') {
//			$('.error').removeClass('hide').text('请输入验证码');
//			return false;
//		} else {
//			$('.error').addClass('hide');
//			return true;
//		}
//	}
	//验证码事件
	$(".form-data").delegate(".send","click",function () {
		var email = $('#num2').val();
		var reg = /^[\d\w]+@[\d\w]+.com$/;
		var x = email.match(reg);
		if (x != null) {
			var oTime = $(".time"),
			oSend = $(".send"),
			num1 = parseInt(oTime.text()),
			oEm = $(".time em");
		    oSend.hide();
		    oTime.removeClass("hide");
		    var timer = setInterval(function () {
		   	var num2 = num1-=1;
	            oEm.text(num2);
	            if(num2==0){
	                clearInterval(timer);
	                oSend.text("重新发送验证码");
				    oSend.show();
	                oEm.text("60");
	                oTime.addClass("hide");
	            }
	        },1000);
		    
			$.post("../code.action", {
				email : email
			}, function(data) {
				if (data == 2) {
					alert('发送失败，请重试')
				} else {
					num_code = data;
				}
			});
		} else {
			$('.num2-err').removeClass('hide').text('请输入正确的邮箱');
		}
    });
	
	// 登录点击事件
	function sendBtn(){
		if (tab == 'account_number') {
			$(".log-btn").click(function(){
				var name=$('#num').val();
				var pwd=$('#pass').val();
				alert(name);
				alert(pwd);
				$.post("../user.action",{
					op:'login',
					name:name,
					pwd:pwd
				},function(data){
					if(data==1){
						window.location.href="statics/index.jsp";				
					}else{
						$('.tel-warn').removeClass('hide').text('登录失败');
						alert('重试');
					}
				});
			});
		} else {
			$(".log-btn").click(function(){
				var name=$('#num2').val();
				var code=$('#veri-code').val();
				if(code==num_code){
					$.post("../user.action",{
						op:'elogin',
						email:name
					},function(data){
						if(data==1){
							window.location.href="statics/index.jsp";	
						}else{
							alert('暂无该用户，请注册');
						}
					})
				}else{
					
				}
		  });
		} 
	}

	// 登录的回车事件
	$(window).keydown(function(event) {
    	if (event.keyCode == 13) {
    		$('.log-btn').trigger('click');
    	}
    });

	



});