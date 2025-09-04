<!-- Header -->
<%@ include file="common/header.jspf"%>

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

<!-- Footer -->
<%@ include file="common/footer.jspf"%>
