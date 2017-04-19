<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Recommendation Engine</title>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Asap">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
* {
	font-family: 'Asap';
}
</style>
</head>
<body>
	<div style="margin-top: 16px;" class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="row">
					<div class="col-xs-4 col-xs-offset-4">
						<h1>Hello, stranger!</h1>
						<p>Pick a username. this is utopia.</p>
						<form method="get">
							<div class="form-group">
								<input name="user" placeholder="Username" class="form-control">
								<input name="pass" placeholder="password" class="form-control">
							</div>
							<button class="btn btn-primary">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>