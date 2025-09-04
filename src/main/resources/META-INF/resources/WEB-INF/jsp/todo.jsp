<!-- Header -->
<%@ include file="common/header.jspf"%>

<body>
    <!-- Navbar -->
    <%@ include file="common/navigation.jspf"%>

<style>
    .container{
    max-width: 600px;
    margin-top: 50px;
    }
</style>

<div class="container my-5 text-secondary">
    <form:form method="post" modelAttribute="todo">
        <c:choose>
            <c:when test="${not empty todo.id}">
                <h2 class="h3 fw-bold text-center mb-4">Update TODO</h2>
                <form:input type="hidden" path="id" />
                <form:input type="hidden" path="username" />
            </c:when>
            <c:otherwise>
                <h2 class="h3 fw-bold text-center mb-4">Add a ${username} New TODO</h2>
            </c:otherwise>
        </c:choose>

        <div class="mb-3">
            <form:label path="description" class="form-label">Description</form:label>
            <form:textarea id="description" path="description" class="form-control" rows="3" required="required" />
            <form:errors path="description" cssClass="text-warning" />
        </div>
        <div class="mb-3">
            <form:label path="targetDate" class="form-label">Target Date</form:label>
            <form:input type="date" id="targetDate" path="targetDate" class="form-control" required="required" />
            <form:errors path="targetDate" cssClass="text-warning" />
        </div>
        <div class="mb-3 form-check">
            <form:checkbox id="done" path="done" class="form-check-input" />
            <form:label path="done" class="form-check-label">Is this task done?</form:label>
        </div>
        <div class="d-flex justify-content-start gap-2 mt-4">
            <c:choose>
                <c:when test="${not empty todo.id}">
                    <button type="submit" class="btn btn-primary">Update TODO</button>
                </c:when>
                <c:otherwise>
                    <button type="submit" class="btn btn-primary">Add TODO</button>
                </c:otherwise>
            </c:choose>
            <a href="list-todos" class="btn btn-secondary">Cancel</a>
        </div>
    </form:form>
</div>

<!-- Footer -->
<%@ include file="common/footer.jspf"%>
