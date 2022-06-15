<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<%@ page isELIgnored="false" %>
		
		<!-- font css --> 
		<link href="<c:url value="/resources/app/font/all.min.css" />" rel="stylesheet">
		
		<!-- google font -->
		<link href="<c:url value="/resources/app/font/all.min.css" />" rel="stylesheet">
		
		<!-- custom styles for this app-->
    	<link href="<c:url value="/resources/app/css/sb-admin-2.min.css" />" rel="stylesheet">
    	
    	<!-- bootstrap core javaScript-->
    	<script src="<c:url value="/resources/js/jquery.min.js"></c:url>" type="text/javascript"></script>
    	<script src="<c:url value="/resources/bootstrap/js/bootstrap.bundle.min.js"></c:url>" type="text/javascript"></script>
    	
    	<!-- sweet alert - css-->
		<link href="<c:url value="/resources/css/sweetalert.css" />" rel="stylesheet"> 
		
		<!--   sweet alert - js   -->
		<script src="<c:url value="/resources/js/sweetalert.js"></c:url>" type="text/javascript"></script>
		
		<!-- my - css-->
		<link href="<c:url value="/resources/css/custom.css" />" rel="stylesheet"> 
		
		
	</head>
	<body background="<c:url value="/resources/img/banner_4.jpg" />" style="height:50%;background-position: 50% 50%;background-repeat: no-repeat;background-size: cover; overflow: hidden;" >
		
		<div class="container">
			
			<!-- loader image -->
			<div class="loader-div" > 
				<!-- <img class="loader-img" src="<?php echo base_url(); ?>assets/images/ajax-loader.gif" height="70" width="70" /> -->
			</div>
			
			<!-- Outer Row -->
        	<div class="row justify-content-center">
        		
        		<div class="col-xl-5 col-md-6 my-5">
        			<div class="card shadow h-100 py-2"> 
        				<div class="card-body">
        					<div class="user">
        						<div class="row">
        							<div class="col-lg-1"></div>
        							<div class="col-lg-10">
        								<div class="text-center">
											<img src="<c:url value="/resources/img/atul.png" />" style="height: 30px;width: auto;" class="logo-img" />
										</div>
										<br/>
										<div class="text-center"> 
											<h1 class="h4 text-gray-900 mb-4">App Name</h1>
										</div>
										<div class="form-group">
											<input type="text" class="form-control form-control-user textbox-round-corner" id="txtUserName" placeholder="Username">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user textbox-round-corner" id="txtPassword" placeholder="Password">
										</div>
										<div class="form-group">
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input" id="customCheck">
												<label class="custom-control-label" for="customCheck" style="padding-top:4px;">Remember me</label>
											</div>
										</div>
										<a href="#" class="btn btn-primary btn-block btn-round-corner" id="btnLogin">
											Login
										</a>
										<hr/>
        							</div>
        						</div>
        					</div>
        					<div class="text-center">
	                           <a class="small" href="#">Forgot Password?</a>
	                        </div> 
        				</div>
        			</div>
        		</div>
        	</div>
        	
		</div>
		
		<!-- copy right -->
		<div class="row" style="margin-top:40px;" >
			<div class="col-md-12">
				<p style="text-align: center;display: block; color:white;font-size:11px;" id="lblCopyRight">Atul Infotech &#169; <?php echo date("Y"); ?> </p>
			</div> 
		</div>
	
	</body> 
	<script type="text/javascript">
		$("#btnLogin").click(function(){
			
			var userName = $("#txtUserName").val();
			var password = $("#txtPassword").val();
			
			var validationFlag = 1;
			
			if(userName == "")
			{
				swal({
					title: "",
					text: "Please enter username.",
					showConfirmButton: true
				}, function(){
					//for focus
					setTimeout(function(){
						$('#txtUserName').focus();
					});
					validationFlag = 0;				
				});
			
				return false;	
			}
			else if(password == "")
			{
				swal({
						title: "",
						text: "Please enter password.",
						showConfirmButton: true
					}, function(){
						//for focus
						setTimeout(function(){
							$('#txtPassword').focus();
						});
						validationFlag = 0;		
					});
					
				return false; 
			}
			
			if(validationFlag == 1)
			{
				var formData = new FormData();
				formData.append('userName', userName);
				formData.append('password', password);
				
				/*$.ajax({
					
					type: "GET",
					url: "${pageContext.request.contextPath}/login/getMsg",
					success: function(data){
						alert(data);
					}
				});
				data: formData,
				*/
				
				//
				 
				$.ajax({  
					type: "POST",  
					url: "${pageContext.request.contextPath}/login/getMsg",    
					dataType: 'text', 
					cache: false,
					contentType: false,
					processData: false, 
					data: {userName:userName},  
					success: function(data){
						alert(data); 
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) {
						//alert(textStatus);
						$(".loader-div").hide(); 
						swal("Cancelled", "Server not responding.", "error"); 
					}					  
				});
			}
		});
	</script>
</html>
