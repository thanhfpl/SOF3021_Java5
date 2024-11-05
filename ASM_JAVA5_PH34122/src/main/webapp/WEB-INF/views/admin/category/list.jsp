<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 style="text-align: center">Dánh Sách Nhóm Sản Phẩm</h1>
<div>
    <a href="/quan-ly/admin/category/create" class="btn btn-success">Thêm Mới</a>
</div>
<table class="table table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Loại Sản Phẩm</th>
        <th colspan="2">Hành Động</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="ct">
        <tr>
        <td>
            ${ct.id}
        </td>
        <td>${ct.name}</td>
        <td><a href="/quan-ly/admin/category/update/${ct.id}" class="btn btn-primary">Sửa</a> </td>
            <td><a href="/quan-ly/admin/category/delete/${ct.id}" class="btn btn-warning">Xoá</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>