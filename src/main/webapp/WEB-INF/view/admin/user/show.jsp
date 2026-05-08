<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="Dự án laptopshop" />
            <title>Dashboard</title>
            <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
            <link href="/css/admin/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <div id="layoutSidenav_nav">
                    <jsp:include page="../layout/sidebar.jsp" />
                </div>
                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">User</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active">user</li>
                            </ol>

                            <div class="d-flex justify-content-between align-items-center">
                                <h2>Table user</h2>
                                <a href="/admin/user/create" class="btn btn-primary">Create a User</a>
                            </div>
                            <hr />
                            <div class="mt-3">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Fullname</th>
                                            <th scope="col">Phone number</th>
                                            <th scope="col">Role</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="user" items="${users}">
                                            <tr>
                                                <td>${user.id}</td>
                                                <td>${user.email}</td>
                                                <td>${user.fullName}</td>
                                                <td>${user.phone}</td>
                                                <td>${user.role.name}</td>
                                                <td>
                                                    <a href="/admin/user/${user.id}" class="btn btn-success btn-sm">
                                                        View
                                                    </a>

                                                    <a href="/admin/user/update/${user.id}"
                                                        class="btn btn-warning btn-sm">
                                                        Update
                                                    </a>

                                                    <form method="post" action="/admin/user/delete/${user.id}"
                                                        class="d-inline">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />

                                                        <button type="submit" class="btn btn-danger btn-sm">
                                                            Delete
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </main>
                </div>
            </div>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/admin/scripts.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
                crossorigin="anonymous"></script>
            <script src="assets/demo/chart-area-demo.js"></script>
            <script src="assets/demo/chart-bar-demo.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
                crossorigin="anonymous"></script>
            <script src="/js/admin/datatables-simple-demo.js"></script>
        </body>

        </html>