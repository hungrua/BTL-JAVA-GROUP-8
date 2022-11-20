<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
</head>
<body>
	<header>
	    <div class="con1">
	        <img id="logo" src="template/web/asset/img/logo.png" alt="">
	        <span id="name">SPORTING COMPLEX</span>
	    </div>
	    <div class="con2">
	        <ul>
	            <li>
	                <i class="fa-sharp fa-solid fa-user"></i> 
	            	<c:if test="${not empty usermod}">
	           			Xin chào, ${usermod.fullName }
	       			</c:if>
	                <i class="fa-solid fa-caret-down"></i>
	                <ul class="sub_menu">
	                    <li><a href="<c:url value = '/admin-quan-li-san' />">Quản lý sân</a></li>
	                    <li><a href="<c:url value = '/admin-quan-li-tran-dau' />">Quản lý trận đấu</a></li>
	 					<c:if test="${not empty usermod}">               
	                    	<li class="nav-item"><a class="nav-link" href='<c:url value="/log-out?action=logout"/>'>Thoát</a></li>
	                    </c:if>
	                </ul>
	            </li>
	        </ul>
	    </div>
	</header>
    <div class="content">
        <div class="manage_table football_table">
            <h2>Sân bóng đá</h2>
            <table class="table1">
                <tr>
                    <th>Sân đặt</th>
                    <th>Tên người đặt</th>
                    <th>Thời gian bắt đầu </th>
                    <th>Thời gian kết thúc</th>
                    <th>Ngày</th>
                    <th>Trạng thái</th>
                    <th>Tác vụ</th>
                </tr>
            </table>
        </div>
        <div class="manage_table badminton_table">
            <h2>Sân cầu lông </h2>
            <table class="table1">
                <tr>
                    <th>Sân đặt</th>
                    <th>Tên người đặt</th>
                    <th>Thời gian bắt đầu </th>
                    <th>Thời gian kết thúc</th>
                    <th>Ngày</th>
                    <th>Trạng thái</th>
                    <th>Tác vụ</th>
                </tr>
            </table>
        </div>
        <div class="manage_table tennis_table">
            <h2>Sân tennis</h2>
            <table class="table1">
                <tr>
                    <th>Sân đặt</th>
                    <th>Tên người đặt</th>
                    <th>Thời gian bắt đầu </th>
                    <th>Thời gian kết thúc</th>
                    <th>Ngày</th>
                    <th>Trạng thái</th>
                    <th>Tác vụ</th>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>