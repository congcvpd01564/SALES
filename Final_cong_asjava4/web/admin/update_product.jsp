<%-- 
    Document   : update_product
    Created on : Oct 16, 2016, 1:16:45 PM
    Author     : CONGCAO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật sản phẩm</title>

        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />

    </head>
    <body>
        
         <%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        %>
       

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Cập nhật sản phẩm</h3>
                    <form action="/Final_cong_asjava4/ManagerProductServlet" method="POST">
                    <table width="95%">
                        <tr>
                            <td style="float: right"><b>Mã danh mục:</b></td>
                            <td><input type="text" class="sedang" name="maDanhMuc"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Tên sản phẩm:</b></td>
                            <td><input type="text" class="sedang" name="tenSanPham"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Hình ảnh sản phẩm:</b></td>
                            <td><input type="text" class="sedang" name="hinhanh"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Giá sản phẩm:</b></td>
                            <td><input type="text" class="sedang" name="giaSanPham"></td>
                        </tr>
                        <tr>
                            <td style="float: right"><b>Mô tả sản phẩm:</b></td>
                            <td><input type="text" class="sedang" name="motaSanPham"></td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="product_id" value="<%=request.getParameter("product_id")%>">
                                <input type="submit" class="button" value="Lưu dữ liệu">
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


    </body>
</html>