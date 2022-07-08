<%-- 
    Document   : edit
    Created on : Jun 7, 2022, 8:20:42 AM
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
        <form action="edit" method="POST">
            Id: ${requestScope.stu.eid} <input type="hidden" value="${requestScope.emp.eid}" name="id"/> <Br/>
            Name: <input type="text" value="${requestScope.emp.ename}" name="name"/> <Br/>
            Gender: <input type="radio" 
                           ${requestScope.emp.gender?"checked=\"checked\"":""}
                           name="gender" value="male" /> Male 
                    <input type="radio" 
                           ${!requestScope.emp.gender?"checked=\"checked\"":""}
                           name="gender" value="female" /> Female
            <br/>
            Dob: <input type="date" name="dob" value="${requestScope.emp.dob}"/> <Br/>
            Department:<select name="did"> 
                <c:forEach items="${requestScope.depts}" var="d">
                    <option 
                        <c:if test="${d.did eq requestScope.emp.dept.did}">
                            selected="selected"
                        </c:if>
                        value="${d.did}">${d.dname}</option>
                </c:forEach>
            </select>
            <br/>
            <input type="submit" value="Save"/>
        </form>
    </body>
</html>
