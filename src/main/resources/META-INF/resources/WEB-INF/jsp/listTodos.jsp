<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To-Do List</title>
    <!-- Tailwind CSS CDN for styling -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom styles for buttons */
        .btn-primary {
            background-color: darkviolet;
        }
        .btn-primary:hover {
            background-color: #5d00a1; /* A slightly darker shade for hover effect */
        }
        .btn-secondary {
            background-color: purple;
        }
        .btn-secondary:hover {
            background-color: #800080; /* A slightly darker shade for hover effect */
        }
    </style>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="java.time.LocalDate, java.time.temporal.ChronoUnit" %>
</head>
<body class="bg-gray-100 font-sans text-gray-800">
    <!-- Main content container -->
    <div class="container mx-auto p-4 sm:p-8 max-w-lg">
        <!-- Page Header -->
        <h1 class="text-3xl font-bold text-center mb-6 text-darkviolet">${name}'s To-Do List</h1>

        <!-- To-Do Items List -->
        <div class="space-y-4">
            <c:forEach var="todo" items="${todos}">
                <div class="bg-white p-6 rounded-lg shadow-lg">
                    <div class="flex items-center justify-between mb-2">
                        <h3 class="text-lg font-semibold <c:if test="${todo.done}">line-through text-gray-400</c:if>">
                            <span class="text-sm text-gray-500 font-normal mr-2">#${todo.id}</span>
                            ${todo.description}
                        </h3>
                        <div class="flex items-center space-x-2">
                            <span class="text-sm font-normal text-gray-500">Done</span>
                            <input type="checkbox"
                                   <c:if test="${todo.done}">checked</c:if>
                                   class="form-checkbox text-purple-600 rounded-md h-5 w-5 border-gray-300 focus:ring-purple-500 cursor-pointer">
                        </div>
                    </div>
                    <div class="text-sm text-gray-500 mb-2">
                        <span class="font-medium">Username:</span> ${todo.username}
                    </div>
                    <div class="text-sm text-gray-500 mb-2">
                        <span class="font-medium">Target Date:</span> ${todo.targetDate}
                    </div>
                    <!-- Days Remaining -->
                    <div class="text-sm text-gray-500 mb-4">
                        <span class="font-medium">Days Remaining:</span>
                        <span class="font-semibold">${ChronoUnit.DAYS.between(LocalDate.now(), todo.targetDate)}</span>
                    </div>
                    <div class="flex space-x-2">
                        <button class="btn-primary text-white font-semibold py-1 px-3 rounded-md shadow hover:shadow-md transition-all text-sm">
                            Edit
                        </button>
                        <button class="btn-secondary text-white font-semibold py-1 px-3 rounded-md shadow hover:shadow-md transition-all text-sm">
                            Delete
                        </button>
                    </div>
                </div>
            </c:forEach>

            <!-- A message to show if the list is empty -->
            <c:if test="${empty todos}">
                <div class="text-center p-6 text-gray-500 italic">No to-do items found.</div>
            </c:if>
        </div>
    </div>
</body>
</html>
