<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_form.jsp"%>

<table border="1">
    <tr>
        <td>Tên phòng</td>
        <td>Số lượng phòng</td>
        <td>Trạng thái</td>
        <td>Ghi chú</td>
        <td>Tên loại phòng</td>
        <td>Hành động</td>
    </tr>

    <c:forEach items="${list}" var="phong">
        <tr>
            <td>${phong.ten_phong}</td>
            <td>${phong.so_luong_phong}</td>
            <td>${"CON".equals(phong.trang_thai) ? "Còn" : "Hết"}</td>
            <td>${phong.ghi_chu}</td>
            <td>${phong.loaiPhong.ten_loai_phong}</td>
            <td><a href="/phong/detail/${phong.id}">Detail</a></td>
        </tr>
    </c:forEach>

</table>

<a href="/phong/paging?p=${param.p-1}">Prev</a>

<c:if test="${totalPages>0}">
    <c:forEach begin="0" end="${totalPages-1}" var="p">
        <a href="/phong/paging?p=${p}">${p+1}</a>
    </c:forEach>
</c:if>

<a href="/phong/paging?p=${param.p+1}">Next</a>

