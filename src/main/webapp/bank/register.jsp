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

.btn-home {
	position: fixed;
	bottom: 20px;
	right: 5px;
}

.step {
	color: rgb(255, 255, 255);
	background: rgb(141, 171, 217);
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
	<a href="./index.jsp"><i
		class="bi bi-house-door-fill fs-2 text-withe"></i></a>

</div>



<!-- 第一部分 -->

<div class="w-75 mx-auto border border-3 rounded p-4  mb-5">
	<h3 class="text-center step w-25 mx-auto fw-bold">1.請填寫基本資料</h3>
	<div class="w-75 mx-auto mt-3 mb-5 ">
		<div class="progress">
			<div class="progress-bar" role="progressbar" style="width: 25%;"
				aria-valuenow="33" aria-valuemin="0" aria-valuemax="100">25%</div>
		</div>
	</div>

	<form class="row g-3 needs-validation" method="post"
		action="./register">
		<!-- 基本資料輸入-->

		<div class="col-md-3 ">
			<label for="name" class="form-label  fs-5 fw-bold">姓名:</label> 
			<input
				type="text" class="form-control" id="name" name="name" value=""
				required>
			<div class="invalid-feedback">此為必填項目</div>
		</div>


		<div class="col-md-3">
			<label for="Id" class="form-label fs-5 fw-bold">身份證字號:</label>
			 <input
				type="text" class="form-control" id="Id" name="Id" value=" "
				required>
			<div class="invalid-feedback">此為必填項目</div>
		</div>
		
		<div class="col-md-3">
			<label for="date" class="form-label  fs-5 fw-bold">出生年月日:</label> <input
				type="date" name="date" id="date" class="form-control" required>
			<div class="invalid-feedback">此為必填項目</div>
		</div>
		<div class="col-md-3  align-self-end ">
			<input type="radio" class="form-check-input" id="M" name="gender" value="M"
				required> <label class="form-check-label" for="gender">男生</label>
			<input type="radio" class="form-check-input" id="F" name="gender"value="F"
				required> <label class="form-check-label" for="gender" >女生</label>
		</div>


		<div class="col-md-3">
			<label for="email"class="form-label fs-5 fw-bold">電子郵件：</label> 
			<input type="email" id="email" class="form-control" name="email"
				required>
			<div class="valid-feedback">此為必填項目</div>
		</div>


<div class="col-md-3">
      <label for="password" class="form-label fs-5 fw-bold">密碼：</label>
      <input type="password" id="password"  name="password"  class="form-control" required>
    </div>
  <div class="col-md-3">
      <label for="confirmPassword" class="form-label fs-5 fw-bold">確認密碼：</label>
      <input type="password" id="confirmPassword" class="form-control" required>
    </div>




		<!-- 稅務身分 -->
		<div class="col-12 pb-1 ">
			<h2 class="p2 fw-bold fs-5 d-inline">【稅務身分】</h2>

			<div class="col-12 pb-1">
				<div class="custom-control custom-checkbox  mt-md-0">
					<input class="custom-control-input inputChecking valid"
						id="Residences_TW" type="checkbox" name="Residences" value="TW"
						aria-invalid="false"> <label
						class="checkbox_label  d-inline" for="Residences_TW">具有中華民國稅務身分</label>
				</div>

				<div class="custom-control custom-checkbox checkbox-field mt-md-0">
					<input class="custom-control-input inputChecking"
						id="Residences_US" type="checkbox" name="Residences" value="US"
						aria-invalid="false"> <label
						class="checkbox_label  d-inline" for="Residences_US">具美國稅務身分【含美國公民、美國稅務公民、持有美國永久居民身分證(綠卡)】
					</label>
				</div>

				<div class="custom-control custom-checkbox checkbox-field mt-md-0">
					<input class="custom-control-input inputChecking"
						id="Residences_OTH" type="checkbox" name="Residences" value="OTH"
						aria-invalid="false"> <label
						class="checkbox_label d-inline" for="Residences_OTH">具美國以外的其他國家/地區稅務身分</label>
				</div>
			</div>


		</div>



		<!-- 第二部分 -->
		<div class="w-75 mx-auto mt-5 mb-3 d-block">
			<h3 class="text-center step w-50 mx-auto fw-bold mb-3">2.請上傳證件資料</h3>
			<div class="progress">
				<div class="progress-bar" role="progressbar" style="width: 50%;"
					aria-valuenow="66" aria-valuemin="0" aria-valuemax="100">50%</div>
			</div>
		</div>

		<div>

			<%@ include file="./include/uploadpic.jspf"%>
		</div>




		<!-- 第三部分 -->
		<div class="w-75 mx-auto mt-5 mb-3 ">
			<h3 class="text-center step w-50 mx-auto fw-bold mb-3">3.資料確認送出</h3>
			<div class="progress">
				<div class="progress-bar" role="progressbar" style="width: 75%;"
					aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
			</div>
		</div>

		<div class="mb-5">


			<div class=" border border-3 rounded p-4">
				<div class="col-12 ">
					<div class="form-check">
						<input class="form-check-input ms-0" type="checkbox" value=""
							id="invalidCheck" required> <label
							class="form-check-label" for="invalidCheck">
							我已詳閱並同意銀行蒐集、處理及利用個人資料法定告知事項。 </label>
						<div class="invalid-feedback">請詳閱並確認後再送出</div>
					</div>
				</div>
				<div class="col-12 text-center my-3">
					<button class="btn btn-send" type="submit">資料送出</button>
				</div>
			</div>

		</div>

	</form>


</div>




<script type="text/javascript">
	//Example starter JavaScript for disabling form submissions if there are invalid fields
	(function() {
		'use strict'

		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document.querySelectorAll('.needs-validation')

		// Loop over them and prevent submission
		Array.prototype.slice.call(forms).forEach(function(form) {
			form.addEventListener('submit', function(event) {
				if (!form.checkValidity()) {
					event.preventDefault()
					event.stopPropagation()
				}

				form.classList.add('was-validated')
			}, false)
		})
	})()
	
	
</script>

<script>
    
      // 簡單的驗證邏輯
      if (password !== confirmPassword) {
        alert("密碼和確認密碼不匹配");
      } else {
        // 這裡可以添加將用戶信息提交到後端的代碼，進行進一步的驗證和處理
        alert("註冊成功！");
        // 這裡可以重定向到登錄頁面或其他頁面
      }
    });
  </script>