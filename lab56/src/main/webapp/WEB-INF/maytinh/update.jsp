<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 6/5/2024
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container mt-3">
    <form:form modelAttribute="maytinh" method="post">
        <p>Id: <form:hidden path="id"/></p>
        <p>Ten May: <form:input path="tenmaytinh"/></p>
        <p>Gia: <form:input path="gia"/></p>
        <p>Ten May: <form:input path="tenmaytinh"/></p>
        <p>Ten Hang:
            <form:select path="hang">
                <form:option value="">---------</form:option>
                <form:options items="${listHang}" itemValue="id" itemLabel="tenhang"/>
            </form:select>
        </p>
        <p>Bo nho:
            <form:select path="bonho">
                <form:option value="">---------</form:option>
                <form:option value="256GB">256GB</form:option>
                <form:option value="512GB">512GB</form:option>
                <form:option value="1TB">1TB</form:option>
            </form:select>
        </p>
        <p>Ten Hang:
            <form:radiobutton path="mausac" value="Xám"/>Xám
            <form:radiobutton path="mausac" value="Đen"/>Đen
        </p>
        <p>Ghi chu: <form:input path="mieuta"/></p>
        <button formaction="/maytinh/update/${maytinh.id}" class="btn btn-warning">Update</button>
    </form:form>
</div>
</body>
</html>
