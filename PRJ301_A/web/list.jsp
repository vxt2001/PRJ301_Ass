<%-- 
    Document   : list
    Created on : Jun 27, 2022, 1:21:25 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <h1>FPT University</h1>
    <body>
        <table>
            <tr>
                <td>Id</td>
                <td>Image</td>
                <td>Code</td>
                <td>Name</td>
                <td>Class</td>
                <td></td>
                <td></td>


            </tr>
           
            <c:forEach items="${requestScope.sinhviens}" var="sinhvien">
                <tr>
                    <td>${sinhvien.idSV}</td>
                   
                   

                    <td>  <input type="radio" name="diemdanh" value="attended" />attended</td>
                    <td><input type="radio" name="diemdanh" value="absent" />absent</td>
                </tr>  
            </c:forEach>

        </table> 
    </body>
</html>
