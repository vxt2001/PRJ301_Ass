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
    <body>
        <form action="list" method="POST">
            Department:<select name="gid"> 
                <c:forEach items="${requestScope.groupss}" var="g">
                    <option 
                        <c:if test="${g.gid eq requestScope.gid}">
                            selected="selected"
                        </c:if>
                        value="${g.gid}">${g.gname}</option>
                </c:forEach>
            </select>
            <input type="submit" value="Search"/>
        </form>
        <c:if test="${requestScope.stus ne null}">
            <table>
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Gender</td>
                    <td>Dob</td>
                    <td>Dept Name</td>
                </tr>
                <c:forEach items="${requestScope.stus}" var="s">
                    <tr>
                        <td>${s.sid}</td>
                        <td>${s.sname}</td>
                        <td>${s.gender}</td>
                        <td>${s.dob}</td>
                        <td>${s.groupss.gname}</td>
                    </tr>  
                </c:forEach>
            </table>
        </c:if>    
    </body>
</html>
