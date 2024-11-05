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
    <form:form action="/hien-thi/add" modelAttribute="add" method="post">

        <div class="mb-3">
            <label class="form-label">Mã:</label>
            <form:input path="ma_dat_phong" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="ma_dat_phong"/></i>
        </div>

        <div class="mb-3">
            <label class="form-label">Ngày Đặt:</label>
            <form:input path="ngay_gio_dat" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="ngay_gio_dat"/></i>
        </div>

        <div class="mb-3">
            <label class="form-label">SL Khách:</label>
            <form:input path="so_luong_khach" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="so_luong_khach"/></i>
        </div>

        <div class="mb-3">
            <label class="form-label">SL Phòng:</label>
            <form:input path="so_luong_phong_dat" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="so_luong_phong_dat"/></i>
        </div>



        <div class="mb-3">
            <label class="form-label">Tên Khach Hang</label>
            <form:select path="khachHang" class="form-select">
                <form:option value="">---</form:option>
                <form:options items="${listkh}" itemValue="id" itemLabel="ten_khach_hang"/>
            </form:select>
        </div>


        <div class="mb-3">
            <label class="form-label">Ghi Chu : </label>
            <form:input path="ghi_chu" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="ghi_chu"/></i>
        </div>




        <button class="btn btn-success" type="submit">Add</button>

    </form:form>


    <table class="table table-striped" border="1">
        <thead>
        <tr>
            <th>Ma</th>
            <th>Ngay Dat</th>
            <th>SL Khach</th>
            <th>SL Phong</th>
            <th>Ma Khach Hang</th>
            <th>Ten Khach Hang</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="dp">
            <tr>
                <td>${dp.ma_dat_phong}</td>
                <td>${dp.ngay_gio_dat}</td>
                <td>${dp.so_luong_khach}</td>
                <td>${dp.so_luong_phong_dat}</td>
                <td>${dp.khachHang.ma_khach_hang}</td>
                <td>${dp.khachHang.ten_khach_hang}</td>
                <td>
                    <a class="btn btn-danger" href="/hien-thi/detele/${dp.id}" onclick="return confirm('Bạn có muốn xóa không ?')">Delete</a>
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
