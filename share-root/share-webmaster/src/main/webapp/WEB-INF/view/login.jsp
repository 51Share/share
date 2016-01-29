<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="${pageContext.request.contextPath}/res/css/login/H-ui.min.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/res/css/login/H-ui.login.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/res/css/login/style.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/res/css/login/iconfont.css" rel="stylesheet" type="text/css" />
	<link rel="icon" href="${pageContext.request.contextPath}/res/images/favicon.ico" type="images/x-icon" />
	<title><spring:message code="system.name" /></title>
  </head>
  <body>
	<div id="loginWraper"  class="loginWraper">
	  <div id="loginform" class="loginBox">
	    <form class="form form-horizontal" action="index.html" method="post">
	      <div class="row cl">
	        <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
	        <div class="formControls col-8">
	          <input id="userName" name="userName" type="text" placeholder="用户名,4-20位数字和字母组合" class="input-text size-M">
	        </div>
	      </div>
	      <div class="row cl">
	        <label class="form-label col-3"><i class="Hui-iconfont">&#xe60e;</i></label>
	        <div class="formControls col-8">
	          <input id="password" name="password" type="password" placeholder="密 码,6-20位数字和字母组合" class="input-text size-M">
	        </div>
	      </div>
	      <div class="row cl">
	      	<label class="form-label col-3"><i class="Hui-iconfont">&#xe60e;</i></label>
	        <div class="formControls col-8">
	          <input class="input-text size-M" type="text" id="validateCode" name="code" placeholder="验证码" onblur="if(this.value==''){this.placeholder='验证码'}" onclick="if(this.placeholder=='验证码'){this.placeholder='验证码';}" style="width:193px;">
	          <img id="securityCode" src="${pageContext.request.contextPath}/validate/code" onclick="javascript:refreshSecurityCode()" title="看不清，换一张" style="border-radius:8px"> <!-- <a id="kanbuq" href="javascript:refreshSecurityCode();">看不清，换一张</a> --> </div>
	      </div>
	      <div class="row">
	        <div class="formControls col-8 col-offset-3">
	          <label for="online" id="online"><input type="checkbox" name="online">使我保持登录状态</label>
	        </div>
	      </div>
	      <div class="row">
	        <div class="formControls col-2 col-offset-4">
	          <input name="" type="button" onclick="javascript:login();" class="btn btn-block btn-success radius size-M" value="登  录">
	        </div>
	        <div class="formControls col-2 col-offset-0">
	          <input name="" type="button" onclick="javascript:reset();"class="btn btn-block btn-default radius size-M" value="取  消">
	        </div>
	      </div>
	    </form>
	  </div>
	</div>
	<div class="footer"><spring:message code="system.copyright" /></div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/login/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/login/jquery/1.9.1/jquery.tips.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/login/H-ui.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('#loginWraper').find('input').css({'font-style':'oblique','font-weight':'900', 'border-radius':'8px', 'ime-mode':'disabled'});
		$('#online').css({'font-style':'oblique','font-weight':'900'});
	})
	function login(){
		if(check()){
			var userName = $('#userName').val();
			var password = $('#password').val();
			var code = $('#validateCode').val();
			$.ajax({
				type: 'post',
				url: '${pageContext.request.contextPath}/login',
		    	data: {userName:userName,password:password,code:code},
				dataType:'json',      
				cache: false,
				success: function(result){
					if(result && result.code) {
						if(result.code == 201){
							window.location.href='${pageContext.request.contextPath}/index';
						}else if(result.code == 0){
							$('#userName').tips({
								side : 1,
								msg : result.msg,
								bg : '#FF5080',
								time : 15
							});
							$('#userName').focus();
						}else if(result.code == 1){
							$('#validateCode').tips({
								side : 2,
								msg : result.msg,
								bg : '#AE81FF',
								time : 3
							});
							$('#validateCode').focus();
						}else if(result.code == 2){
							$('#userName').tips({
								side : 1,
								msg : result.msg,
								bg : '#FF5080',
								time : 15
							});
							$('#userName').focus();
						}else if(result.code == 3){
							$('#password').tips({
								side : 1,
								msg : result.msg,
								bg : '#FF5080',
								time : 15
							});
							$('#password').focus();
						}
					} else {
						$('#userName').tips({
							side : 1,
							msg : result.msg,
							bg : '#FF5080',
							time : 15
						});
						$('#userName').focus();
					}
				}
			});
		}
	}
	
	function reset(){
		$('#userName').val('');
		$('#password').val('');
	}
	
	function check() {
		if ($('#userName').val() == '') {
			$('#userName').tips({
				side : 2,
				msg : '用户名不得为空',
				bg : '#AE81FF',
				time : 3
			});
			$('#userName').focus();
			return false;
		}else if($('#userName').val().length < 4 || $('#userName').val().length > 20){
			$('#userName').tips({
				side : 2,
				msg : '用户名有误,4-20位数字和字母组合',
				bg : '#AE81FF',
				time : 3
			});
			$('#userName').focus();
			return false;
		}else {
			$('#userName').val($.trim($('#userName').val()));
		}

		if ($('#password').val() == '') {
			$('#password').tips({
				side : 2,
				msg : '密码不得为空',
				bg : '#AE81FF',
				time : 3
			});
			$('#password').focus();
			return false;
		}else if($('#password').val().length < 6 || $('#password').val().length > 20){
			$('#password').tips({
				side : 2,
				msg : '密码有误,6-20位数字和字母组合',
				bg : '#AE81FF',
				time : 3
			});
			$('#password').focus();
			return false;
		}else {
			$('#password').val($.trim($('#password').val()));
		}
		
		if ($('#validateCode').val() == '') {
			$('#validateCode').tips({
				side : 2,
				msg : '验证码不能为空',
				bg : '#AE81FF',
				time : 3
			});
			$('#validateCode').focus();
			return false;
		}else {
			$('#validateCode').val($.trim($('#validateCode').val()));
		}
		
		$('#loginbox').tips({
			side : 1,
			msg : '正在登录 , 请稍后 ...',
			bg : '#68B500',
			time : 1
		});

		return true;
	}
	
	function refreshSecurityCode(){
		var img=$('#securityCode').attr('src');
		$('#securityCode').attr('src',img+'?time='+(new Date()).valueOf());
	}
	</script> 
</body>
 </html>