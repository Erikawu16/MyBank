<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header/header_manager.jspf"%>

<html>
<head>
<style>
.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
	background-color: #97a9c3;
}

.nav-link {
	color: #97a9c3
}

.btn-detail {
	background-color: rgb(139, 154, 139);
}
</style>

</head>
<body>
	<div class="w-100 ">

		<ul class="nav nav-pills justify-content-center mt-5 ">
			<li class="nav-item  " role="presentation">
				<button class="nav-link active fw-bold tab-title " id="p1-tab"
					data-bs-toggle="tab" data-bs-target="#p1" type="button" role="tab"
					aria-controls="p1" aria-selected="true">待審核名單<span class="badge bg-secondary ms-1">3</span></button>
			</li>
			<li class="nav-item  " role="presentation">
				<button class="nav-link fw-bold tab-title" id="p2-tab"
					data-bs-toggle="tab" data-bs-target="#p2" type="button" role="tab"
					aria-controls="p2" aria-selected="false">審核過紀錄</button>
			</li>
		</ul>


		<!-- 名單 -->
		<div class="tab-content text-center mt-5 " id="myTabContent">

			<!-- 未審核名單 -->
			<div class="tab-pane fade show active row col-12 " id="p1"
				role="tabpanel" aria-labelledby="p1-tab">

				<%@ include file="../include/manager/unapproval_list.jspf"%>



			</div>
			<!-- 審核記錄 -->
			<div class="tab-pane fade  col-12 row" id="p2" role="tabpanel"
				aria-labelledby="p2-tab">

				<div class="row w-50 mx-auto mb-5">
					<h4>審核結果篩選</h4>
					<select class="form-select" aria-label="Default select example">
						<option selected>審核結果</option>
						<option value="1">通過</option>
						<option value="2">未通過</option>
					</select>
				</div>
				<%@ include file="../include/manager/approvaled_list.jspf"%>

			</div>
		</div>
	</div>
</body>

</html>

