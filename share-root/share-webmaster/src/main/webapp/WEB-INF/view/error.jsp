<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="${pageContext.request.contextPath}/header" flush="true" />
	</head>
	<body data-theme="default" class="error-500">
	    <div class="error-top animated bounce">
	        <div class="row-fluid">
            	<div class="alert alert-success">
					<button type="button" class="close" data-dismiss="alert">&times;</button>
                    <h4><spring:message code="error.title" /></h4>
                    <spring:message code="error.server" />
                 </div>
             </div>
	    </div>
	    <div class="error-bottom">
	        <span class="post-error-code">
	            Internal Server Error
	        </span>
	        <span class="help">
	            <p>
	                We are sorry, but something went really wrong and we are working on it right now.
	            </p>
	            <form action="index.html">
	                <div class="input-group">
	                    <span class="search-input-icon">
	                        <input id="search-input" 
	                               class="search-input"
	                               type="text" 
	                               placeholder="Search...">
	                        <i class="fa fa-search search-icon"></i>
	                    </span>
	                    <span class="input-group-btn">
	                        <button class="btn btn-inverse" type="button">Go!</button>
	                    </span>
	                </div>
	            </form>
	            <p>
	                Go to our <a href="index.html">home page</a> or go back to 
	                <a href="#" onclick="window.history.back()">previous page</a>
	            </p>
	        </span>
	    </div>
	</body>
</html>