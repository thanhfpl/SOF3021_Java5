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
            <th>Ten dang nhap</th>
            <th>Mat khau</th>
            <th>Ho ten</th>
            <th>Email</th>
            <th>Activate</th>
            <th>Admin</th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="us" items="${list}">
            <tr>
                <td>${us.username}</td>
                <td>${us.password}</td>
                <td>${us.fullname}</td>
                <td>${us.email}</td>
                <td>${us.activated ? "Avaiable":"Unavaiable"}</td>
                <td>${us.admin ? "Admin":"Nguoi dung"}</td>
                <td><a onclick="return confirm('Ban co muon sua ?') "href="/user/update/${us.id}"><button class="btn btn-warning">Sửa</button></a>
                <a onclick="return confirm('Ban co muon xoa ?')" href="/user/delete/${us.id}"><button class="btn btn-danger"><Xóa></Xóa></button></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
        <a href="/user/add"><button class="btn btn-primary" >THÊM NGƯỜI DÙNG</button></a>
        <a href="/user/SanPham"><button class="btn btn-primary" >SẢN PHẨM</button></a>
</div>

</body>
</html>
