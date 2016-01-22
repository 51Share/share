<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    			<div id="container-breadcrumb" class="container-breadcrumb">
				    <div class="row">
				        <div class="col-lg-10">
				            <ol class="breadcrumb">
				                <li>
				                    <a href="#">
				                        <i class="fa fa-home"></i> 系统管理
				                    </a>
				                </li>
				                <li class="active">
				                    	管理员管理
				                </li>
				                <li class="v-hidden">
				                    @@sub-section
				                </li>
				            </ol>
				        </div>
				    </div>
				</div>
				<div id="container-content" class="container-content">
	 				<div class="panel">
			            <div class="panel-heading bg-theme-light">
			                <div class="row">
			                    <div class="col-lg-12 pad-v-1">
				                    <a id="add" class="btn btn-success btn-icon" href="javascript:add('/index')">
								         <span class="fa fa-plus r-mar-5"></span>新增
								    </a>
			                    </div>
			                </div>
			            </div>
			            <!-- <div class="panel-alert alert alert-success">
			                 <i class="fa fa-check r-pad-10"></i><a href="#">Click here</a> to set up desktop notifications or configure you account.
			                <button class="close" data-dismiss="alert">×</button>
			            </div> -->
			            <!-- <div class="panel-body pad-v-10 pad-h-20">
			                <div class="row">
			                    <div class="col-lg-8">
			                        <div class="btn-group">
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-refresh"></i></button>
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-star"></i></button>
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-trash-o"></i></button>
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-check"></i></button>
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-tag"></i></button>
			                        </div>                                    
			                    </div>
			                    <div class="col-lg-4 to-right">
			                        <div class="btn-group">
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-angle-left"></i></button>
			                            <button class="btn btn-default btn-bordered btn-s no-v-mar"><i class="fa fa-angle-right"></i></button>
			                        </div>                                    
			                    </div>
			                </div>
			
			            </div> -->
			            <div class="panel-body panel-full">
							<table  class="table table-bg table-hover table-sort">
			                	<thead>
                                    <tr>
                                    	<th></th>
                                        <th>用户名</th>
                                        <th>角色</th>
                                        <th>真实姓名</th>
                                        <th>手机</th>
                                        <th>状态</th>
                                        <th style="width: 30%">操作</th>
                                    </tr>       
                                </thead>
			                	<tbody>
			                		<c:forEach items="${admins}" var="admin" varStatus="status">
			                			<tr>
	                                        <td><label class='option'><input type='checkbox'><span class='checkbox checkbox-light checkbox-theme'></span></label></td>
                             				<td>${admin.name}</td>
                             				<td>${admin.role.name}</td>
                             				<td>${admin.realName}</td>
                             				<td><c:if test="${!empty admin.cellphone}">${fn:substring(admin.cellphone, 0, 3)}****${fn:substring(admin.cellphone, fn:length(admin.cellphone) - 4, fn:length(admin.cellphone))}</c:if></td>
                             				<td>
                            					<c:choose>
                            						<c:when test="${admin.locked == 0}">
                            							<c:if test="${admin.status < 1}">禁用</c:if>
                            							<c:if test="${admin.status > 0}">启用</c:if>
                            						</c:when>
                            						<c:otherwise>
                            							<c:if test="${admin.locked == 1}">锁定</c:if>
                            						</c:otherwise>
                            					</c:choose>
                             				</td>
                             				<td>
                             					<a id="add" class="btn btn-success btn-icon" href="javascript:edit(${admin.id})">
											         <span class="fa fa-pencil r-mar-5"></span>修改
											    </a>
											    <a id="add" class="btn btn-success btn-icon" href="javascript:edit(${admin.id})">
											         <span class="fa fa-trash-o r-mar-5"></span>删除
											    </a>
                             					<c:choose>
                            						<c:when test="${admin.locked == 0}">
                            							<c:if test="${admin.status < 1}">
                            								<a id="add" class="btn btn-success btn-icon" href="javascript:edit(${admin.id})">
														         <span class="fa fa-check r-mar-5"></span>启用
														    </a>
                            							</c:if>
                            							<c:if test="${admin.status > 0}">
                            								<a id="add" class="btn btn-success btn-icon" href="javascript:edit(${admin.id})">
														         <span class="fa fa-times r-mar-5"></span>禁用
														    </a>
                            							</c:if>
                            						</c:when>
                            						<c:otherwise>
                            							<%-- <c:if test="${admin.locked == 1}">锁定</c:if> --%>
                            						</c:otherwise>
                            					</c:choose>
                             				</td>
                                    	</tr>
			                		</c:forEach>
			                	</tbody>
			                </table>
			            </div>
			        </div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
    $(document).ready(function() {
    	$('#container-content').addClass('wp100 animated '+"lightSpeedIn");
    });
    
    function add(url){
    	var index = layer.open({
    		type: 2,
    		title: '管理员新增',
    		content: 'a.jsp'
    	});
    	layer.full(index);
    }
   
	</script>
</html>