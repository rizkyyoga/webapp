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
		<form class="login-form">
			<input name="_tk" value="${csrf}" class="hidden">
			<h3 class="form-title font-green">Login</h3>
			<div class="alert alert-danger display-hide">
				<button class="close" data-close="alert"></button>
				<span> Enter any username and password. </span>
			</div>
			<c:if test="${not empty message}">
				<div class="alert alert-danger margin-bottom-10">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true"></button>
					<i class="fa fa-times-circle fa-lg"></i>&nbsp;&nbsp;${message}
				</div>
			</c:if>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<input id="iemail" type="text"
					class="form-control form-control-solid placeholder-no-fix"
					name="email" placeholder="Email" autocomplete="off" />
			</div>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Mobile
					Number</label>
				<input id="imobileNumber" type="text" required="true" onkeypress="return isNumberKey(event)"
					class="form-control form-control-solid placeholder-no-fix"
					name="mobileNumber" placeholder="Mobile Number" autocomplete="off" />
			</div>
			<div class="form-actions">
				<button id="registerBtn" type="button"
					class="btn btn-block green uppercase">Login</button>
			</div>
		</form>
		<!-- END LOGIN FORM -->
	</div>
	<div class="copyright">2019 © Self.</div>
	<%@include file="body-script2.jsp"%>
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<!-- END THEME LAYOUT SCRIPTS -->
	<script>
		$(document).ready(function() {
		});
	</script>
</body>
</html>