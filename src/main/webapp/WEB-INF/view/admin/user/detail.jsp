<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Create User</title>

                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">


            </head>

            <body>

                <div class="card" style="width: 18rem;">
                    <div class="card-header">
                        User Detail
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">${user.id}</li>
                        <li class="list-group-item">${user.email}</li>
                        <li class="list-group-item">${user.fullName}</li>
                        <li class="list-group-item">${user.phone}</li>
                        <li class="list-group-item">${user.address}</li>
                        <li class="list-group-item">${user.role.name}</li>
                        <li class="list-group-item"><img style="width: 100px; height: 100px; object-fit: cover;"
                                src="/images/admin/${user.avatar}" alt=""></li>
                    </ul>
                </div>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

            </body>

            </html>