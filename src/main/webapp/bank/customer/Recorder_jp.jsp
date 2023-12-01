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

<h2 class="page-title text-center fw-bold mb-3"><i class="bi bi-journal-bookmark-fill"></i>台幣帳戶資訊</h2>
<div class="container mt-5">


	<%@ include file="../include/calander.jspf"%>


	<div class="mx-5 mt-3">
		<table class="table table-striped table-hover ">
			<thead>
				<tr>
					<th scope="col">交易時間</th>
					<th scope="col">支出金額</th>
					<th scope="col">存入金額</th>
					<th scope="col">交易摘要</th>
					<th scope="col">即時餘額</th>
					<th scope="col">備註</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>2023/11/26</td>
					<td>1000</td>
					<td>0</td>
					<td>換匯-提款</td>
					<td>5000</td>
					<td>台幣帳戶</td>
				</tr>
				<tr>
					<td>2023/11/26</td>
					<td>1000</td>
					<td>0</td>
					<td>換匯-提款</td>
					<td>5000</td>
					<td>台幣帳戶</td>
				</tr>

				<tr>
					<td>2023/11/26</td>
					<td>1000</td>
					<td>0</td>
					<td>換匯-提款</td>
					<td>5000</td>
					<td>台幣帳戶</td>
				</tr>

			</tbody>
		</table>
	</div>

	<div class="  text-center report-exp">
		<button type="button" class="btn btn-secondary">匯出報表</button>
	</div>

</div>





<%@ include file="../include/header/footer.jspf"%>
