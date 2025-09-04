 <!-- Header -->
    <%@ include file="common/header.jspf"%>

<body class="bg-light font-sans text-secondary">
    <!-- Navbar -->
    <%@ include file="common/navigation.jspf"%>
    <!-- Main content container -->
    <div class="container py-5" style="max-width: 500px;">
        <!-- Page Header -->
        <h1 class="h3 fw-bold text-center mb-4">My To-Do List</h1>

        <!-- To-Do Items List -->
        <div class="list-group">
            <c:forEach var="todo" items="${todos}">
                <div class="list-group-item shadow-sm rounded mb-3 p-4">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h5 class="fw-semibold <c:if test="${todo.done}">text-decoration-line-through text-muted</c:if>">
                            ${todo.description}
                        </h5>
                        <div class="form-check">
                            <label class="form-check-label small text-secondary me-2" for="doneCheck">Done</label>
                            <input class="form-check-input" type="checkbox" value="" id="doneCheck"
                                   <c:if test="${todo.done}">checked</c:if> >
                        </div>
                    </div>
                    <small class="d-block text-secondary mb-1">
                        <span class="fw-medium">Username:</span> ${todo.username}
                    </small>
                    <small class="d-block text-secondary mb-2">
                        <span class="fw-medium">Target Date:</span> ${todo.targetDate}
                    </small>
                    <!-- Days Remaining -->
                    <small class="d-block text-secondary mb-3">
                        <span class="fw-medium">Days Remaining:</span>
                        ${ChronoUnit.DAYS.between(LocalDate.now(), todo.targetDate)}
                    </small>
                    <div class="d-flex justify-content-start">
                        <a href="update-todo?id=${todo.id}">
                        <button class="btn btn-primary btn-sm me-2">
                            Edit
                        </button>
                        </a>
                        <a href="delete-todo?id=${todo.id}">
                        <button class="btn btn-secondary btn-sm">
                            Delete
                        </button>
                        </a>
                    </div>
                </div>
            </c:forEach>
            <a href="add-todo" class="btn btn-primary">Add TODO</a>
            <!-- A message to show if the list is empty -->
            <c:if test="${empty todos}">
                <div class="text-center p-4 text-secondary fst-italic">No to-do items found.</div>
            </c:if>
        </div>
    </div>

<!-- Footer -->
<%@ include file="common/footer.jspf"%>
