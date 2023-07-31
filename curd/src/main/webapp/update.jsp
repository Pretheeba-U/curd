<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Update Password</title>
<!-- Include Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: hsl(210, 50%, 90%);
}
</style>
</head>

<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card password-update-form">
					<div class="card-body">
						<h1 class="card-title text-center">Change Password</h1>
						<form action="controller" method="post">
							<div class="form-group">
								<label for="username">Username:</label> <input type="text"
									name="username" class="form-control" required>
							</div>
							<div class="form-group">
								<label for="password">New Password:</label> <input
									type="password" id="newPassword" name="password"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="password">Confirm Password:</label> <input
									type="password" id="confirmPassword" name="password"
									class="form-control" required> <span
									id="passwordMessage"></span>
							</div>

							<input type="hidden" name="action" value="updatepassword">
							<button type="submit" id="submitButton" disabled class="btn btn-primary btn-block">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Include Bootstrap JS and jQuery -->
<script>
    // Function to compare passwords and display messages
    function checkPasswordMatch() {
        const newPassword = document.getElementById("newPassword").value;
        const confirmPassword = document.getElementById("confirmPassword").value;
        const passwordMessage = document.getElementById("passwordMessage");
        const submitButton = document.getElementById("submitButton");

        if (newPassword === confirmPassword) {
            // Passwords match, show success message, enable the submit button, and remove error message
            passwordMessage.innerHTML = "<span style='color: green;'>Passwords match!</span>";
            submitButton.disabled = false;
        } else {
            // Passwords don't match, show error message, disable the submit button, and remove success message
            passwordMessage.innerHTML = "<span style='color: red;'>Passwords do not match!</span>";
            submitButton.disabled = true;
        }
    }

    // Add event listeners to check password match on input
    const newPasswordInput = document.getElementById("newPassword");
    const confirmPasswordInput = document.getElementById("confirmPassword");
    newPasswordInput.addEventListener("input", checkPasswordMatch);
    confirmPasswordInput.addEventListener("input", checkPasswordMatch);

    // Prevent form submission on enter key press
    document.getElementById("myForm").addEventListener("submit", function(event) {
        event.preventDefault();
    });
</script>
</body>

</html>
