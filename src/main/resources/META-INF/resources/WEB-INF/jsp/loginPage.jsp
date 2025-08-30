<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f0f0;
            margin: 0;
        }
        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        .form-group input[type="submit"] {
            background-color: darkviolet;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background-color 0.3s ease;
        }
        .form-group input[type="submit"]:hover {
            background-color: purple;
        }
        .error-message {
          position: fixed; /* Positions the div relative to the viewport */
          top: 0;          /* Aligns it to the very top */
          left: 0;         /* Aligns it to the left side */
          width: 100%;     /* Makes it span the full width of the screen */
          background-color: red; /* Sets the background color to red */
          color: white;    /* Sets the text color to white for contrast */
          text-align: center; /* Centers the text */
          padding: 10px;   /* Adds some space around the text */
          z-index: 1000;   /* Ensures the message appears on top of other content */
        }
    </style>
</head>
<body>
    <div class="login-container">
    <c:if test="${not empty errorMessage}">
        <div class="error-message">Invalid username or password</div>
    </c:if>
        <h2>Login</h2>
        <form method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Log In">
            </div>
        </form>
    </div>
</body>
</html>