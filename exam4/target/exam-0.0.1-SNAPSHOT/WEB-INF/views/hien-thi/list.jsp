<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>THANH PC</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">



    <table class="table table-striped" border="1">
        <thead>
        <tr>
            <th>Ten dich vu</th>
            <th>Don gia</th>
            <th>Don vi tien</th>
            <th>Ten loai dich vu</th>
            <th>Mo ta loai dich vu</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="x" items="${listDichVu}">
            <tr>
                <td>${x.ten_dich_vu}</td>
                <td>${x.don_gia}</td>
                <td>${x.don_vi_tien}</td>
                <td>${x.loaiDichVu.ten_loai_dich_vu}</td>
                <td>${x.loaiDichVu.mo_ta}</td>
                <td>
                    <a class="btn btn-info" href="/dich-vu/detail/${x.id}">Detail</a>
                    <a class="btn btn-danger" href="/dich-vu/delete/${x.id}" onclick="return confirm('Bạn có muốn xóa không ?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
