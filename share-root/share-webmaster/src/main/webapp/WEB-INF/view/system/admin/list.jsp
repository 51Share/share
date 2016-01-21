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
	 				<div class="panel">
			            <div class="panel-heading bg-theme-light">
			                <div class="row">
			                    <div class="col-lg-12 pad-v-10">
			                       <!--  <h2>Inbox<span class="l-pad-5 fs-14">/ 18 messages</span></h2> -->
			                    </div>
			                </div>
			            </div>
			            <!-- <div class="panel-alert alert alert-success">
			                 <i class="fa fa-check r-pad-10"></i><a href="#">Click here</a> to set up desktop notifications or configure you account.
			                <button class="close" data-dismiss="alert">×</button>
			            </div> -->
			            <div class="panel-body pad-v-10 pad-h-20">
			                <!-- <div class="row">
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
			                </div> -->
			
			            </div>
			            <div class="panel-body panel-full">
							<table  class="table table-striped table-hover dt-responsive" width="100%">
			                	<thead>
                                    <tr>
                                        
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Email</th>
                                        <th>Country</th>
                                    </tr>
                                </thead>
			                	<tbody>
			                		<tr>
			                			<td>111</td>
			                			<td>111</td>
			                			<td>111</td>
			                			<td>111</td>
			                		</tr>
			                		<tr>
			                			<td>111</td>
			                			<td>111</td>
			                			<td>111</td>
			                			<td>111</td>
			                		</tr>
			                	</tbody>
			                </table>
			            </div>
			        </div>
				</div>
			</div>
		</div>
	</body>
</html>