<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header/header_manager.jspf"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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

.cotainer {
	margin-top: 80px;
}
</style>

</head>
<body>

	<div class="cotainer ">


				<div class="row w-50 mx-auto mb-5">
					<h4>審核結果篩選</h4>
					<select class="form-select" aria-label="Default select example">
						<option selected>審核結果</option>
						<option value="1">通過</option>
						<option value="2">未通過</option>
					</select>
				</div>

				<div class="col w-75 mx-auto">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">編號</th>
								<th scope="col">申請姓名</th>
								<th scope="col">申請時間</th>
								<th scope="col">申請帳號</th>
								
								<th scope="col">status</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="member" items="${ApprovaledMember}">
								<tr>
									<th scope="row">${ member.memberId }</th>
									<td>${ member.name }</td>
									<td>${ member.date }</td>
									<td>${ member.account }</td>
									<td>${ member.status }</td>
									
								</tr>

							</c:forEach>
						</tbody>
					</table>

				</div>



			</div>

</body>

</html>


