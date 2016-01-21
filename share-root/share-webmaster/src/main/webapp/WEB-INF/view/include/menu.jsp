<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body data-theme="default">
		<nav id="sidebar-nav" class="sidebar-nav">
			<div id="sidebar-wrapper" class="sidebar-wrapper" data-background="default">
				<ul class="side-nav-top nav">
					<li class="sidebar-nav-logo">
		                <span class="logo-text"><b>51 Share</b> 爱生活 爱分享</span>
	          		</li>
		            <li class="side-nav-profile-settings" style="display: none;">
		                <ul class="inline-list"></ul>
		            </li>
	      		</ul>
	   			<ul id="side-nav" class="side-nav nav">
	   				<li class="side-nav-group">
	       				<span class="name">工作菜单</span>
	       			</li>
	   				<c:forEach items="${session_share_key.menu}" var="menu" varStatus="m">
		   				<li class="@@activate-ui-elements">
			                <a href="${menu.key.url}">
			                    <i class="${menu.key.icon}"></i> 
			                    <span class="name">${menu.key.name}</span>
			                    <span class="fa expand"></span>
			                </a>
			                <c:if test="${fn:length(menu.value) > 0}">
			                	<ul class="nav nav-second-level collapse">
			                		<c:forEach items="${menu.value}" var="childen" varStatus="md">
			                			<li class="@@activate-components">
		                   					<a href="${childen.url}">
		                   						<i class="${childen.icon}"></i>
		                   						${childen.name}
		                   					</a>
		               					</li>
			                		</c:forEach>
			                	</ul>
			                </c:if>
		            	</li>
	   				</c:forEach>
	   			</ul>
			</div>
		</nav>
	</body>
</html>