<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Error</title>
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

        .error-container {
            text-align: center;
            max-width: 400px;
            padding: 30px;
            border-radius: 5px;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .error-container h1 {
            color: red;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .error-container p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .error-container a {
            color: green;
            text-decoration: none;
            font-size: 20px;
        }

        .error-image {
            display: block;
            max-width: 200px;
            margin: 0 auto;
        }
    </style>
</head>

<body>
    <div class="error-container">
        <img class="error-image" src="error-illustration.png" alt="Error Illustration">
        <h1>Something Went Wrong!</h1>
        <p>Please try again or go back to the login page.</p>
        <a href="login.jsp">Login</a>
    </div>
</body>

</html>
