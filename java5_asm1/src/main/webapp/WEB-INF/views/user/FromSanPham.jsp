
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form method="post" modelAttribute="us">>
    <p>Ten dang nhap: <form:input path="username"/>
        <form:errors path="username"></form:errors>
    </p>

    <p>Mat khau: <form:input type="password" path="password"/>
        <form:errors path="password"></form:errors></p>
    <p>Ho ten: <form:input path="fullname"/>
        <form:errors path="fullname"></form:errors>
    </p>
    <p>Email:
        <form:input path="email"/>
        <form:errors path="email"></form:errors></p>
    </p>
    <p>Active: <form:checkbox path="activated"></form:checkbox></p>
    <p>Admin: <form:checkbox path="admin"></form:checkbox></p>
    <p style="color: red">${error}</p>
    <button>Luu lai</button>
</form:form>