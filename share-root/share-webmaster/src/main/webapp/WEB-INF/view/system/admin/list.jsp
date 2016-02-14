<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="${pageContext.request.contextPath}/header" flush="true" />
	</head>
	<body data-theme="default">
		<!-- <div id="wrapper"> -->
			<div id="container-wrapper" class="container-wrapper">  
				<div id="container-content" class="container-content">
	 				<div class="panel">
			            <div class="panel-heading bg-theme-light">
			                <div class="row">
			                    <div class="col-lg-12 pad-v-1">
				                    <a id="add" class="btn btn-success btn-icon" href="javascript:add('${pageContext.request.contextPath}/system/admin/add')">
								         <span class="fa fa-plus r-mar-5"></span>新增
								    </a>
			                    </div>
			                </div>
			            </div>
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
                            							<c:if test="${admin.locked == 1}">锁定</c:if>
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
		<!-- </div> -->
	</body>
	<script type="text/javascript">
    $(document).ready(function() {
    	$('#container-content').addClass('wp100 animated '+"lightSpeedIn");
    });
    
   function add(url){
    	var index = layer.open({
    		type: 2,
    		title: '管理员新增',
    		content: [url,'no'],
    		skin: 'layui-layer-lan',
    		area: ['450px', '400px'],
    		move:false,//拖拽
    		moveOut: true,
    		shadeClose: true, //点击遮罩关闭层
    		scrollbar :true, //浏览器滚动条
    		moveType:1,//拖拽效果
    		load:(0,{
    			shade: false
    		})
    	});
    	
    }
   
	</script>
</html> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<jsp:include page="${pageContext.request.contextPath}/header" flush="true" />
	</head>
	<body  class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-xs-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="row">
		                    <div class="col-xs-12 pad-v-1">
			                    <a id="add" class="btn btn-success btn-xs btn-icon" href="javascript:add('${pageContext.request.contextPath}/system/admin/add/0')">
							         <span class="fa fa-plus r-mar-5"></span>&nbsp;新增
							    </a>
		                    </div>
		                </div>
                    </div>
                    <div class="ibox-content">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
										<th class="col-xs-1"></th>
                                        <th class="col-xs-2">用户名</th>
                                        <th class="col-xs-1" >角色</th>
                                        <th class="col-xs-2">真实姓名</th>
                                        <th class="col-xs-2">手机</th>
                                        <th class="col-xs-1">状态</th>
                                        <th class="col-xs-3">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${admins}" var="admin" varStatus="status">
                                    <tr>
                                        <td>
                                            <input type="checkbox" class="i-checks" name="input[]">
                                        </td>
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
                             				<a id="add" class="btn btn-success btn-xs btn-icon" href="javascript:edit(${admin.id})">
												<span class="fa fa-pencil r-mar-5"></span>&nbsp;修改
											</a>
											<a id="add" class="btn btn-success btn-xs btn-icon" href="javascript:remove(${admin.id})">
											    <span class="fa fa-trash-o r-mar-5"></span>&nbsp;删除
											</a>
                             				<c:choose>
                            					<c:when test="${admin.locked == 0}">
                            						<c:if test="${admin.status < 1}">
                            							<a id="add" class="btn btn-success btn-xs btn-icon" href="javascript:editStatus(${admin.id},${admin.status})">
															<span class="fa fa-check r-mar-5"></span>&nbsp;启用
														</a>
                            						</c:if>
                            						<c:if test="${admin.status > 0}">
                            							<a id="add" class="btn btn-success btn-xs btn-icon" href="javascript:editStatus(${admin.id},${admin.status})">
															<span class="fa fa-times r-mar-5"></span>&nbsp;禁用
														</a>
                            						</c:if>
                            					</c:when>
                            					<c:otherwise>
                            						<c:if test="${admin.locked == 1}">锁定</c:if>
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
    </div>
	</body>
	<script type="text/javascript">
	    $(document).ready(function() {
	    	/* $('#container-content').addClass('wp100 animated '+"lightSpeedIn"); */
	    	 $(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green",});
	    	
	    });
	    
	    function add(url){
	    	var index = layer.open({
	    		type: 2,
	    		title: '管理员信息新增',
	    		content: [url,'no'],
	    		skin: 'layui-layer-lan',
	    		icon: 1,
	    		area: ['550px', '450px'],
	    		move:false,//拖拽
	    		moveOut: true,
	    		shadeClose: true, //点击遮罩关闭层
	    		scrollbar :true, //浏览器滚动条
	    		moveType:1,//拖拽效果
	    		load:(0,{
	    			shade: false
	    		})
	    	});
	    	/* layer.full(index); */
	    }
	    
	    function edit(param){
	    	var index = layer.open({
	    		type: 2,
	    		title: '管理员信息修改',
	    		content: ['${pageContext.request.contextPath}/system/admin/add/'+param,'no'],
	    		skin: 'layui-layer-lan',
	    		icon: 1,
	    		area: ['550px', '450px'],
	    		move:false,//拖拽
	    		moveOut: true,
	    		shadeClose: true, //点击遮罩关闭层
	    		scrollbar :true, //浏览器滚动条
	    		moveType:1,//拖拽效果
	    		load:(0,{
	    			shade: false
	    		})
	    	});
	    	/* layer.full(index); */
	    }
	    
	    function remove(adminId){
	    	swal({
                title: "你确定要删除此用户吗",
                text: "来自系统的消息:",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55 !important",
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                closeOnConfirm: false
              },
              function(){
            	  $.post('${pageContext.request.contextPath}/system/admin/remove',{adminId:adminId},function(result){
            		  if(result){
            			  window.location.href='${pageContext.request.contextPath}/system/admin/list';
            		  }else{
            			  
            		  }
            	  })
              });
	    }
	    
	    function editStatus(adminId,status){
	    	var title = '';
	    	if($.trim(status) > 0){
	    		title = '你确定要禁用该用户吗？';
	    	}else{
	    		title = '你确定要启用该用户吗？';
	    	}
	    	swal({
                title: title,
                text: "来自系统的消息:",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55 !important",
                confirmButtonText: "确定",
                cancelButtonText: "取消",
                closeOnConfirm: false
              },
              function(){
            	  $.post('${pageContext.request.contextPath}/system/admin/edit/status',{adminId:adminId},function(result){
            		  if(result){
            			  window.location.href='${pageContext.request.contextPath}/system/admin/list';
            		  }else{
            			  
            		  }
            	  })
              });
	    }
	</script>
</html>