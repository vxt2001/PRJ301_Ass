<%-- 
    Document   : search
    Created on : May 31, 2022, 10:10:06 AM
    Author     : Ngo Tung Son
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
        <h2 text-align:center>Home</h2>
        <form action="list1" method="POST">
            class
            :<select name="idLop"> 
                <c:forEach items="${requestScope.lops}" var="lo">
                    <option 
                        <c:if test="${lo.suid eq requestScope.idLop}">
                            selected="selected"
                        </c:if>
                        value="${lo.idLop}">${lo.MaLop}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Search"/>
        </form>
        <c:if test="${requestScope.sinhviens ne null}">
            <table>
                <tr>
                    <td>Id</td>
                    <td>Image</td>
                    <td>Code</td>
                    <td>Name</td>
                    <td>Class</td>
                  
                    
                </tr>
                <c:forEach items="${requestScope.sinhviens}" var="s">
                    <tr>
                        <td>${s.idSV}</td>
                        <td>${s.simage}</td>
                        <td>${s.MaSV}</td>
                        <td>${s.TenSV}</td>
                        
                        <td>${s.subject.suname}</td>
                         <td><a href="edit?id=${s.sid}">Edit</a></td>
                    <td>  <input type="radio" name="diemdanh" value="attended" />attended</td>
                     <td><input type="radio" name="diemdanh" value="absent" />absent</td>
                    </tr>  
                </c:forEach>
                    
            </table>
            
        </c:if>    
    </body>
</html>
