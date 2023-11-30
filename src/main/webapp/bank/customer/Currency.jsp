<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<%@ include file="../include/header/header_custom.jspf"%>
<style>
.btn {
	border: 1px solid rgb(128, 128, 128);
}

.btn:hover {
	background-color: rgb(179, 199, 180);
}

.exange {
	margin: 20px auto 80px auto;
}


</style>

<h2 class="page-title text-center fw-bold mb-3"><i class="bi bi-currency-exchange"></i>我要換匯</h2>
<div class="container mt-5">
	<div class="row col-12">
		<div class="col col-5">
			<h4>選擇轉出幣別</h4>

			<select class="form-select" aria-label="Default select example">
				<option selected>Open this select menu</option>
				<option value="TWD">新臺幣</option>
				<option value="USD">美元</option>
				<option value="CNY">人民幣</option>
				<option value="HKD">港幣</option>
				<option value="JPY">日圓</option>
				<option value="EUR">歐元</option>
				<option value="AUD">澳幣</option>
				<option value="SGD">新加坡幣</option>
				<option value="THB">泰銖</option>
			</select>
		</div>
		
		<div class="col col-2 position-relative fs-1 ">
		<i class="bi bi-arrow-repeat  mb-0 position-absolute bottom-0 start-50 translate-middle-x"></i>
		</div>
		
		<div class="col col-5 ">
			<h4>選擇兌換幣別</h4>
			<select class="form-select" aria-label="Default select example">
				<option selected>Open this select menu</option>
				<option value="TWD">新臺幣</option>
				<option value="USD">美元</option>
				<option value="CNY">人民幣</option>
				<option value="HKD">港幣</option>
				<option value="JPY">日圓</option>
				<option value="EUR">歐元</option>
				<option value="AUD">澳幣</option>
				<option value="SGD">新加坡幣</option>
				<option value="THB">泰銖</option>
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