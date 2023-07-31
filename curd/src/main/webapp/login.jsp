<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Login Page with Bootstrap Card</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: hsl(210, 50%, 90%);
}

.login-card {
	max-width: 400px;
	margin: 0 auto;
	padding: 30px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	background-color: #fff;
}

.login-card h6 {
	margin-top: 20px;
	text-align: center;
}
</style>
</head>

<body>
	<div class="container mt-5">
		<div class="login-card">
			<form action="controller" method="post">
				<div class="form-group">
				<h3><center>LOGIN</center></h3>
					<label for="username">Username:</label> <input type="text"
						class="form-control" id="username" name="username" required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label> <input type="password"
						class="form-control" id="password" name="password" required>
				</div>
				<div class="form-group">
					<h6>
						<a href="update.jsp" target="_blank" class="text-success">Forgot
							Password?</a>
					</h6>
				</div>
				<input type="hidden" name="action" value="login">
				<button type="submit" class="btn btn-primary btn-block">Login</button>
			</form>
			<div class="form-group mt-3">
				<h6>
					<a href="update.jsp" target="_blank" class="text-success">Create
						Account</a>
				</h6>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS (Optional, for some Bootstrap components) -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
