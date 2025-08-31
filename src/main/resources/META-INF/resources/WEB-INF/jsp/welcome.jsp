<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <!-- Bootstrap CSS -->
    <link href="webjars\bootstrap\5.1.3\css\bootstrap.min.css" rel="stylesheet"/>
    <style>
            .btn-primary {
                background-color: darkviolet;
                border-color: darkviolet;
            }
            .btn-primary:hover {
                background-color: #5d00a1; /* A slightly darker shade for hover effect */
                border-color: #5d00a1;
            }
        </style>
</head>
<body class="bg-light">
    <!-- Main content container -->
    <div class="container my-5 text-center">
        <!-- Page Header -->
        <h1 class="display-4 fw-bold mt-5">Welcome to Our Website! ${name}</h1>
        <p class="lead text-muted">We are glad you're here. Explore our content and enjoy your visit.</p>
        <p class="lead text-muted">Feel free to navigate using the links below (if applicable).</p>
        <div>
            <a href="list-todos" class="btn btn-primary btn-lg mt-3">Manage Your TODOs</a>
        </div>
    </div>
    <!-- jQuery and Bootstrap JavaScript -->
    <script src="webjars\jquery\3.6.0\jquery.min.js"></script>
    <script src="webjars\bootstrap\5.1.3\js\bootstrap.min.js"></script>
</body>
</html>
