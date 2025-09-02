<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Login</title>
    <!-- Bootstrap CSS -->
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet"/>
    <style>
        body {
            background-color: #f0f0f0;
        }
        .login-card {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-primary {
            background-color: darkviolet;
            border-color: darkviolet;
        }
        .btn-primary:hover {
            background-color: purple;
            border-color: purple;
        }
        .error-message {
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          background-color: red;
          color: white;
          text-align: center;
          padding: 10px;
          z-index: 1000;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <div class="container login-card w-100" style="max-width: 300px;">
        <c:if test="${not empty errorMessage}">
            <div class="error-message">Invalid username or password</div>
        </c:if>
        <h2 class="text-center mb-4">Login</h2>
        <form method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <input type="text" value="jack" id="username" name="username" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <input type="password" value="dummy"  id="password" name="password" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary w-100">Log In</button>
        </form>
    </div>
    <!-- jQuery and Bootstrap JavaScript -->
    <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
    <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
</body>
</html>
