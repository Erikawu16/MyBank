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
	aspect-ratio: 2/3;
	width: 250px; /* 也可以換成任何你想要的寬度 */
	object-fit: cover;
	object-position: center;
	border: 1px solid black;
}

.btn-upload {
	width: 50%;
	height: auto;
}

.data-area {
	border: 2px solid gray;
	border-radius: 9px;
}

.page-title {
	margin-left: 270px
}
</style>



<div class=" border-right sidebar">

	<ul class="navbar-nav me-auto mb-2 mb-lg-0 text-center fs-5 fw-bold">
		<li class="fs-3 nav-heading">【會員專區】</li>
		<li class="nav-item"><a class="nav-link active text-white"
			href="./member_box.jsp"><i class="bi bi-chat-square-text"></i>重要通知</a></li>

		<li class="nav-item"><a class="nav-link text-white active"
			aria-current="page" href="./member_data.jsp"><i
				class="bi bi-person-circle"></i>會員資料</a></li>

	</ul>


</div>
<div class="row col-12">
	<div class=" page-title col-10 justify-content-center">
		<h2 class="  fw-bold mb-3 text-center ">
			<i class="bi bi-person-circle"></i>會員資料
		</h2>
		<div class="row col-12 all-data-area justify-content-center ">

			<div class="pic-area col-3 row mx-3">

				<div id="img_area" class=" img_area text-center pic mb-4 ">


				</div>
					<form class="row g-3 needs-validation col-12 col-lg-6" novalidate
						action="./upload" method="post" enctype="multipart/form-data">


						<div class="mb-3">
							<label class="btn btn-outline-primary w-100"> <input
								type="file" id="upfile" name="upfile" multiple
								class="upfile d-none" accept=".jpg, .jpeg, .png, .gif" required>
								上傳檔案
								<div class="invalid-feedback">請上傳證明文件</div>
							</label>
						</div>

						<div id="img_area" class="text-center"></div>

						<div class="col-12 d-flex justify-content-center">
							<button class="btn btn-primary" type="submit">確認上傳</button>
						</div>
					</form>

			</div>

			<div class="data-area col-7 row ">
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