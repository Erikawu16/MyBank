<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="../include/header/header_custom.jspf"%>

<style>
.btn-opt {
	border: 0.5px solid rgb(128, 128, 128);
}

.btn:hover {
	background-color: rgb(179, 199, 180);
}

.report-exp {
	margin-bottom: 80px;
}
</style>


<h2 class="page-title text-center fw-bold mb-3">交易查詢</h2>
<div class="container mt-5">
	<div class="col ">
		<h4 class="text-center">帳戶選擇</h4>
		<select class="form-select justify-content-center m-auto w-50"
			aria-label="Default select example">
			<option selected>請選擇查詢帳戶</option>
			<option value="1">One</option>
			<option value="2">Two</option>
			<option value="3">Three</option>
		</select>
	</div>


	<%@ include file="../include/calander.jspf"%>

	<ul class="nav justify-content-center mt-3">
		<li class="nav-item mx-3"><a
			class="nav-link btn btn-outline-secondary btn-sm btn-opt"
			aria-current="page" href="#">週</a></li>
		<li class="nav-item mx-3"><a
			class="nav-link  btn btn-outline-secondary btn-sm btn-opt" href="#">月</a>
		</li>

	</ul>

	<div class="mx-5 mt-3">
		<table class="table table-striped table-hover ">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">First</th>
					<th scope="col">Last</th>
					<th scope="col">Handle</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td colspan="2">Larry the Bird</td>
					<td>@twitter</td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="  text-center report-exp">
		<button type="button" class="btn btn-secondary">匯出報表</button>
	</div>

</div>





<%@ include file="../include/header/footer.jspf"%>



