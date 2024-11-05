<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 style="text-align: center">Danh Sách Tài Khoản</h1>
<div>
    <a href="/quan-ly/admin/account/create" class="btn btn-success">Thêm Mới</a>
</div>
<table class="table table-striped">
    <thead>
    <tr>
        <th>User Name</th>
        <th>PassWord</th>
        <th>Full Name</th>
        <th>Email</th>
        <th colspan="1">Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${listTK}" var="tk">
        <tr>
            <td>${tk.username}</td>
            <td>${tk.password}</td>
            <td>${tk.fullname}</td>
            <td>${tk.email}</td>
            <td><a class="btn btn-primary" href="/quan-ly/admin/account/update/${tk.username}">Sửa </a> </td>
            <td><a class="btn btn-warning" href="/quan-ly/admin/account/delete/${tk.username}">Xoá</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>