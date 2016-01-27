<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="${pageContext.request.contextPath}/header" flush="true" />
	</head>
	<body data-theme="default">
    <div id="wrapper">
	    <div id="container-content" class="container-content">
	    	<div class="panel">
	        	<div class="panel-body panel-full">
	            	<form role="form" class="form-horizontal">
	                	<div class="form-body">
	                    	<div class="form-group">
	                        	<label class="col-sm-3 to-right" for="borderedEmail">登录姓名</label>
	                        	<div class="col-sm-7">
	                            	<input type="text" id="borderedEmail" class="form-control" placeholder="用户名">
	                         	</div>
	                     	</div>
	                     	<div class="form-group">
	                        	<label class="col-sm-3 to-right" for="borderedPassword">真实姓名</label>
	                         	<div class="col-sm-7">
	                            	<input type="password" id="borderedPassword" class="form-control" placeholder="真实姓名">
	                         	</div>
	                     	</div>
	                     	<div class="form-group">
	                         	<div class="col-sm-7">
	                            	<div class="input-group mb-5">
	                                    <span class="input-group-addon bg-success white">手机号码</span>
	                                    <input type="text" class="form-control" placeholder="手机号码">
	                                </div>
	                         	</div>
	                     	</div>
	                     	<div class="form-group">
	                        	<div class="col-sm-7">
		                        	<div class="input-group mb-5">
	                                    <span class="input-group-addon bg-success white">角色名称</span>
	                                    <select tabindex="-1" class="chosen-select form-control" data-placeholder="Choose a Country" >
											<option value="Afghanistan">Afghanistan</option>
											<option value="Aland Islands">Aland Islands</option>
											<option value="Bahamas">Bahamas</option>
											<option value="Bahrain">Bahrain</option>
			                             </select>
	                                </div>
	                            	<!-- <input type="password" id="phone" class="form-control" placeholder="角色名称"> -->
	                         	</div>
	                     	</div>
	                     	<div class="form-group">
	                        	<div class="col-sm-3 to-center">
	                            	<a id="add" class="btn btn-success btn-icon" href="javascript:save();">
										<span class="fa fa-check r-mar-5"></span>保存
									</a>
									<a id="add" class="btn btn-success btn-icon" href="javascript:cancel();">
						 				<span class="fa fa-times r-mar-5"></span>取消
									</a>
	                         	</div>
	                     	</div>
	                 	</div>
	             	</form>
	         	</div>
	     	</div>
	    </div>
    </div>
</body>
	<script type="text/javascript">
		function save(){
			
		}
		
		function cancel(){
			
		}
	</script>
</html>