<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="${pageContext.request.contextPath}/header" flush="true" />
	</head>
	<body data-theme="default">
		<div id="wrapper">
			<jsp:include page="${pageContext.request.contextPath}/menu" flush="true" />
			<div id="container-wrapper" class="container-wrapper">      
    			<jsp:include page="${pageContext.request.contextPath}/navbar" flush="true" />
    			<jsp:include page="${pageContext.request.contextPath}/themes" flush="true" />
				<div id="container-content" class="container-content">
	 				
	 				<%-- <jsp:include page="${pageContext.request.contextPath}/system/admin/list" flush="true" />  --%>             
				</div>
			</div>
		</div>
	</body>
</html>