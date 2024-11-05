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
    <form:form action="/dich-vu/add" modelAttribute="dichvu" method="post">

        <div class="mb-3">
            <label for="ten" class="form-label">Tên dịch vụ</label>
            <form:input path="tenDichVu" type="text" class="form-control" id="ten"/>
            <i class="text-danger"><form:errors path="tenDichVu"/></i>
        </div>

        <div class="mb-3">
            <label for="dg" class="form-label">Đơn giá</label>
            <form:input path="donGia" type="number" class="form-control" id="dg"/>
            <i class="text-danger"><form:errors path="donGia"/></i>
        </div>

        <div class="mb-3">
            <label for="dvt" class="form-label">Đơn vị tiền</label>
            <form:input path="donViTien" type="text" class="form-control" id="dvt"/>
            <i class="text-danger"><form:errors path="donViTien"/></i>
        </div>

        <div class="mb-3">
            <label class="form-label">Tên loại dịch vụ</label>
            <form:select path="loaiDichVu" class="form-select">
                <form:option value="">---</form:option>
                <form:options items="${loaidichvu}" itemValue="id" itemLabel="tenLoaiDichVu"/>
            </form:select>
        </div>
        
        <button class="btn btn-success" type="submit">Add</button>
    </form:form>




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
                <td>${x.tenDichVu}</td>
                <td>${x.donGia}</td>
                <td>${x.donViTien}</td>
                <td>${x.loaiDichVu.tenLoaiDichVu}</td>
                <td>${x.loaiDichVu.moTaLoaiDichVu}</td>
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
