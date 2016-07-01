<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>HSSP</title>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- iCheck -->
<link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

<!-- Datatables -->
<link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
<link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
<link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
<link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">



<!-- Custom Theme Style -->
<link href="../css/custom.css" rel="stylesheet">



</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="<c:url value="/"/>" class="site_title"><i
							class="fa fa-pie-chart"></i> <span>Security BI</span></a>
					</div>

					<div class="clearfix"></div>

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<jsp:include page="../slideMenu.jsp" flush="true"></jsp:include>
					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav class="" role="navigation">
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

					</nav>
				</div>
			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								사원증 벌점 부과 내역 <small> </small>
							</h3>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="row">
						<div class="clearfix"></div>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										검색 조건 <small>- 사원증 벌점 부과 조회</small>
									</h2>
									<div class="clearfix"></div>
								</div>

								<div class="x_content">

									<form class="form-horizontal form-label-left input_mask">

										<div
											class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
											<input type="text" class="form-control has-feedback-left"
												id="firtstDtm" placeholder="검색 시작 일자"
												aria-describedby="inputSuccess2Status2"> <span
												class="fa fa-calendar-o form-control-feedback left"
												aria-hidden="true"></span> <span id="inputSuccess2Status2"
												class="sr-only">(success)</span>
										</div>

										<div
											class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
											<input type="text" class="form-control has-feedback-left"
												id="endtDtm" placeholder="검색 종료 일자"
												aria-describedby="inputSuccess2Status2"> <span
												class="fa fa-calendar-o form-control-feedback left"
												aria-hidden="true"></span> <span id="inputSuccess2Status2"
												class="sr-only">(success)</span>
										</div>

										<div
											class="col-md-4 col-sm-6 col-xs-12 form-group has-feedback">
											<button type="button" class="btn btn-success">검색</button>
										</div>
									</form>

									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- row end  -->

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									조회 리스트 <small></small>
								</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<p class="text-muted font-13 m-b-30"></p>
								<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>제목1</th>
											<th>제목2</th>
											<th>제목3</th>
											<th>제목4</th>
											<th>제목5</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>모바일</td>
											<td>되는지</td>
											<td>테스트</td>
											<td>와꾸 맞추기 개힘드네</td>
											<td>2011/04/25</td>
										</tr>
										<tr>
											<td>모바일</td>
											<td>되는지</td>
											<td>테스트</td>
											<td>와꾸 맞추기</td>
											<td>2011/04/25</td>
										</tr>
										<tr>
											<td>모바일</td>
											<td>되는지</td>
											<td>테스트</td>
											<td>와꾸 맞추기</td>
											<td>2011/04/25</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->
			</div>

			<!-- footer content -->
			<footer>
				<div class="pull-right">Make by Team Infra - JH.Chung</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>


	<!-- jQuery -->
	<script src="../vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="../vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="../vendors/nprogress/nprogress.js"></script>
	<!-- iCheck -->
	<script src="../vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script src="../js/moment/moment.min.js"></script>
	<script src="../js/datepicker/daterangepicker.js"></script>

	<!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/datatables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="../js/custom.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#datatable-responsive').DataTable({
				searching: false,
				info	:     false,
				select: false,
				autoWidth : true,
				lengthChange: false
			});
			
			$('#firtstDtm').daterangepicker({
							singleDatePicker : true,
							calender_style : "picker_2",
							format : 'YYYY-MM-DD',
							//closeText: '닫기',
							locale : {
								daysOfWeek : [ '월', '화', '수', '목', '금',
										'토', '일' ],
								monthNames : [ '1 월', '2 월', '3 월', '4 월',
										'5 월', '6 월', '7 월', '8 월', '9 월',
										'10 월', '11 월', '12 월' ]
							}
						},
						function(start, end, label) {
							console.log(start.toISOString(), end
									.toISOString(), label);
			});

			$('#endtDtm').daterangepicker({
					singleDatePicker : true,
					calender_style : "picker_2",
					format : 'YYYY-MM-DD',
					//closeText: '닫기',
					locale : {
						daysOfWeek : [ '월', '화', '수', '목', '금',
								'토', '일' ],
						monthNames : [ '1 월', '2 월', '3 월', '4 월',
								'5 월', '6 월', '7 월', '8 월', '9 월',
								'10 월', '11 월', '12 월' ]
					}
				},
				function(start, end, label) {
					console.log(start.toISOString(), end
							.toISOString(), label);
				});
		});
	</script>
</body>
</html>