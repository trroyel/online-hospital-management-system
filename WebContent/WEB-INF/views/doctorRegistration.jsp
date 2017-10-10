<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital+ | Add doctor</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="patients registration" />

<jsp:include page="_styles.jsp"></jsp:include>

</head>

<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">

				<!--header start here-->
				<jsp:include page="_header.jsp"></jsp:include>
				<!--heder end here-->

				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.jsp">Home</a><i
						class="fa fa-angle-right"></i>Doctors <i class="fa fa-angle-right"></i>
						Doctor Registration</li>
				</ol>
				<!--grid-->
				<div class="validation-system">

					<div class="validation-form">
						<h3>
							<center>
								<u>&nbsp;&nbsp;&nbsp;Doctor Registration.&nbsp;&nbsp;&nbsp;</u>
							</center>
						</h3>
						
						<p class="form-message">${errorString}</p>

						<form action="${pageContext.request.contextPath}/addDoctor" method="post">

							<div class="vali-form">
								<div class="col-md-6 form-group1">
									<label class="control-label">Name</label> <input type="text"
										name="name" placeholder="Doctor Name" required="">
								</div>

								<div class="col-md-6 form-group1 form-last">
									<label class="control-label">Qualification</label> <input
										type="text" name="qualification"
										placeholder="Enter Doctors Qualification" required="">
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="clearfix"></div>

							<div class="clearfix"></div>
							<div class="vali-form vali-form1">
								<div class="col-md-6 form-group2">
									<label class="control-label">Designation</label>
									<select name="designation">
										<option value="null">Select Designation</option>
										<option value="Consultant">Consultant </option>
										<option value="Associate Consultant">Associate Consultant </option>
										<option value="Other">Other </option>
									</select>
								</div>

								<div class="col-md-6 form-group2 form-last">
									<label class="control-label">Specialities</label>
									<select name="specialities">
										<option value="null">Select Specialities</option>
										<option value="Cardiology">Cardiology</option>
										<option value="Heart Surgery">Heart Surgery</option>
										<option value="Skin Care">Skin Care</option>
										<option value="Body Check-up">Body Check-up</option>
										<option value="Numerology">Numerology</option>
										<option value="Diagnosis">Diagnosis</option>
										<option value="Others">Others</option>
									</select>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="clearfix"></div>

							<div class="col-md-12 form-group1 ">
								<label class="control-label">Doctors Biodata</label>
								<textarea name="biodata" placeholder="Doctors Biodata..."
									required=""></textarea>
							</div>


							<div class="clearfix"></div>
							<div class="vali-form">
								<div class="vali-form vali-form1">
									<div class="col-md-6 form-group1">
										<label class="control-label">CheckUp Fee</label> <input
											type="text" name="checkup_fee"
											placeholder="Enter CheckUp Fee" required="">
									</div>

									<div class="col-md-6 form-group1 form-last">
										<label class="control-label">Phone</label> <input type="text"
											name="phone_no" placeholder="Phone No" required="">
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="col-md-12 form-group1 ">
									<label class="control-label">Email</label> <input type="email"
										name="email" placeholder="Email" required="">
								</div>

								<div class="clearfix"></div>
								<div class="vali-form">

									<div class="col-md-12 form-group">
										<button type="submit" name="action" value="submit"
											class="btn btn-green">&nbsp;Submit&nbsp;</button>
										<button type="reset" class="btn btn-reset">&nbsp;
											Reset &nbsp;</button>
										<a class="btn btn-blue" href="${pageContext.request.contextPath}/doctorList">View All</a>
									</div>
									<div class="clearfix"></div>
						</form>

						<!---->
					</div>

				</div>
				<!--//grid-->

				<!-- script-for sticky-nav -->
				<script>
					$(document).ready(function() {
						var navoffeset = $(".header-main").offset().top;
						$(window).scroll(function() {
							var scrollpos = $(window).scrollTop();
							if (scrollpos >= navoffeset) {
								$(".header-main").addClass("fixed");
							} else {
								$(".header-main").removeClass("fixed");
							}
						});

					});
				</script>
				<!-- /script-for sticky-nav -->
				<!--inner block start here-->
				<div class="inner-block"></div>
				<!--inner block end here-->
				<!--copy rights start here-->
				<div class="copyrights">
					<p>
						© 2016 HelthCare+. All Rights Reserved | Design by <a
							href="#">MisirAli</a>
					</p>
				</div>
				<!--COPY rights end here-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<jsp:include page="_sidebar.jsp"></jsp:include>
		<!-- sidebar menu end -->


		<div class="clearfix"></div>
	</div>
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}

					toggle = !toggle;
				});
	</script>
	<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- /Bootstrap Core JavaScript -->

</body>
</html>