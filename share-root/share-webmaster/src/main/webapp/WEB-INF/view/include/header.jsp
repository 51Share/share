<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="icon" href="${pageContext.request.contextPath}/res/images/favicon.ico" type="images/x-icon" />
		<title><spring:message code="system.name" /></title>
		
		<!-- css import-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/bootstrap.min.css?v=3.3.6">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/font-awesome.min.css?v=4.4.0">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/animate.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/sweetalert.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/iCheck/icheck.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.min.css?v=4.1.0">
		
		<!-- js import-->
		<script src="${pageContext.request.contextPath}/res/js/jquery.min.js?v=2.1.4"></script>
		<script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js?v=3.3.6"></script>
		<script src="${pageContext.request.contextPath}/res/js/jquery.metisMenu.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/jquery.slimscroll.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/plugins/layer/layer.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/hplus.min.js?v=4.1.0"></script>
		<script src="${pageContext.request.contextPath}/res/js/contabs.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/pace.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/sweetalert.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/js/iCheck/icheck.min.js"></script>
		<script src="${pageContext.request.contextPath}/res/plugins/validate/jquery.validate.min.js"></script>
    	<script src="${pageContext.request.contextPath}/res/plugins/validate/messages_zh.min.js"></script>
	</head>
</html>