<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 style="text-align: center">Danh Sách Sản Phẩm</h1>

<div class="mt-5">
    <div> <a href="/quan-ly/admin/product/create" class="btn btn-success">Thêm</a> </div>
</div>
<table class="table table-striped">
<thead>
<tr>
    <th>Loại</th>
    <th>Tên</th>
    <th>Giá</th>
    <th>Ảnh</th>
    <th colspan="2">Hành Động</th>
</tr>
</thead>
    <tbody>
    <c:forEach items="${listProduct}" var="sp">
        <tr>
            <td>${sp.category.name}</td>
            <td>${sp.name}</td>
            <td>${sp.price}</td>
            <td><img src="../../../image/${sp.image}" alt="Product Image" class="img-fluid"  style="max-width: 100px;"></td>
            <td> <a href="/quan-ly/admin/product/update/${sp.id}" class="btn btn-primary">Sửa</a> </td>
            <td><a href="/quan-ly/product/delete/${sp.id}" class="btn btn-warning">Xoá</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%--<a href="/quan-ly/page?p=0">First</a>--%>
<%--<a href="/quan-ly/page?p=${page.number-1}">Prev</a>--%>
<%--<a href="/quan-ly/page?p=${page.number+1}">Next</a>--%>
<%--<a href="/quan-ly/page?p=${page.totalPages-1}">Last</a>--%>
<%--<div>Showing page ${page.number + 1}/${page.totalPages}</div>--%>
<nav aria-label="Page navigation"> <ul class="pagination"> <li class="page-item ${page.number == 0 ? 'disabled' : ''}"> <a class="page-link" href="/quan-ly/page?p=0">First</a> </li> <li class="page-item ${page.number == 0 ? 'disabled' : ''}"> <a class="page-link" href="/quan-ly/page?p=${page.number-1}">Prev</a> </li> <li class="page-item ${page.number == page.totalPages-1 ? 'disabled' : ''}"> <a class="page-link" href="/quan-ly/page?p=${page.number+1}">Next</a> </li> <li class="page-item ${page.number == page.totalPages-1 ? 'disabled' : ''}"> <a class="page-link" href="/quan-ly/page?p=${page.totalPages-1}">Last</a> </li> </ul> </nav> <div>Showing page ${page.number + 1}/${page.totalPages}</div>