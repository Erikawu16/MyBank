<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./include/header/header_index.jspf"%>


<style>
.bi {
	color: rgb(141, 171, 217)
}

.btn-send {
	color: rgb(0, 0, 0);
	background: rgb(152, 162, 177);
}

.btn-send:hover {
	background: rgb(141, 171, 217);
}

.btn-home{
  position: fixed;
  bottom:20px;
  right: 5px;
  }

</style>
<div class="border mx-5 mt-5 p-3">
	<h4 class="text-center">開戶提醒</h4>
<div class="text-center w-50 mx-auto">
	<ul style="list-style-type: none" class="text-start">
		<li><i class="bi bi-1-square-fill"></i>&nbsp;請準備證件：身分證和第二證件（健保卡、駕照、護照擇一）</li>
		<li><i class="bi bi-2-square-fill"></i>&nbsp;填寫個人基本資料</li>
		<li><i class="bi bi-3-square-fill"></i>&nbsp;審核同過後,收到專屬卡片</li>
	</ul>
</div>
</div>

<div class="text-center btn-home">
<a href="./index.jsp"><i class="bi bi-house-door-fill fs-2 text-withe"></i></a>

</div>



<!-- 第一部分 -->
<div class="w-75 mx-auto mt-5">
	<div class="position-relative m-4">
		<div class="progress" style="height: 1px;">
			<div class="progress-bar" role="progressbar" style="width: 0%;"
				aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<button type="button"
			class="position-absolute top-0 start-0 translate-middle btn btn-sm btn-primary rounded-pill"
			style="width: 2rem; height: 2rem;">1</button>
		<button type="button"
			class="position-absolute top-0 start-50 translate-middle btn btn-sm btn-secondary  rounded-pill"
			style="width: 2rem; height: 2rem;">2</button>
		<button type="button"
			class="position-absolute top-0 start-100 translate-middle btn btn-sm btn-secondary rounded-pill"
			style="width: 2rem; height: 2rem;">3</button>
	</div>
</div>

<div>
	<h3 class="text-center">請輸入基本身分資料</h3>
	<%@ include file="./include/valide.jspf"%>

</div>

<!-- 第二部分 -->
<div class="w-75 mx-auto mt-5">
	<div class="position-relative m-4">
		<div class="progress" style="height: 1px;">
			<div class="progress-bar" role="progressbar" style="width: 50%;"
				aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<button type="button"
			class="position-absolute top-0 start-0 translate-middle btn btn-sm btn-primary rounded-pill"
			style="width: 2rem; height: 2rem;">1</button>
		<button type="button"
			class="position-absolute top-0 start-50 translate-middle btn btn-sm btn-primary rounded-pill"
			style="width: 2rem; height: 2rem;">2</button>
		<button type="button"
			class="position-absolute top-0 start-100 translate-middle btn btn-sm btn-secondary rounded-pill"
			style="width: 2rem; height: 2rem;">3</button>
	</div>
</div>

<div>
	<h3 class="text-center">請上傳證件資料</h3>
	<%@ include file="./include/uploadpic.jspf"%>
</div>

<!-- 第三部分 -->
<div class="w-75 mx-auto mt-5">
	<div class="position-relative m-4">
		<div class="progress" style="height: 1px;">
			<div class="progress-bar" role="progressbar" style="width: 100%;"
				aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
		</div>
		<button type="button"
			class="position-absolute top-0 start-0 translate-middle btn btn-sm btn-primary rounded-pill"
			style="width: 2rem; height: 2rem;">1</button>
		<button type="button"
			class="position-absolute top-0 start-50 translate-middle btn btn-sm btn-primary rounded-pill"
			style="width: 2rem; height: 2rem;">2</button>
		<button type="button"
			class="position-absolute top-0 start-100 translate-middle btn btn-sm btn-primary rounded-pill"
			style="width: 2rem; height: 2rem;">3</button>
	</div>
</div>

<div class="mb-5">
	<h3 class="text-center">資料確認送出</h3>
	<div class="w-75 mx-auto border border-3 rounded p-4">
		<div class="col-12 ">
			<div class="form-check">
				<input class="form-check-input ms-0" type="checkbox" value=""
					id="invalidCheck" required> <label class="form-check-label"
					for="invalidCheck"> 我已詳閱並同意銀行蒐集、處理及利用個人資料法定告知事項。 </label>
				<div class="invalid-feedback">請詳閱並確認後再送出</div>
			</div>
		</div>
		<div class="col-12 text-center my-3">
			<button class="btn btn-send" type="submit">資料送出</button>
		</div>
	</div>
</div>
