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
    <form:form action="/phong/add" modelAttribute="add" method="post">

        <div class="mb-3">
            <label class="form-label">Tên dịch vụ:</label>
            <form:input path="ten_phong" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="ten_phong"/></i>
        </div>

        <div class="mb-3">
            <label class="form-label">SL Phòng :</label>
            <form:input path="so_luong_phong" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="so_luong_phong"/></i>
        </div>



        <p>
            Trạng thái:
            <form:radiobutton path="trang_thai" value="true"/> Còn
            <form:radiobutton path="trang_thai" value="false"/> Hết
            <form:errors path="trang_thai"/>
        </p>


        <div class="mb-3">
            <label class="form-label">Ghi Chú :</label>
            <form:input path="ghi_chu" type="text" class="form-control" />
            <i class="text-danger"><form:errors path="ghi_chu"/></i>
        </div>



        <div class="mb-3">
            <label class="form-label">Tên Loại Phòng:</label>
            <form:select path="loaiPhong" class="form-select">
                <form:option value="">---</form:option>
                <form:options items="${listphong}" itemValue="id" itemLabel="ten_loai_phong"/>
            </form:select>
        </div>





        <button class="btn btn-success" type="submit">Add</button>

    </form:form>


    <table class="table table-striped" border="1">
        <thead>
        <tr>
            <th>Ten Phong</th>
            <th>SL Phong</th>
            <th>Trang Thai </th>
            <th>Ghi Chu</th>
            <th>Ten Loai Phong</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="dv">
            <tr>
                <td>${dv.ten_phong}</td>
                <td>${dv.so_luong_phong}</td>
                <td>${dv.trang_thai ? "CÒN":"HẾT"}</td>
                <td>${dv.ghi_chu}</td>
                <td>${dv.loaiPhong.ten_loai_phong}</td>
                <td>
                    <a class="btn btn-info" href="/phong/detail/${dv.id}">Detail</a>
                    <a class="btn btn-danger" href="/phong/detele/${dv.id}" onclick="return confirm('Bạn có muốn xóa không ?')">Delete</a>
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
