<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>New Meeting</title>
		
		<style>
			.card-height{
				height:190px;
			}
			.star-color-red{
				color:red;
			}
			.form-control:disabled, .form-control[readonly] {  
			  background-color: #f5f5f5;
			  opacity: 1;
			}
			.line-divider{
				margin-top:5px;
			}
			.select2-selection__rendered {
				line-height: 30px !important;
			} 
			.select2-container .select2-selection--single {
				height: 30px !important;
			}
			.select2-selection__arrow {
				height: 30px !important;
			}
			.th-text-align{
				text-align: center;
			}
			.modal-lg{
				max-width: 1250px;
			}
			.body-text-font{
				font-size:14px;
			}
			.header-style{
				background-color:#C5D9F1;
				padding:5px; 
				border-top-left-radius: 10px;
				border-top-right-radius: 10px;
				color:black;
				font-weight:bold;
			}
			.modal-footer-2 {
				padding: 0.75rem;
				border-top: 1px solid #e3e6f0;
				border-bottom-right-radius: calc(0.3rem - 1px);
				border-bottom-left-radius: calc(0.3rem - 1px);
			}
			.form-field-height{
				height:30px;
				font-size:14px;
			}
			.btn-font-size{
				font-size:14px;
			}
			.icon-color{
				color:#36b9cc;
			}
			.a-disable{
				pointer-events: none;
				cursor: default;
			}
		</style>
		
		<!--   select2 js Files   -->
		<script type="text/javascript" src="<c:url value="/resources/js/select2.min.js"></c:url>"></script>
		
		<!--   select2 css Files   -->
		<link rel="stylesheet" href="<c:url value="/resources/css/select2.min.css" />"> 
		
		<script>
			$(document).ready(function(){
//				$("#pageTitel").text('New - Meeting');
				$("#pageTitel").text('New');
				$('#drpConferenceRoomName').select2(); 
			});
		</script>
	</head>
	<body>
		<!-- start : page content -->
		<div class="container-fluid body-text-font" >
			<!-- start : main row -->
			<div class="row">
				<div class="col-xl-12 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body">
							<div class="row">
								<div class="col-lg-12" align="right">
									<a href="#" class="btn btn-info btn-round btn-font-size"  id="btnEdit"  >Edit</a>
									<a href="#" class="btn btn-info btn-round btn-font-size"  id="btnView"  >View</a>
								</div>
							</div> 
							<br/>
							<!-- start : meeting information -->
							<div style="padding-left:10px; padding-right:10px; padding-bottom:10px;">
								<div class="row">
									<div class="col-lg-3">
										<div class="form-group">
											<label class="dropdown-label-margin" >Business | Unit</label>
											<input type="text" class="form-control form-control-user textbox-round-corner form-field-height" id="txtBusinessUnit" readonly >
										</div>
									</div>
									<div class="offset-1 col-lg-3">
										<div class="form-group">
											<label class="dropdown-label-margin" >Booking request by</label>
											<input type="text" class="form-control form-control-user textbox-round-corner form-field-height" id="txtBookingRequestBy" readonly >
										</div>
									</div>
									<div class="offset-1 col-lg-3">
										<div class="form-group">
											<label class="dropdown-label-margin" >Date of request</label>
											<input type="text" class="form-control form-control-user textbox-round-corner form-field-height" id="txtDateOfRequest" readonly >
										</div>
									</div>
								</div>
								<!-- second row -->
								<br/>
								<div class="row">
									<div class="col-lg-3">
										<div class="form-group">
											<label class="dropdown-label-margin" >Conference room name<span class="star-color-red" >&nbsp;*</span></label>
											<select name="drpCustomerCode" id="drpConferenceRoomName" class="form-control form-control-user" >
												<option value="" >Select</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<!-- end : meeting information -->
						</div>
					</div>
				</div>
			</div>
			<!-- end : main row -->
		</div>
		<!-- end : page content -->
	</body>
</html>