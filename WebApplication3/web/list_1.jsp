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
        <div style="background-color:#dbdbdb" class="col-md-12">
            <h2 class="col-md-5" ><a href="">Home</a>&nbsp;|&nbsp; 
            
                <b>Grade-book</b>
            </h2>
            
        </div>
        
       <center> <form  action="a" method="POST">
            Group
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
        <c:if test="${requestScope.lops ne null}">
            <table >
                <tr style="background-color:#0d6efd">
                    <td>Id</td>
                    <td>Image</td>
                    <td>Code</td>
                    <td>Name</td>
                    <td>Class</td>
                    <td>Subject</td>
                  
                    
                </tr>
                <c:forEach items="${requestScope.lops}" var="m">
                    <tr>
                        <td>${m.idLop}</td>
                        <td> ${k.MaLop}</td>
                        
                        
                       
                       
                         <td><a href="edit?id=${s.sid}">Edit</a></td>
                    
                     
                    </tr>  
                </c:forEach>
                    
            </table>
            
        </c:if>    
    </body>
</html>
