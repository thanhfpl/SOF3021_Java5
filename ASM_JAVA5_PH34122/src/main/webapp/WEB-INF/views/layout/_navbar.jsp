<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="/static/css/main.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary p-0">
  <div class="navbar-nav collapse navbar-collapse">
    <a class="nav-item nav-link active" href="/">Sản phẩm</a>
    <a class="nav-item nav-link" href="/about">Giới thiệu</a>
    <a class="nav-item nav-link" href="/quan-ly/admin/product">Quản Lý Sản Phẩm</a>
    <a class="nav-item nav-link" href="/quan-ly/admin">Quản Lý Nhóm Sản Phẩm</a>
    <a class="nav-item nav-link" href="/quan-ly/admin/account">Quản Lý Tài Khoản</a>
  </div>

  <ul class="navbar-nav ml-auto">
    <li class="nav-item no-arrow">
      <c:if test="${cart.total > 0}">
        <a href="/cart" class="nav-link mt-2 text-light">
          <img alt="" style="width:40px"
            src="/static/images/cart.png" />
            (${cart.total})
        </a>
      </c:if>
    </li>
    <li class="nav-item no-arrow">
      <a class="nav-link dropdown-toggle p-0" data-bs-toggle="dropdown" href="#">
        <img alt="" class="rounded-circle" style="width:60px"
          src="/static/images/user.svg" />
      </a>
      <div class="dropdown-menu dropdown-menu-end">
        <a class="dropdown-item" href="/logout">
          Đăng xuất
        </a>
      </div>
    </li>
  </ul>
</nav>