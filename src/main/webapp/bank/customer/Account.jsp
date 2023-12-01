<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@ include file="../include/header/header_custom.jspf"%>


<style>
.tab-title {
	coloe: rgb(128, 128, 128);
}

.btn {
	border: 1px solid rgb(128, 128, 128);
}

.btn:hover {
	background-color: rgb(179, 199, 180);
}

.card {
	width: 80vw;
}


</style>

<h2 class="page-title text-center fw-bold mb-3"><i class="bi bi-person-badge"></i>帳戶總覽</h2>

<ul class="nav nav-tabs justify-content-center mt-5 ">

	<li class="nav-item " role="presentation">
		<button class="nav-link active fw-bold tab-title " id="p1-tab"
			data-bs-toggle="tab" data-bs-target="#p1" type="button" role="tab"
			aria-controls="p1" aria-selected="false">台幣帳戶</button>
	</li>
	<li class="nav-item tab-title " role="presentation">
		<button class="nav-link fw-bold" id="p2-tab" data-bs-toggle="tab"
			data-bs-target="#p2" type="button" role="tab" aria-controls="p2"
			aria-selected="false">外幣帳戶</button>
	</li>
</ul>


<div
	class="tab-content text-center d-flex flex-column align-items-center  mx-auto"
	id="myTabContent">

	<div class="tab-pane fade show active  " id="p1" role="tabpanel"
		aria-labelledby="p1-tab">

		<div class="mt-5 mb-3 ">
			<p4 class="fw-bold fs-1">我的台幣帳戶</p4>
		</div>
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn  ">我要轉帳</button>
			<button type="button" class="btn ">我要換匯</button>

		</div>
		<div class="card  mt-5 ">
			<h5 class="card-header">活期存款</h5>
			<div class="card-body">
				<h5 class="card-title">000-000-000-000</h5>
				<p class="card-text">$5000.00</p>
				<a href="./Recorder_tw.jsp" class="btn ">查看帳戶資訊</a>
			</div>
		</div>


	</div>



	</hr>


	<div class="tab-pane fade  " id="p2" role="tabpanel"
		aria-labelledby="p2-tab">

		<div class="mt-5 mb-3 ">
			<p4 class="fw-bold fs-1">我的外幣帳戶</p4>
		</div>
		<div class="btn-group" role="group"
			aria-label="Basic outlined example">
			<button type="button" class="btn  ">我要轉帳</button>
			<button type="button" class="btn ">我要換匯</button>

		</div>


		<div class="card  mt-5 ">
			<h5 class="card-header">美金存款</h5>
			<div class="card-body">
				<h5 class="card-title">000-000-000-000</h5>
				<h4 class="card-text fw-bold">$5000.00</h4>
				<p class="card-text">
					約為台幣<span>$5000.00</span>
				</p>
				<a href="./Recorder_usa.jsp" class="btn ">查看交易紀錄</a>
			</div>
		</div>

		<div class="card  mt-5 ">
			<h5 class="card-header">日幣存款</h5>
			<div class="card-body">
				<h5 class="card-title">000-000-000-000</h5>
				<h4 class="card-text fw-bold">$5000.00</h4>
				<p class="card-text">
					約為台幣<span>$5000.00</span>
				</p>
				<a href="./Recorder_jp.jsp" class="btn ">查看交易紀錄</a>
			</div>
		</div>


	</div>


</div>



<%@ include file="../include/header/footer.jspf"%>



