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

                <div class="d-flex justify-content-center align-items-center vh-100 container mt-5">
                    <div class="col-md-8 col-lg-6">
                        <h1>Update User</h1>
                        <form:form class="row g-3" action="/admin/user/update/${updateUser.id}" method="post"
                            modelAttribute="updateUser">
                            <div class="col-12">
                                <label class="form-label">Email</label>
                                <form:input path="email" type="email" class="form-control is-valid" />
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Phone number</label>
                                <form:input path="phone" type="text" class="form-control is-valid" />
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Fullname</label>
                                <form:input path="fullName" type="text" class="form-control is-valid" />
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Address</label>
                                <form:input path="address" type="text" class="form-control is-valid" />
                                <div class="valid-feedback">
                                    Looks good!
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary" type="submit">Update</button>
                            </div>
                        </form:form>
                    </div>
                </div>


                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

            </body>

            </html>