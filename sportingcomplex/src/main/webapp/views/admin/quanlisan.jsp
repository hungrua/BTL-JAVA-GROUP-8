<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

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
                <div class="method">
                    <h2>Sân bóng đá</h2>
                </div>
                <table class="table1">
                    <tr>
                        <th>Sân</th>
                        <th>Giá thuê</th>
                        <th>Trạng thái sân</th>
                        <th>Tác vụ</th>
                    </tr>
                </table>
            </div>
            <div class="manage_table badminton_table">
                <div class="method">
                    <h2>Sân cầu lông </h2>
                </div>
                <table class="table1">
                    <tr>
                        <th>Sân</th>
                        <th>Giá thuê</th>
                        <th>Trạng thái sân</th>
                        <th>Tác vụ</th>
                    </tr>
                </table>
            </div>
            <div class="manage_table tennis_table">
                <div class="method">
                    <h2>Sân tennis</h2>
                </div>
                <table class="table1">
                    <tr>
                        <th>Sân</th>
                        <th>Giá thuê</th>
                        <th>Trạng thái sân</th>
                        <th>Tác vụ</th>
                    </tr>
                </table>
            </div>
            <button class="add_btn " onclick="showAddBox()"><i class="fa-regular fa-square-plus"></i>Thêm sân </button>
            <div class="add-box">
                <div class="close"> <button class="close-btn" onclick="closeAddBox()"><i class="fa-solid fa-square-xmark"></i></button></div>
                <h3>Thêm sân mới</h3>
                <div class="form-group">
                    <label for="id_san">Id sân : </label>
                    <input type="text" name="id_san" required>
                </div>
                <div class="form-group">
                    <label for="categoryId"> Loại sân : </label>
                    <select name="categoryId" id="categoryId" >
                        <option value="1">Sân bóng đá</option>
                        <option value="2">Sân cầu lông</option>
                        <option value="3">Sân tennis</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="status"> Loại sân : </label>
                    <select name="status" id="status" >
                        <option value="1">Tốt</option>
                        <option value="0">Bảo trì </option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="price"> Giá thuê : </label>
                    <input type="text" name="price" required>
                </div>
                <button class="update-btn" onclick="renderNewSanToTable()">Cập nhật</button>
            </div>
        </div>
        <div class="model ">
            <form class="update-form">
                <div class="close"> 
                    <button class="close-btn" onclick="closeModel()"><i class="fa-solid fa-square-xmark js-X"></i></button>
                </div>
                <h1>Chỉnh sửa thông tin sân</h1>
                <div class="form-group">
                    <label for="newPrice">Giá sân : </label>
                    <input type="text" name="newPrice" required>
                </div>
                <div class="form-group">
                    <label for="newStatus"> Loại sân : </label>
                    <select name="newStatus" id="newStatus" >
                        <option value="1">Tốt</option>
                        <option value="0">Bảo trì </option>
                    </select>
                </div>
                <button class="update">Cập nhật</button>
            </form>
        </div>
    </body>
    </html>