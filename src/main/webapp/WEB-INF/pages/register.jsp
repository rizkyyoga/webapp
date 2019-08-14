<%@include file="taglibs.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="utf-8" />
<title>Webapp</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="Preview page of Metronic Admin Theme #2 for "
	name="description" />
<meta content="" name="author" />
<%@include file="body-styles2.jsp"%>
<!-- BEGIN PAGE LEVEL STYLES -->
<link
	href="${pageContext.request.contextPath}/resources/assets/pages/css/login.min.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<style>
.login .content .form-control {
	background-color: #fff;
}

.mt-checkbox>span, .mt-radio>span {
	border: 1px solid #E6E6E6;
	background: #fff;
}

.mt-checkbox:hover>input:not([disabled])~span, .mt-checkbox>input:focus~span, .mt-radio:hover>input:not([disabled])~span, .mt-radio>input:focus~span {
	background: #fff;
}

.mt-checkbox:hover>input:not([disabled]):checked~span, .mt-checkbox>input:checked~span, .mt-radio:hover>input:not([disabled]):checked~span, .mt-radio>input:checked~span {
    background: #fff;
}
.error{
	color:red;
}
</style>
</head>
<!-- END HEAD -->

<body class=" login">
	<!-- BEGIN LOGO -->
	<!-- <div class="logo"></div> -->
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="login-form" id="myform">
			<input name="_tk" value="${csrf}" class="hidden">
			<h3 class="form-title font-green">Registration</h3>
			<div id="cxmessage" class="alert alert-danger display-hide">
				<span id="xmessage"></span>
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Mobile
					Number</label>
				<input id="imobileNumber" type="text" required="true" onkeypress="return isNumberKey(event)"
					class="form-control form-control-solid placeholder-no-fix"
					name="mobileNumber" placeholder="Mobile Number" autocomplete="off" />
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">First
					Name</label>
				<input id="ifirstName" type="text" required="true"
					class="form-control form-control-solid placeholder-no-fix"
					name="firstName" placeholder="First Name" autocomplete="off" />
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Last
					Name</label>
				<input id="ilastName" type="text" required="true"
					class="form-control form-control-solid placeholder-no-fix"
					name="lastName" placeholder="Last Name" autocomplete="off" />
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<div class="row">
					<label class="control-label col-md-12">Date of Birth</label>
				</div>
				<div class="row">
					<div class="col-md-4">
						<select id="iyear" name="year"
							class="form-control col-md-4">
							<option value="">Year</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1976">1976</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
						</select>
					</div>
					<div class="col-md-4">
						<select id="imonth" name="month" class="form-control">
							<option value="">Month</option>
							<option value="01">January</option>
							<option value="02">February</option>
							<option value="03">March</option>
							<option value="04">April</option>
							<option value="05">May</option>
							<option value="06">June</option>
							<option value="07">July</option>
							<option value="08">August</option>
							<option value="09">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						</select>
					</div>
					<div class="col-md-4">
						<select id="idate" name="date"
							class="form-control col-md-4">
							<option value="">Date</option>
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>
							<option value="09">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Gender</label>
				<div class="mt-radio-inline">
					<label class="mt-radio"> <input type="radio" name="gender"
							value="m" class="form-control" /> Male <span></span>
					</label> <label class="mt-radio"> <input type="radio" name="gender"
							value="f" class="form-control" /> Female <span></span>
					</label>
				</div>
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<input id="iemail" type="email" required="true"
					class="form-control form-control-solid placeholder-no-fix"
					name="email" placeholder="Email" autocomplete="off" />
			</div>
			<div class="form-actions">
				<button type="button" id="registerBtn"
					class="btn btn-block green uppercase">Register</button>
			</div>
			<div class="form-actions" id="loginContainer" style="display: none;">
				<a id="loginBtn" href="${pageContext.request.contextPath}/login"
					class="btn btn-block green uppercase">Login</a>
			</div>
		</form>
		<!-- END LOGIN FORM -->
	</div>
	<div class="copyright">2019 © Self.</div>
	<%@include file="body-script2.jsp"%>
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<!-- <script
		src="${pageContext.request.contextPath}/resources/assets/pages/scripts/login.min.js"
		type="text/javascript"></script> -->
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<!-- END THEME LAYOUT SCRIPTS -->
	<script>
		$(document).ready(function() {
			$("#registerBtn").click(function() {
				$("#cxmessage").addClass("display-hide");
				var validator = $("#myform").validate();
				if(validator.form()){
					var regex = /^(62|0)\d{9,12}$/g;
					if(!regex.test($('#imobileNumber').val())){
						validator.showErrors({
							  "mobileNumber": "Phone number not valid"
						});
					}else{
						$.ajax({
							method : "POST",
							url : "${pageContext.request.contextPath}/register",
							data : {
								"_tk" : '${csrf}',
								"mobileNumber" : $('#imobileNumber').val(),
								"firstName" : $('#ifirstName').val(),
								"lastName" : $('#ilastName').val(),
								"month" : $('#imonth').val(),
								"date" : $('#idate').val(),
								"year" : $('#iyear').val(),
								"gender" : $("input[name='gender']:checked").val(),
								"email" : $('#iemail').val()
							},
							beforeSend : function(xhr) {
							}
						}).done(function(data) {
							if(data.code == '00'){
								$('.login .content .form-control').css('background-color','#dde3ec');
								$('.mt-checkbox>span, .mt-radio>span').css('background','#E6E6E6');
								$('option:not(:selected)').attr('disabled', true);
								$("#imobileNumber").prop("readonly", true);
								$("#ifirstName").prop("readonly", true);
								$("#ilastName").prop("readonly", true);
								$("#imonth").prop("readonly", true);
								$("#idate").prop("readonly", true);
								$("#iyear").prop("readonly", true);
								$(':radio:not(:checked)').attr('disabled', true);
								$("#iemail").prop("readonly", true);
								$('#loginContainer').show();	
							}else{
								$("#cxmessage").removeClass("display-hide");
								$("#xmessage").html(data.message);
							}
						}).fail(function(xhr, status, error) {
						});
					}
				}else{
					
				}
			});
		});
		function isNumberKey(evt) {
			var charCode = (evt.which) ? evt.which : event.keyCode;
			if(charCode == 86 || charCode == 118 || charCode == 99 || charCode == 67)
				return true;
			if (charCode > 31 && (charCode < 48 || charCode > 57))
				return false; 
			return true;
		}
	</script>
</body>
</html>