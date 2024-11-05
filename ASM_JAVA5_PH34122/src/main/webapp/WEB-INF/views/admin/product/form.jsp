<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form method="post" modelAttribute="sp">
    <div>
    <p>Loại Sản Phẩm:
        <form:select path="category" class="form-control" cssStyle="width: 400px; height: auto">
            <form:option value="">--------</form:option>
            <form:options items="${listLoai}" itemValue="id" itemLabel="name"></form:options>
        </form:select></p>
        <form:errors path="category"></form:errors>
    </div>
    <div>
        <p>Name
        <form:input path="name" class="form-control" cssStyle="width: 400px; height: auto"></form:input>
            <form:errors path="name"></form:errors>
        </p>
    </div>
    <div>
        <p>Giá
        <form:input path="price" class="form-control" cssStyle="width: 400px; height: auto"></form:input></p>
        <form:errors path="price"></form:errors>
    </div>
    <div>
        <p>Ảnh:
        <form:input action="/quan-ly/upload" path="image" type="file" accesskey="nhập ảnh" class="form-control" cssStyle="width: 400px; height: auto" enctype="multipart/form-data"></form:input> </p>
    </div>
    <button class="btn btn-success">Lưu Lại</button>
</form:form>