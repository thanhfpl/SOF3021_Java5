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
    <form:form action="/dich-vu/add" modelAttribute="phong" method="post">

        <div class="mb-3">
            <label for="ten" class="form-label">Tên dịch vụ</label>
            <form:input path="tenPhong" type="text" class="form-control" id="ten"/>
            <i class="text-danger"><form:errors path="tenPhong"/></i>
        </div>

        <div class="mb-3">
            <label for="ten" class="form-label">SL Phong</label>
            <form:input path="soLuongPhong" type="text" class="form-control" id="ten"/>
            <i class="text-danger"><form:errors path="soLuongPhong"/></i>
        </div>



<%--        <div class="mb-3">--%>
<%--            <label for="ten" class="form-label"></label>--%>
<%--            <form:input path="trangThai" type="text" class="form-control" id="ten"/>--%>
<%--            <i class="text-danger"><form:errors path="trangThai"/></i>--%>
<%--        </div>--%>


        <div class="mb-3">
            <label class="form-label">Tên loại dịch vụ</label>
            <form:select path="trangThai" class="form-select">
                <form:option value="">---</form:option>
                <form:options items="${loaiPhong}" itemValue="id" itemLabel="trangThai"/>
            </form:select>
        </div>

        <button class="btn btn-success" type="submit">Add</button>
    </form:form>


    <table class="table table-striped" border="1">
        <thead>
        <tr>
            <th>Ten Phong</th>
            <th>SL Phong</th>
            <th>Trang Thai</th>
            <th>Ghi Chu</th>
            <th>Ten Loai Phong</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="dv">
            <tr>
                <td>${dv.tenPhong}</td>
                <td>${dv.soLuongPhong}</td>
                <td>${dv.trangThai}</td>
                <td>${dv.loaiPhong.ghiChu}</td>
                <td>${dv.loaiPhong.tenLoaiPhong}</td>
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
