<cfparam name="rc.pagetitle" default="Blog">
<cfparam name="rc.pageheading" default="">
<cfoutput>
<html>
<head>
	<title>#rc.pagetitle#</title>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

	<style>
		##wrap {
			width: 600px;
			margin: 0 auto;
			padding:10px;
		}
		##login{
			width: 300px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<div class="container-fluid" id="container">
		<div id="wrap">
		<div class="page-header">
			<h1 class="text-center neon" style="font-size: 150px; color:Orange;"><strong>B</strong><sup>log</sup><small style="font-size:20px;">Express Yourself</small> </h1>
			</br>
		</div>
		#body#
		</div>
	</div>
</body>
</html>
</cfoutput>