<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: darkviolet;">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <i class="fas fa-tasks me-2"></i>Todo App
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="list-todos">Todos</a>
                </li>
            </ul>
            <div class="d-flex">
                <!-- This form will handle the logout action as a POST request -->
                <form action="/logout" method="post">
                    <button class="btn btn-outline-light" type="submit">Logout</button>
                </form>
            </div>
        </div>
    </div>
</nav>
