<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const productFile = $("#productFile");
                        productFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#productPreview").attr("src", imgURL);
                            $("#productPreview").css({ "display": "block" });
                        });
                    }); 
                </script>
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
                                <h1 class="mt-4">Create Product</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active">product</li>
                                </ol>
                            </div>

                            <div class="d-flex justify-content-center align-items-center vh-100 container">
                                <div class="col-md-8 col-lg-6">
                                    <h1>Create Product</h1>
                                    <form:form class="row g-3" action="/admin/product/create" method="post"
                                        modelAttribute="newProduct" enctype="multipart/form-data">
                                        <div class="col-md-6">
                                            <label class="form-label">Tên sản phẩm:</label>
                                            <form:input path="name" type="text" class="form-control" />
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Giá:</label>
                                            <form:input path="price" type="text" class="form-control" />
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label">Mô tả chi tiết</label>
                                            <form:input path="detailDesc" type="text" class="form-control" />
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label">Mô tả ngắn</label>
                                            <form:input path="shortDesc" type="text" class="form-control" />
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label">Số lượng</label>
                                            <form:input path="quantity" type="number" class="form-control" />
                                            <div class="valid-feedback">
                                                Looks good!
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Nhà sản xuất</label>
                                            <form:select class="form-select" path="factory">
                                                <form:option value="APPLE">Apple (MacBook)</form:option>
                                                <form:option value="ASUS">Asus</form:option>
                                                <form:option value="LENOVO">Lenovo</form:option>
                                                <form:option value="DELL">Dell</form:option>
                                                <form:option value="LG">LG</form:option>
                                                <form:option value="ACER">Acer</form:option>
                                            </form:select>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="form-label">Mục đích sử dụng</label>
                                            <form:select class="form-select" path="target">
                                                <form:option value="GAMING">Gaming</form:option>
                                                <form:option value="SINHVIEN-VANPHONG">Sinh viên - Văn phòng
                                                </form:option>
                                                <form:option value="THIET-KE-DO-HOA">Thiết kế đồ họa</form:option>
                                                <form:option value="MONG-NHE">Mỏng nhẹ</form:option>
                                            </form:select>
                                        </div>
                                        <div class="col-12">
                                            <label class="form-label">Image</label>
                                            <input class="form-control" type="file" id="productFile" name="productFile"
                                                accept=".png, .jpg, .jpeg" />
                                        </div>
                                        <div class="col-12">
                                            <img style="max-height: 250px; display: none;" alt="product preview"
                                                id="productPreview">
                                        </div>
                                        <div class="col-12 mb-5">
                                            <button class="btn btn-primary" type="submit">Create</button>
                                        </div>
                                    </form:form>
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