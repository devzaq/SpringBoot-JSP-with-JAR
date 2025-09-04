<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <c:choose>
        <c:when test="${not empty todo.id}">
            <title>Update TODO</title>
        </c:when>
        <c:otherwise>
            <title>Add TODO</title>
        </c:otherwise>
    </c:choose>
    <!-- Bootstrap CSS -->
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .btn-primary {
            background-color: darkviolet;
            border-color: darkviolet;
        }
        .btn-primary:hover {
            background-color: purple;
            border-color: purple;
        }
        .btn-secondary {
            background-color: purple;
            border-color: purple;
        }
        .btn-secondary:hover {
            background-color: darkviolet;
            border-color: darkviolet;
        }
    </style>
</head>
<body>
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

    <!-- jQuery and Bootstrap JavaScript -->
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
