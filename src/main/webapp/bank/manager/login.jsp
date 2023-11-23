<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBank</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>


<style>
.navbar {
	background-color: rgb(139, 154, 139);
}

.backend a {
	position: absolute;
	top: 10px;
	right: 20px;
}

.form-area {
	margin-top: 100px;
}
</style>

</head>


<body>
	<nav class="navbar navbar-expand-lg navbar-light position-stiky top-0">
		<div class="ms-1">
			<a class="navbar-brand text-light" href="#">行動商業銀行</a>
		</div>
		<div class="backend " id="">
			<a class="text-white" href="../index.jsp">前台登入</a>

		</div>

	</nav>


</body>
</html>

<div class="w-50 mx-auto form-area border p-3 border-3 rounded">
	<form method="post" action="./approval.jsp">
		<div class="mb-3">
			<label for="exampleInputEmail1" class="form-label">帳號</label> <input
				type="email" class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp">

		</div>
		<div class="mb-3">
			<label for="exampleInputPassword1" class="form-label">密碼</label> <input
				type="password" class="form-control" id="exampleInputPassword1">
			<div id="emailHelp" class="form-text">請注意!!若密碼輸入錯誤三次將鎖定帳號!!</div>
		</div>
		<div class="text-center">
			<button type="submit" class="btn btn-secondary">登入</button>
		</div>
	</form>


</div>

<%@ include file="../include/header/footer.jspf"%>