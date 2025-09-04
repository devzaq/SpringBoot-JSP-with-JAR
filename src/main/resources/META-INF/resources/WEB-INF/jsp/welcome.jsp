<!-- Header -->
<%@ include file="common/header.jspf"%>

<body>
    <!-- Navbar -->
    <%@ include file="common/navigation.jspf"%>

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

<!-- Footer -->
<%@ include file="common/footer.jspf"%>
