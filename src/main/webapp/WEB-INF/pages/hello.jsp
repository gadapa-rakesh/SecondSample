<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%-- Bootstrap specific files - need JS file to get action functionalities --%>
	<link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://getbootstrap.com/examples/starter-template/starter-template.css" rel="stylesheet">
	<%-- Required JS files - Order of inclusion should not change --%>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.7.0/underscore-min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/backbone.js/1.1.2/backbone-min.js"></script>

	<script>
		var BackModel = Backbone.Model.extend({
			url: window.location.origin+"/getdata"

		});

		var ob = new BackModel();
		ob.fetch();
		console.log(ob.toJSON());


	</script>

</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Backbone sample</a>
		</div>
	</div>
</nav>

<div class="container">

	<div class="starter-template">
		<h1>Backbone sample Application</h1>
		<h1 id="firstData"></h1>
	</div>

</div>

</body></html>