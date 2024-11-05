<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form:form modelAttribute="phong" method="post" action="/phong/add">
    <p>
        Tên phòng: <form:input path="ten_phong"/>
        <form:errors path="ten_phong"/>
    </p>
    <p>
        Số lượng phòng: <form:input path="so_luong_phong"/>
        <form:errors path="so_luong_phong"/>
    </p>
    <p>
        Trạng thái:
        <form:radiobutton path="trang_thai" value="CON"/> Còn
        <form:radiobutton path="trang_thai" value="HET"/> Hết
        <form:errors path="trang_thai"/>
    </p>
    <p>
        Ghi chú: <form:input path="ghi_chu"/>
        <form:errors path="ghi_chu"/>
    </p>
    <p>
        Loại phòng:
        <form:select path="loaiPhong">
            <form:option value="">----</form:option>
            <form:options items="${dsLoaiPhong}" itemValue="id" itemLabel="ten_loai_phong"/>
        </form:select>
    </p>
    <button>Add</button>
</form:form>

