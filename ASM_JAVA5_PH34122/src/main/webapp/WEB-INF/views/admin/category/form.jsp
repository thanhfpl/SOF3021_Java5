<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form modelAttribute="caterori" method="post">
    <div>
        <p>ID:
            <form:input path="id" class="form-control" style="width: 400px; height: auto"></form:input>
            <form:errors path="id"></form:errors>
        </p>
    </div>
    <div>
        <p>Tên:
            <form:input path="name" class="form-control" style="width: 400px; height: auto"></form:input>
            <form:errors path="name"></form:errors>
        </p>
    </div>
    <button type="submit" class="btn btn-success">Lưu Lại</button>
</form:form>