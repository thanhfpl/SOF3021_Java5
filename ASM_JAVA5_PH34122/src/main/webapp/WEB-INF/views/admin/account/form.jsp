<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="utf-8"%>
<form:form modelAttribute="tk" method="post">
    <div>
        <p>User Name
            <form:input path="username" class="form-control" cssStyle="width: 400px; height: auto"></form:input>
            <form:errors path="username"></form:errors>
        </p>
    </div>
    <div>
        <p>Pass Word
            <form:input type="password" path="password" class="form-control" cssStyle="width: 400px; height: auto"></form:input>
            <form:errors path="password"></form:errors>
        </p>
    </div>
    <div>
        <p>Full Name
            <form:input path="fullname" class="form-control" cssStyle="width: 400px; height: auto"></form:input>
            <form:errors path="fullname"></form:errors>
        </p>
    </div>
    <div>
        <p>Email
            <form:input path="email" class="form-control" cssStyle="width: 400px; height: auto"></form:input>
            <form:errors path="email"></form:errors>
        </p>
    </div>
    <button class="btn btn-success">Lưu Lại</button>
</form:form>