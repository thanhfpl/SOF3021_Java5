<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form method="post" action="/may-tinh/update/${mt.id}" modelAttribute="mt">
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
            <form:options items="${dsHang}" itemLabel="tenHang" itemValue="id"/>
        </form:select>
    </p>
    <p>
        Miêu tả: <form:textarea path="mieuTa"/>
    </p>
    <button>Lưu lại</button>
</form:form>