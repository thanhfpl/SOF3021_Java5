
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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





    <table class="table" border="1px">

        <thead>
        <tr>

            <th scope="col">Ten DV</th>
            <th scope="col">Don Gia</th>
            <th scope="col">Don Vi Tien</th>
            <th scope="col">Mo Ta </th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="dv">
            <tr>
                <td>${dv.ten_dich_vu}</td>
                <td>${dv.don_gia}</td>
                <td>${dv.don_vi_tien}</td>
                <td>${dv.loaiDichVu.mo_ta}</td>

                <td>
                    <a href="/ban/xoa?idXoa=${ban.id}" > <button class="btn btn-primary">Xóa</button></a>
                    <a href="" > <button class="btn btn-primary">Detail</button></a>
                </td>
            </tr>


        </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>