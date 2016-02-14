<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="${pageContext.request.contextPath}/header" flush="true" />
	</head>
	<body class="gray-bg">
	    <div class="wrapper wrapper-content animated fadeInRight">
	        <div class="col-xs-12">
	            <div class="col-xs-12">
	                <div class="ibox float-e-margins">
	                    <div class="ibox-content">
	                        <form class="form-horizontal m-t" action="${pageContext.request.contextPath}/system/admin/save" id="signupForm">
	                         	<input id="id" name="id" value="${admin.id}" type="hidden">
	                            <div class="form-group">
	                                <label class="col-xs-3 control-label">登录名称：</label>
	                                <div class="col-xs-9" style="margin-top: -10px">
	                                    <input id="name" name="name" value="${admin.name}" class="form-control" type="text" aria-required="true" aria-invalid="false" required="">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-xs-3 control-label">真实姓名：</label>
	                                <div class="col-xs-9" style="margin-top: -10px">
	                                    <input id="realName" name="realName" value="${admin.realName}" class="form-control" type="text" aria-required="true" aria-invalid="false" required="">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-xs-3 control-label">手机号码：</label>
	                                <div class="col-xs-9" style="margin-top: -10px">
	                                    <input id="cellphone" name="cellphone" value="${admin.cellphone}" class="form-control" type="text" aria-required="true" aria-invalid="true" required="">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-xs-3 control-label">登录密码：</label>
	                                <div class="col-xs-9" style="margin-top: -10px">
	                                    <input id="password" name="password"  value="${admin.password}" class="form-control" type="password">
	                                </div>
	                            </div>
	                            <div class="form-group">
	                                <label class="col-xs-3 control-label">确认密码：</label>
	                                <div class="col-xs-9" style="margin-top: -10px">
	                                    <input id="confirm_password" name="confirm_password" value="${admin.password}" class="form-control" type="password">
	                                </div>
	                            </div>
	                            
	                            <div class="form-group">
	                            	<label class="col-xs-3 control-label">选择角色：</label>
	                                <div class="col-xs-9" style="margin-top: -10px">
		                                <select data-placeholder="请选择角色" class="chosen-select" name="role.id" style="width:300px;height:34px" tabindex="2" aria-required="true" aria-invalid="true" required="">
		                                    <option value="" selected="selected" >请选择角色</option>
		                                    <c:forEach items="${roles}" var="role" varStatus="r">
		                                    	<c:if test="${role.id == admin.role.id}">
		                                    		<option value="${role.id}" hassubinfo="true" selected="selected">${role.name}</option>
		                                    	</c:if>
		                                    	<c:if test="${role.id != admin.role.id}">
		                                    		<option value="${role.id}" hassubinfo="true">${role.name}</option>
		                                    	</c:if>
		                                    </c:forEach>
		                                </select>
	                                </div>
		                        </div>
	                            <div class="form-group" style="margin-top: 30px">
		                        	<div class="col-xs-12 center col-xs-offset-3">
		                            	 <button class="btn btn-success btn-icon" type="button"  onclick="javascript:saveInfo()"><span class="fa fa-check r-mar-5"></span>保存</button>
										<a id="add" class="btn btn-success btn-icon col-xs-offset-2" href="javascript:cancel();">
							 				<span class="fa fa-times r-mar-5"></span>&nbsp;取消
										</a>
		                         	</div>
		                     	</div>
	                        </form>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script type="text/javascript">
		function saveInfo(){
			$("#signupForm").validate({
				// 验证规则     
		        rules:{}, 
		        // 验证提示信息（失败时）     
		        message:{},     
		        errorElement: 'span',                                             
		        // 放置错误信息的元素，可以是其他的。     
		        errorPlacement: function(error,element)         
		        // 将错误提示信息放在什么地方     
		        {},     
		        // 成功时执行     
		        success: function(label)     
		        {     
		            label.text(" ").addClass("success");  // 将错误内容清空，一定要是" "有空格，否则IE有问题。            
		        },
		        submitHandler: function(form) {
		        	form.submit();
		        } 
			});
			$("#signupForm").submit();
			
		}
		
		function cancel(){
			var index = parent.layer.getFrameIndex(window.name);
			parent.layer.close(index); 
		}
	</script>
</html>