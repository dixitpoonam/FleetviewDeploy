<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="headernew1.jsp"%>

<html>
<head>
<title>Vehicle Master Entry</title>

<script src="js/datatable/feather.min.js"></script>
<script src="js/datatable/moment.js"></script>
<link rel="stylesheet" href="css/table/jquery-ui.css">
<link rel="stylesheet" href="css/table/temp.css">

<script src="js/datatable/jquery-ui.js"></script>
<!-- Add icon library -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

<script>
	function ValidateName() {
		alert("Onblur Name");
		var nameval = document.entryform.contactperson.value;
		var text = /^[a-zA-Z  .]+$/
		alert(nameval);
		/* 
		if(nameval==""||nameval==null){
		 alert("cannot leave name empty");
		}
		
		if(!text.test(nameval))
		{
		alert("Please Enter valid EmailID"); 
		return false;
		} */

	}
	function ValidateEmail() {
		//alert("onblur email...");
		var text = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,15})+$/;
		//alert(text);
		var txtEmail = document.entryform.email;
		//alert("email id:"+txtEmail.value);
		if (txtEmail.value == "") {
			alert("Please Enter EmailID");
			return false;
		}

		if (!text.test(txtEmail.value)) {
			alert("Please Enter valid EmailID");
			return false;
		}
	}

	function ValidatePhone() {
		//alert("on blur")
		var mob = document.entryform.phoneno.value;
		//alert("mob no:"+mob);
		var text = /^[0-9]+$/;

		if (mob == "") {
			alert("please enter Phone Number");
			return false;
		}
		if (!(mob == 0)) {
			if (isNaN(mob)) {
				alert("please enter numeric value");
				return false;
			}
			if (!text.test(mob)) {
				alert("please enter numeric value");
				return false;
			}
			return true;
		}
	}

	function validateAll() {
		alert("in Validate All");
		var nameval = document.entryform.contactperson.value;
		var mob = document.entryform.phoneno.value;
		var txtEmail = document.entryform.email;

		var text_email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,15})+$/;

	}
</script>

