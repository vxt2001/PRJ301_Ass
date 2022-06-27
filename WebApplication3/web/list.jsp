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
    <h1>FPT University Academic Portal</h1>
    
    <body>
        <h2 ><a href="">Home</a></h2>
       <center> <form  action="list" method="POST">
            class
            :<select name="suid"> 
                <c:forEach items="${requestScope.subjects}" var="su">
                    <option 
                        <c:if test="${su.suid eq requestScope.suid}">
                            selected="selected"
                        </c:if>
                        value="${su.suid}">${su.suname}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Search"/>
            
        </form>
           </center>
        <c:if test="${requestScope.stus ne null}">
            <table >
                <tr style="background-color:#0d6efd">
                    <td>Id</td>
                    <td>Image</td>
                    <td>Code</td>
                    <td>Name</td>
                    <td>Class</td>
                  
                    
                </tr>
                <c:forEach items="${requestScope.stus}" var="s">
                    <tr>
                        <td>${s.sid}</td>
                        <td>${s.simage}</td>
                        <td>${s.scode}</td>
                        <td><a href="diem">${s.sname}</a></td>
                        <td>${s.subject.suname}</td>
                         <td><a href="edit?id=${s.sid}">Edit</a></td>
                    <td>  <a href="diem">Nhap diem</a></td>
                     <td><input type="radio" name="diemdanh" value="absent" />absent</td>
                    </tr>  
                </c:forEach>
                    
            </table>
            
        </c:if>    
    </body>
</html>
