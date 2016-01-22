<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body data-theme="default">
		<%-- <div id="container-messages" class="container-messages">
            <div class="page-alert alert alert-info">
                <button class="close" data-dismiss="alert">×</button>
                <strong>Hello ${session_silverfox_key.admin.realName} </strong>欢迎登陆后台管理系统
            </div>
        </div> --%>
   		<div id="container-navbar" class="container-navbar navbar">
   			<div class="r-container-navbar">
       			<!-- <a id="right-notifier-toggler" class="btn btn-default btn-bordered">
           			<span class="fa fa-bell-o"></span>
           			<span class="badge badge-danger badge-xs upbadges">1</span>
       			</a>
			    <span class="dropdown" id="profile-toggler">
			        <a class="btn btn-default btn-bordered dropdown-toggle" data-toggle="dropdown">
			            <span class="fa fa-magic"></span>
			        </a>
			        Include the theme selector component
			    </span>-->
			    <a class="btn btn-default btn-bordered">
			           	欢迎您 :   ${session_share_key.admin.realName}
			    </a>
			    <a class="btn btn-default btn-bordered" href="javascript:logout()">
			       <span class="fa fa-sign-out r-mar-5"></span>退 出
			    </a>
   			</div>
		</div>
	</body>
	<script type="text/javascript">
		function logout(){
			 swal({
                title: "你确定要退出系统吗？",
                text: "来自系统的消息:",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55 !important",
                confirmButtonText: "退出",
                cancelButtonText: "取消",
                closeOnConfirm: false
              },
              function(){
            	  window.location.href='${pageContext.request.contextPath}/logout';
              });  
		}
	</script>
</html>