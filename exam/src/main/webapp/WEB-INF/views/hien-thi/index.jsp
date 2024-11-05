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
            <form:input path="ten_dich_vu" type="text" class="form-control" id="ten"/>
            <i class="text-danger"><form:errors path="ten_dich_vu"/></i>
        </div>
        <div class="mb-3">
            <label for="dg" class="form-label">Đơn giá</label>
            <form:input path="don_gia" type="number" class="form-control" id="dg"/>
            <i class="text-danger"><form:errors path="don_gia"/></i>
        </div>
        <div class="mb-3">
            <label for="dvt" class="form-label">Đơn vị tiền</label>
            <form:input path="don_vi_tien" type="text" class="form-control" id="dvt"/>
            <i class="text-danger"><form:errors path="don_vi_tien"/></i>
        </div>
        <div class="mb-3">
            <label class="form-label">Tên loại dịch vụ</label>
            <form:select path="loaiDichVu" class="form-select">
                <form:option value="">---</form:option>
                <form:options items="${loaidichvu}" itemValue="id" itemLabel="ten_loai_dich_vu"/>
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
        <c:forEach items="${list}" var="dv">
            <tr>
                <td>${dv.ten_dich_vu}</td>
                <td>${dv.don_gia}</td>
                <td>${dv.don_vi_tien}</td>
                <td>${dv.loaiDichVu.mo_ta}</td>
                <td>${dv.loaiDichVu.ten_loai_dich_vu}</td>
                <td>
                    <a class="btn btn-info" href="">Detail</a>
                    <a class="btn btn-danger" href="" onclick="return confirm('Bạn có muốn xóa không ?')">Delete</a>
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
