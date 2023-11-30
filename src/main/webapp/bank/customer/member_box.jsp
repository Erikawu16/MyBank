<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header/header_custom.jspf"%>

<style>
/* 加入一些自定義的樣式 */
.sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	z-index: -1;
	padding: 70px 0;
	width: 200px;
	overflow-x: hidden;
	overflow-y: auto;
	background-color: rgb(139, 154, 139);
	overflow-x: hidden;
}

.item:hover {
	background-color: rgb(139, 154, 139);
}

.nav-heading {
	color: rgb(77, 76, 76);
}

.pic {
	height: 320px;
	width: 250px;
	border: 1px solid black;
}

.page-title{
margin-left: 250px
}
</style>

		<div class=" border-right sidebar">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0 text-center fs-5 fw-bold">
				<li class="fs-3 nav-heading">【會員專區】</li>
				
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="./member_box.jsp"><i class="bi bi-chat-square-text"></i>重要通知</a></li>
					
				<li class="nav-item"><a class="nav-link text-white"
					href="./member_data.jsp"><i class="bi bi-person-circle"></i>會員資料</a></li>

			</ul>


		</div>
		
		
		
<div class="row col-12">
	<div class=" page-title col-10 justify-content-center">
		<h2 class="  fw-bold mb-3 text-center "><i class="bi bi-chat-square-text"></i>重要通知</h2>


	</div>
</div>

	
