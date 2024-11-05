<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container mt-3">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>TEN SAN PHAM</th>
            <th>IMG</th>
            <th>GIA</th>
            <th>Activate</th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="sp" items="${sp}">
            <tr>
                <td>${sp.id}</td>
                <td>${sp.tenSanPham}</td>

                <td>
                    <img src="../../../Image_Phone/${sp.img}" class="img-fluid" alt="Product Image" style="max-width: 100px;">
                </td>

                <td>${sp.gia}</td>

                <td>${sp.trangthai ? "CON HANG":"HET HANG "}</td>


            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href=""><button class="btn btn-primary" >THEM SAN PHAM</button></a>
</div>

</body>
</html>
