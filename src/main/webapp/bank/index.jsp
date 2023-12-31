<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String error = (String) request.getAttribute("error");
%>

<%@ include file="./include/header/header_index.jspf"%>

<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<head>
<style type="text/css">
.banner-container {
	position: relative;
	text-align: center;
}

.banner-title {
	position: absolute;
	top: 40%;
	left: 50%;
	transform: translate(-50%, -50%);
	/* 可選，用於提高文字可讀性 */
	color: rgba(255, 255, 255, 0.9);
	padding: 10px;
}

.banner-title1 {
	font-size: 80px;
}

.banner-img {
	height: 95vh;
}

.banner-btn {
	position: absolute;
	top: 70%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 10px;
}

}
.btn {
	background-color: rgb(225, 135, 127);
	border-color: transparent;
}

.btn:hover {
	background-color: rgb(225, 135, 127, 0.5);
	border-color: transparent;
}

.title {
	color: rgb(141, 171, 217)
}

.border {
	border-color: rgb(141, 171, 217)
}

.container {
	margin-bottom: 80px;
}

.flag {
	aspect-ratio: 3/2;
	width: 100%; /* 也可以換成任何你想要的寬度 */
	object-fit: cover;
	object-position: center;
}
</style>

</head>



<div class="banner banner-container">
	<img src="../img/banner02.jpg" class="d-block w-100 banner-img"
		alt="...">
	<div class="banner-title">
		<h1 class="fw-bold banner-title1 ">
			MyBank<br>提供您便捷安全服務
		</h1>
		<p></p>
		<p class="fw-bold banner-title2 fs-5">自動化服務 | 智慧現金管理 | 便捷融資服務 |
			收款服務 | 轉帳服務</p>

	</div>
	<div class="banner-btn mt-5 ">
		<a href="./register.jsp" type="button"
			class="btn btn-outline-light btn-secondary mx-2 btn-lg">馬上註冊</a> <a
			href="#login" type="button"
			class="btn btn-outline-secondary btn-light mx-2 btn-lg">立即登入</a>
	</div>

</div>




<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">

				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<h5 class="modal-title" id="exampleModalLabel">請先註冊或登入會員</h5>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary"
					data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>
<!-- Modal END -->



<div class="container1">
	<div class="container mt-5 w-75 ">
		<div class="row col-12 ">
			<div class="col col-6  border border-2 rounded p-3 m-2">
				<h4 class="text-center fw-bold mb-4">匯率查詢</h4>

				<div class="row row-cols-1 row-cols-xl-3 g-4">

					<div class="col">
						<div class="card">
							<img src="../img/cn.png" class="card-img-top flag" alt="...">
							<div class="card-body">
								<h5 class="card-title">人民幣</h5>
								<h3 class="card-title">CNY</h3>
								<p class="card-text">
									買入&nbsp;&nbsp;&nbsp;&nbsp;<span>31.26</span>
								</p>
								<p class="card-text">
									賣出&nbsp;&nbsp;&nbsp;&nbsp;<span>31.53</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card">
							<img src="../img/jp.jpg" class="card-img-top flag" alt="...">
							<div class="card-body">
								<h5 class="card-title">日圓</h5>
								<h3 class="card-title">JPY</h3>
								<p class="card-text">
									買入&nbsp;&nbsp;&nbsp;&nbsp;<span>31.26</span>
								</p>
								<p class="card-text">
									賣出&nbsp;&nbsp;&nbsp;&nbsp;<span>31.53</span>
								</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="card">
							<img src="../img/usa.jpg " class="card-img-top flag" alt="...">
							<div class="card-body">
								<h5 class="card-title">美元</h5>
								<h3 class="card-title">USD</h3>
								<p class="card-text">
									買入&nbsp;&nbsp;&nbsp;&nbsp;<span>31.26</span>
								</p>
								<p class="card-text">
									賣出&nbsp;&nbsp;&nbsp;&nbsp;<span>31.53</span>
								</p>
							</div>
						</div>
					</div>

				</div>
				<div class=" mt-2 text-center">
					<button type="button" class="btn text-decoration-underline"
						data-bs-toggle="modal" data-bs-target="#exampleModal">匯率查詢
					</button>
					<span>|</span>
					<button type="button" class="btn text-decoration-underline">匯率更新</button>


				</div>
			</div>


			<div class="col border p-4  border-2 rounded  col-5">
				<form method="post" action="./main">
					<h4 class="fw-bolder text-center mb-4 title" id="login">網路銀行登入</h4>
					<%if (error != null) {
	out.print("<p class='text-center text-danger fw-bold'>" + error + "</p>");
}%>

					<div class="mb-0">
						<input name="username" class="form-control" id="id"
							placeholder="身分證字號">
					</div>
					<div class="mb-4">
						<label for="exampleInputPassword1" class="form-label"></label> <input
							type="password" name="password" class="form-control"
							id="password" placeholder="使用者密碼">
					</div>

					<div class="d-flex justify-content-center ">
						<button type="submit" class="btn btn-primary  mb-4">登入</button>
					</div>
					<div class="d-flex justify-content-center ">
						<a href="./register.jsp">註冊網銀</a>
					</div>
					<div class="d-flex justify-content-center ">
						<a href="">忘記密碼</a>
					</div>
				</form>
			</div>

		</div>


	</div>
</div>







<%@ include file="./include/header/footer.jspf"%>
<script src="../app/index_app.js"></script>

