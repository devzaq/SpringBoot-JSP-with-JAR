<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add TODO</title>
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
        <h2 class="h3 fw-bold text-center mb-4">Add a ${username} New TODO</h2>
        <form:form method="post" modelAttribute="todo">

            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <form:textarea id="description" path="description" class="form-control" rows="3" required="required" />
                <form:errors id="description" path="description" cssClass="text-danger" />
            </div>

            <div class="mb-3">
                <label for="targetDate" class="form-label">Target Date</label>
                <form:input type="date" value="${todo.targetDate}" id="targetDate" path="targetDate" class="form-control" required="required" />
                <form:errors id="targetDate" path="targetDate" cssClass="text-danger" />
            </div>

            <div class="mb-3 form-check">
                <form:checkbox id="done" path="done" class="form-check-input" />
                <label for="done" class="form-check-label">Is this task done?</label>
            </div>
            <div class="d-flex justify-content-start gap-2 mt-4">
                <button type="submit" class="btn btn-primary">Add TODO</button>
                <a href="list-todos" class="btn btn-secondary">Cancel</a>
            </div>
        </form:form>
    </div>

    <!-- jQuery and Bootstrap JavaScript -->
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
