<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@ include file="../include/header/header_custom.jspf"%>
<style type="text/css">
.btn {
	border: 1px solid rgb(128, 128, 128);
}

.btn:hover {
	background-color: rgb(179, 199, 180);
}
.exange{

margin:20px auto 80px auto;


}
</style>


<div class="container mt-5">
	<div class="row col-12">
		<div class="col col-5">
			<h4>選擇轉出幣別</h4>
			<select class="form-select" aria-label="Default select example">
				<option selected>Open this select menu</option>
				<option value="1">One</option>
				<option value="2">Two</option>
				<option value="3">Three</option>
			</select>
		</div>
		<div class="col col-2"></div>


		<div class="col col-5 ">
			<h4>選擇兌換幣別</h4>
			<select class="form-select" aria-label="Default select example">
				<option selected>Open this select menu</option>
				<option value="1">One</option>
				<option value="2">Two</option>
				<option value="3">Three</option>
			</select>
		</div>
	</div>
</div>

<form>
	<div class="container mt-5">
		<div class="row col-12">
			<div class="col col-5">
				<div class="mb-0">
					<input name="moneyin" class="form-control" id="moneyin"
						placeholder="請輸入金額">
				</div>

			</div>
			<div class="col col-2"></div>
			<div class="col col-5 ">
				<div class="mb-0">
					<span name="moneyout" class="form-control" id="moneyout">兌換後金額</span>
				</div>
			</div>
		</div>
	</div>

	<div class="d-flex justify-content-center mt-5">
		<button type="submit" class="btn  ">取得最新報價</button>
	</div>


</form>

<%@ include file="../include/currency_table.jspf"%>
	<div class="d-flex justify-content-center exange">
		<button type="submit" class="btn ">我要換匯</button>
	</div>
<%@ include file="../include/header/footer.jspf"%>