<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/15/2024
  Time: 4:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="/student/save" modelAttribute="sv">
    <p>Name:
        <form:input path="name"/>
        <form:errors path="name"/>
    </p>
    <p>Email: <form:input path="email"/></p>
    <p>Marks: <form:input path="marks"/></p>
    <p>Gender:
<%--        <form:radiobutton path="gender" value="true"/>Male--%>
<%--        <form:radiobutton path="gender" value="false"/>Female--%>
        <form:radiobuttons path="gender" items="${genders}"/>
    </p>
    <p>
        Faculty:
        <form:select path="faculty">
            <form:option value="">--------</form:option>
            <form:options items="${faculties}"/>
<%--            <form:option value="CNTT">IT</form:option>--%>
<%--            <form:option value="MNGT">Management</form:option>--%>
<%--            <form:option value="BIZ">Business</form:option>--%>
        </form:select>
    </p>
    <button>Save</button>
</form:form>
</body>
</html>
