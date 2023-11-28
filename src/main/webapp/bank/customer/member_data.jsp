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
	width: 15vw;
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

.btn-upload {
	width: 50%;
	height: auto;
}
.data-area{
border: 2px solid gray ;
border-radius: 9px;
}
</style>
<div class="row col-12">
	<div class="d-flex col-2">
		<!-- 側邊導覽列 -->
		<div class=" border-right sidebar">

			<ul class="navbar-nav me-auto mb-2 mb-lg-0 text-center fs-5 fw-bold">
				<li class="fs-3 nav-heading">【會員專區】</li>
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="./member_box.jsp">重要通知</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="./member_data.jsp">會員資料</a></li>
			</ul>
		</div>
	</div>

	<div class=" page-title col-10">
		<h2 class="  fw-bold mb-3 text-center ">會員資料</h2>
		<div class="row col-12 justify-content-center">
			<div class="pic-area col-3 row">

				<div id="img_area" class="text-center pic mb-4"></div>
				<label class="btn btn-outline-primary btn-upload  "> <input
					type="file" name="upfile[]" id="upfile" multiple=""
					class="upfile d-none" accept=".jpg, .jpeg, .png,"> 上傳檔案
				</label>
			</div>

			<div class="data-area col-9 row ">
				<div class=" d-flex flex-column  justify-content-around mx-3 p-1">
					<h4 class="mt-0">
						姓名:&nbsp;<span>吳佳謓</span>
					</h4>
					<h4>
						性別:&nbsp;<span>女</span>
					</h4>
					<h4>
						e-mail:&nbsp;<span>np93021233@gmail.com</span>
					</h4>
					<h4>
						出生年月日:&nbsp;<span>1998/08/16</span>
					</h4>

				</div>


			</div>
		</div>

	</div>
</div>