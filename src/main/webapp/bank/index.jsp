<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%

	String error = (String)request.getAttribute("error");

%>    

<%@ include file="./include/header/header_index.jspf"%>

<head>
<style type="text/css">


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

.container{
margin-bottom: 80px;
}
</style>

</head>

<div id="carouselExampleControls" class="carousel slide"
	data-bs-ride="carousel">
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="../img/banner01.jpg" class="d-block w-100" alt="...">
		</div>
		<div class="carousel-item">
			<img src="../img/banner01.jpg" class="d-block w-100" alt="...">
		</div>
		<div class="carousel-item">
			<img src="../img/banner01.jpg" class="d-block w-100" alt="...">
		</div>
	</div>
	<button class="carousel-control-prev" type="button"
		data-bs-target="#carouselExampleControls" data-bs-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Previous</span>
	</button>
	<button class="carousel-control-next" type="button"
		data-bs-target="#carouselExampleControls" data-bs-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="visually-hidden">Next</span>
	</button>
</div>


<div class="container mt-5 w-75 ">
	<div class="row col-12 ">
		<div class="col col-6  border border-2 rounded p-3 m-2">
			<h4 class="text-center fw-bold mb-4">匯率查詢</h4>

			<div class="row row-cols-1 row-cols-xl-3 g-4">

				<div class="col">
					<div class="card">
						<img src="../img/cn.png" class="card-img-top" alt="..."
							width="220" height="100px">
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
						<img src="../img/jp.jpg" class="card-img-top" alt="..."
							width="220" height="100px">
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
						<img src="../img/usa.jpg " class="card-img-top" alt="..."
							width="220" height="100px">
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
				<a href="#" class="text-center fw-bold mb-4">匯率查詢</a> <span>|</span>
				<a href="#" class="text-center fw-bold mb-4">匯率更新</a>
			</div>
		</div>


		<div class="col border p-4  border-2 rounded  col-5">
			<form method="post" action="./index">
				<h4 class="fw-bolder text-center mb-4 title">網路銀行登入</h4>
			<%
	    	  	if(error != null) {
	    	  		out.print("<p class='text-center text-danger fw-bold'>"+error+"</p>");
	    	  	}
	    	  %>

				<div class="mb-0">
					<input name="username" class="form-control" id="id" placeholder="身分證字號">
				</div>
				<div class="mb-4">
					<label for="exampleInputPassword1" class="form-label"></label> <input
						type="password" name="password" class="form-control" id="password"
						placeholder="使用者密碼">
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






<%@ include file="./include/header/footer.jspf"%>