</head>
<body>

	<!-- BEGIN: Content-->
	<div class="app-content content ">
		<div class="content-overlay"></div>
		<div class="header-navbar-shadow"></div>
		<div class="content-wrapper container-xxl p-0">
			<div class="content-header row">
				<div class="content-header-left col-md-7 col-12 mb-2">
					<div class="row breadcrumbs-top">
						<div class="col-10">
							<h3 class="content-header-title  mb-0" style="color: #060637"><b>Vehicle
								Maintenance Entry Module</b></h3>
						</div>
					</div>
				</div>
				<div
					class="content-header-right text-md-end col-md-5 col-12 d-md-block d-none">
					<div class="mb-1 breadcrumb-right">
						<div class="demo-inline-spacing mb-1">
							<button
								class="engage-help-toggle btn  btn-primary h-35px  btn-color-gray-700 btn-active-color-gray-900 shadow-sm rounded-top-0 btn2"
								data-bs-toggle="modal" data-bs-target="#registerComplaintModal">
								Register Complaint</button>

							<button id="kt_engage_demos_toggle"
								class="engage-demos-toggle btn  btn-primary h-35px  btn-color-gray-700 btn-active-color-gray-900 shadow-sm fs-6rounded-top-0 btn2">
								<span id="kt_engage_demos_label">Help</span>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="content-body">
				<!--  start content body -->
				<!-- Basic Vertical form layout section start -->

				<section class="sectionNew" id="basic--layouts">
					<div class="row">
						<div class="col-md-12 col-12">
							<div class="card">

								<div class="card-body card">
									<!-- Start card body -->
									<form name="entryform" class="form form-vertical" method="POST">

										<div class="row align-item start">
											<div class="col-4">
												<div class="mb-2">
													<label for=" User Name:-" class="tcolor"><b>Vehicle:</b></label> 
												<select class="form-select" aria-label="Default select example">
														<option selected>City</option>
														<option value="1">Pune</option>
														<option value="2">Mumbai</option>
														<option value="3">Kolhapur</option>
											    </select>
												</div>
											</div>
											<div class="col-4">
												<div class="md-2">
													<label for=" First Name:-" class="tcolor"><b>
															Maintenance Type:</b></label><br>
													<select class="form-select" aria-label="Default select example">
														<option selected>City</option>
														<option value="1">Pune</option>
														<option value="2">Mumbai</option>
														<option value="3">Kolhapur</option>
											    </select>
												</div>
											</div>
											<div class="col-4">
												<label for="Last Name" class="tcolor"><b> Maintenance Details: </b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter Maintenance Details" name="psw">
												</div>
											</div>
										</div>
										<div class="row align-item start">
											
											<div class="col-4">
												<label class="tcolor">Maintenance Date:</label>
									<div class="input-group input-group-merge">
			
										<input type="text" name="data" id="data" class="form-control"
											value=""> <span class="input-group-text"><svg
												xmlns="http://www.w3.org/2000/svg" width="14" height="14"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
												class="feather feather-calendar">
												<rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
												<line x1="16" y1="2" x2="16" y2="6"></line>
												<line x1="8" y1="2" x2="8" y2="6"></line>
												<line x1="3" y1="10" x2="21" y2="10"></line></svg></span>
									</div>
			
									<script>
													$(document).ready(function() {
														$( function() {
							   				 $( "#data" ).datepicker({    
									    dateFormat: 'dd-M-yy',
										changeMonth: true,
							            changeYear: true
							      				 	});
							 				 } );
											});
			
							    </script>
											</div>
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Maintenance Km</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label for="  New Password:-" class="tcolor"><b>
														Next Maintenance Date </b></label><br>
												<div class="input-group input-group-merge">
			
										<input type="text" name="data1" id="data1" class="form-control"
											value=""> <span class="input-group-text"><svg
												xmlns="http://www.w3.org/2000/svg" width="14" height="14"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
												class="feather feather-calendar">
												<rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect>
												<line x1="16" y1="2" x2="16" y2="6"></line>
												<line x1="8" y1="2" x2="8" y2="6"></line>
												<line x1="3" y1="10" x2="21" y2="10"></line></svg></span>
									</div>
			
									<script>
													$(document).ready(function() {
														$( function() {
							   				 $( "#data1" ).datepicker({    
									    dateFormat: 'dd-M-yy',
										changeMonth: true,
							            changeYear: true
							      				 	});
							 				 } );
											});
			
							       </script>
											</div>
										</div>
										<div class="row align-item start">
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Next Maintenance After</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter Maintenance" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Vendor Name</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter Maintenance in km" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label  class="tcolor"><b> Amount	</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										</div>	
											
										
										<div class="row align-item start">
											
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b> Reciept No</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										
											
                                      
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Document ID</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Tyre Serial No</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										</div>	
										
										<div class="row align-item start">
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Tyre Details</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Maintenance Engine Hours</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Next Engine Hours</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										</div>	
										<div class="row align-item start">
											
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Alert Before Days</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Email To Address</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>File Upload</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										</div>	
										
										<div class="row align-item start">
											<div class="col-4">
												<label for="Old Password:-" class="tcolor"><b>Remark</b></label><br>
												<div class="input-container">
													<input class="input-field" type="text"
														placeholder="Enter your Old Password" name="psw">
												</div>
											</div>
										 </div>	
											
										<div class="d-grid gap-2 col-6 mx-auto">
											<button class="btn btn-primary btn2" type="submit">Submit</button>
										</div>

									</form>
								</div>
								<!--  end of card body -->
							</div>
						</div>
					</div>
				</section>
				<!-- Basic Vertical form layout section end -->
			</div>
		</div>
		<!--  end content body -->
	</div>
	<!-- end content wrapper-->
	</div>
	<!-- end app-content -->
	<!-- END: Content-->

	<div class="sidenav-overlay"></div>
	<div class="drag-target"></div>
	<script>
		$(window).on('load', function() {
			if (feather) {
				feather.replace({
					width : 14,
					height : 14
				});
			}
		})
	</script>

	<br>
	<%@ include file="footernew1.jsp"%>
</body>
</html>
