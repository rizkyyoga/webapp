<%@include file="taglibs.jsp"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7.5
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<title>VAS Reff WT</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta
	content="Preview page of Metronic Admin Theme #4 for 404 page option 2"
	name="description" />
<meta content="" name="author" />
<%@include file="body-styles2.jsp"%>
<!-- BEGIN PAGE LEVEL STYLES -->
<link
	href="${pageContext.request.contextPath}/resources/assets/pages/css/error.min.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/assets/pages/img/favicon-32x32.png"
	sizes="32x32">
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/assets/pages/img/favicon-16x16.png"
	sizes="16x16">
</head>
<!-- END HEAD -->

<body class=" page-404-full-page">
	<div class="row">
		<div class="col-md-12 page-404">
			<div class="number font-grey-mint">403</div>
			<div class="details">
				<h3>Oops! Forbidden.</h3>
				<p>You don't have permission to access this page.</p>
				<p>
					<a href="${pageContext.request.contextPath}"
						class="btn grey-mint btn-outline"> Return home </a> <br>
				</p>
			</div>
		</div>
	</div>
	<!--[if lt IE 9]>
<script src="../assets/global/plugins/respond.min.js"></script>
<script src="../assets/global/plugins/excanvas.min.js"></script> 
<script src="../assets/global/plugins/ie8.fix.min.js"></script> 
<![endif]-->
	<%@include file="body-script2.jsp"%>
	<script>
		$(document).ready(function() {
			$('#clickmewow').click(function() {
				$('#radio1003').attr('checked', 'checked');
			});
		})
	</script>
</body>

</html>