<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header/header_manager.jspf"%>

<html>
<head>
<style>


</style>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'table' ]
	});
	google.charts.setOnLoadCallback(drawTable);

	function drawTable() {
		var data = new google.visualization.DataTable();
		data.addColumn('string', '姓名');
		data.addColumn('number', '生日');
		data.addColumn('string', '性別');
		data.addColumn('string', '註冊日期');
		data.addColumn('boolean',   'Full Time Employee');
		data.addRows([ [ 'Mike', {
			v : 10000,
			f : '$10,000'
		}, true ], [ 'Jim', {
			v : 8000,
			f : '$8,000'
		}, false ], [ 'Alice', {
			v : 12500,
			f : '$12,500'
		}, true ], [ 'Bob', {
			v : 7000,
			f : '$7,000'
		}, true ] ]);

		var table = new google.visualization.Table(document
				.getElementById('table_div'));

		table.draw(data, {
			showRowNumber : true,
			width : '100%',
			height : '100%'
		});
	}
</script>

</head>
<body>




	<div class="w-75 mx-auto">

		<ul class="nav nav-pills justify-content-center mt-5 ">
			<li class="nav-item " role="presentation">
				<button class="nav-link active fw-bold tab-title " id="p1-tab"
					data-bs-toggle="tab" data-bs-target="#p1" type="button" role="tab"
					aria-controls="p1" aria-selected="false">台幣帳戶</button>
			</li>
			<li class="nav-item tab-title " role="presentation">
				<button class="nav-link fw-bold" id="p2-tab" data-bs-toggle="tab"
					data-bs-target="#p2" type="button" role="tab" aria-controls="p2"
					aria-selected="false">外幣帳戶</button>
			</li>
		</ul>



		<div
			class="tab-content text-center align-items-center  mx-auto"
			id="myTabContent">

			<div class="tab-pane fade show active  " id="p1" role="tabpanel"
				aria-labelledby="p1-tab">

				<div class="mt-5 mb-3 ">
					<p4 class="fw-bold fs-1">待審核名單</p4>
				</div>

				<div id="table_div"></div>

			</div>





			<div class="tab-pane fade  " id="p2" role="tabpanel"
				aria-labelledby="p2-tab">

				<div class="mt-5 mb-3 ">
					<p4 class="fw-bold fs-1">已審核名單</p4>
				</div>

				<div id="table_div"></div>
			</div>


		</div>
	</div>











</body>
</html>
