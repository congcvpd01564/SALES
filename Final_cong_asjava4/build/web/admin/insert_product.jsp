<%-- 
    Document   : insert_product
    Created on : Oct 12, 2016, 6:46:10 PM
    Author     : CONGCAO
--%>

<%@page import="dao.CategoryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý sản phẩm </title>

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
                    <h3>Thông tin sản phẩm</h3>

                    <form action="/Final_cong_asjava4/ManagerProductServlet" method="post">
                        <table width="95%">
                            
                            <tr>
                                <td style="float: right"><b>Mã danh mục:</b></td>
                                <td><input type="text" class="sedang" name="maDanhMuc"><%=error%></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Tên sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="tenSanPham"><%=error%></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Hình ảnh</b></td>
                                <td><input type="text" class="sedang" name="hinhanh"><%=error%></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Giá sản phẩm:</b></td>
                                <td><input type="text" class="sedang" name="giaSanPham"><%=error%></td>
                            </tr>
                            <tr>
                                <td style="float: right"><b>Mô tả:</b></td>
                                <td><input type="text" class="sedang" name="motaSanPham"><%=error%></td>
                            </tr>
                            <tr><td></td><td>
                                    <input type="hidden" name="command" value="insert">
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

