<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form method="post" action="/may-tinh/add" modelAttribute="mt">
    <p>
        Mã: <form:input path="ma"/>
    </p>
    <p>
        Tên: <form:input path="tenMayTinh"/>
    </p>
    <p>
        Giá: <form:input type="number" path="gia"/>
    </p>
    <p>
        Bộ nhớ:
        <form:select path="boNho">
            <form:option value="">---</form:option>
            <form:option value="256GB">256GB</form:option>
            <form:option value="512GB">512GB</form:option>
            <form:option value="1TB">1TB</form:option>
        </form:select>
    </p>
    <p>Màu sắc:
        <form:radiobutton path="mauSac" value="Đen"/> Đen
        <form:radiobutton path="mauSac" value="Xám"/> Xám
        <form:radiobutton path="mauSac" value="Xanh"/> Xanh
    </p>
    <p>
        Hãng:
        <form:select path="hang">
            <form:option value="">---</form:option>
            <c:forEach items="${dsHang}" var="hang">
                <form:option value="${hang.id}">${hang.tenHang}</form:option>
            </c:forEach>
            <!-- form:options items="${dsHang}" itemLabel="tenHang" itemValue="id"/ -->
        </form:select>
    </p>
    <p>
        Miêu tả: <form:textarea path="mieuTa"/>
    </p>
    <button>Lưu lại</button>
</form:form>

<form>
    <p>Từ khóa: <input name="keyword" value="${param.keyword}"></p>
    <p>Giá từ: <input name="minPrice" type="number" value="${param.minPrice}"></p>
    <p>Giá đến: <input name="maxPrice" type="number" value="${param.maxPrice}"></p>
    <button>Tìm kiếm</button>
</form>
<table border="1">
    <tr>
        <th>Mã</th>
        <th>Tên</th>
        <th>Hãng</th>
        <th>Giá</th>
        <th>Bộ nhớ</th>
        <th>Màu sắc</th>
        <th></th>
    </tr>
    <c:forEach items="${page.content}" var="mt">
        <tr>
            <td>${mt.ma}</td>
            <td>${mt.tenMayTinh}</td>
            <td>${mt.hang.tenHang}</td>
            <td>${mt.gia}</td>
            <td>${mt.boNho}</td>
            <td>${mt.mauSac}</td>
            <td>
                <a href="/may-tinh/view-update/${mt.id}">Chỉnh sửa</a>
                <a href="/may-tinh/delete/${mt.id}" onclick="return confirm('Bạn có muốn xóa?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
<c:if test="${page.totalPages>0}">
    <c:forEach begin="0" end="${page.totalPages-1}" var="p">
        <a href="/may-tinh/hien-thi?p=${p}&keyword=${param.keyword}">${p+1}</a>
    </c:forEach>
</c:if>