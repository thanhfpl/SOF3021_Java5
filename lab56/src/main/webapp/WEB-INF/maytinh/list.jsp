
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
    <table class="table table-striped mt-2">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Ten may tinh</th>
            <th scope="col">Gia</th>
            <th scope="col">Bo nho</th>
            <th scope="col">Mau sac</th>
            <th scope="col">Hang</th>
            <th scope="col">action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.content}" var="g">
            <tr>
                <th>${g.id}</th>
                <th>${g.tenmaytinh}</th>
                <th>${g.gia}</th>
                <th>${g.bonho}</th>
                <th>${g.mausac}</th>
                <th>${g.hang.tenhang}</th>
                <th>
                    <a href="/maytinh/view-update/${g.id}" class="btn btn-warning" me-2>Update</a>
                    <a onclick="return confirm('Do you want to delete?')"
                       href="/maytinh/delete/${g.id}" class="btn btn-danger" me-2>Delete</a>
                </th>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%--    <c:forEach items="${page.content}" var="p">--%>
    <%--        <div>${p.id} - ${p.tenmaytinh}</div>--%>
    <%--    </c:forEach>--%>
    <a href="/maytinh/page?p=0">First</a>
    <a href="/maytinh/page?p=${page.number-1}">Prev</a>
    <a href="/maytinh/page?p=${page.number+1}">Next</a>
    <a href="/maytinh/page?p=${page.totalPages-1}">Last</a>
    <div>Showing page ${page.number + 1}/${page.totalPages}</div>
</div>
</body>
</html>
