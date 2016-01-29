<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body data-theme="default">
		<%-- <nav id="sidebar-nav" class="sidebar-nav">
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
		</nav> --%>
		 <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <div class="sk-spinner sk-spinner-double-bounce">
                                <span class="sk-double-bounce1"><img alt="image" class="img-circle" src="/res/images/profile_small.jpg" /></span>
                                <span class="sk-double-bounce2"><img alt="image" class="img-circle" src="/res/images/profile_small.jpg" /></span>
                                <span class="sk-double-bounce3"><img alt="image" class="img-circle" src="/res/images/profile_small.jpg" /></span>
                            </div>
                           <!--  <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">Beaut-zihan</strong></span>
                                <span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a class="J_menuItem" href="form_avatar.html">修改头像</a>
                                </li>
                                <li><a class="J_menuItem" href="profile.html">个人资料</a>
                                </li>
                                <li><a class="J_menuItem" href="contacts.html">联系我们</a>
                                </li>
                                <li><a class="J_menuItem" href="mailbox.html">信箱</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="login.html">安全退出</a>
                                </li>
                            </ul> -->
                        </div>
                    </li>
                    <!-- <li>
                        <a class="J_menuItem" href="#"><i class="fa fa-columns"></i> <span class="nav-label">工作菜单</span></a>
                    </li> -->
                    <c:forEach items="${session_share_key.menu}" var="menu" varStatus="m">
                    	<li>
                    		<a href="${menu.key.url}">
                            	<i class="${menu.key.icon}"></i>
                            	<span class="nav-label">${menu.key.name}</span>
                            	<span class="fa arrow"></span>
                        	</a>
			                <c:if test="${fn:length(menu.value) > 0}">
	                        	<ul class="nav nav-second-level">
	                        		<c:forEach items="${menu.value}" var="childen" varStatus="md">
		                            	<li>
		                                	<a class="J_menuItem" href="${childen.url}" data-index="0">${childen.name}</a>
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