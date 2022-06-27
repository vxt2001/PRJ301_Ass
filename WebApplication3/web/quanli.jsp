<%-- 
    Document   : quanli
    Created on : Jun 19, 2022, 5:08:56 PM
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
    <h1>FPT University Academic Portal</h1>
    <body>
     <div style="background-color:#dbdbdb" class="col-md-12">
            <h2 class="col-md-5" ><a href="list">Home</a>&nbsp;|&nbsp; 
            
                <b>Grade-book</b>
            </h2>
            
        </div>
    </body>
    <table border="1">
            <thead>
                <tr style="background-color:#0d6efd">
                   <th>Tên</th>
                    <th>Progress test 1</th>
                    <th>Progress test 2</th>
                    <th>Final Exam</th>
                    <th>total</th>
                    <th></th>
                </tr>
            </thead>
            <c:forEach items="${requestScope.diems}" var="d">
               
            <tbody>
                <tr>
                    
                    <td>${s.sname}</td>
                    
                    <td>${d.pt1}</td>
                     <td>${d.pt2}</td>
                     <td>${d.fe}</td>
                     <td></td>
                     <td><a href="edit?id=${s.sid}">Edit</a></td>
                </tr>
              
            </tbody> 
            
            </c:forEach>
        </table>
<table >
                <tr style="background-color:#0d6efd">
                    <td>pt1</td>
                    <td>pt2</td>
                    <td>fe</td>
                  
                  
                    
                </tr>
                <c:forEach items="${requestScope.diems}" var="d">
                    <tr>
                        <td>${d.pt1}</td>
                        <td>${d.pt2}</td>
                        <td>${d.fe}</td>
                        <td><a href="">${s.sname}</a></td>
                        <td>${s.subject.suname}</td>
                         <td><a href="edit?id=${s.sid}">Edit</a></td>
                    
                    </tr>  
                </c:forEach>
                    
            </table>
</html>
