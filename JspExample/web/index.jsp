<%-- 
    Document   : index
    Created on : Jul 9, 2015, 11:57:56 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.leapfrog.jspexample.entity.Student" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="student" class="com.leapfrog.jspexample.entity.Student" scope="session"/>

<jsp:useBean id="stData" class="com.leapfrog.jspexample.data.StudentData"/>


<jsp:setProperty name="student" property="firstName" value="Anuj"/> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
        <h1>Hello World!</h1>
        <a href="detail.jsp">Go to Detail</a>
        
        <c:forEach begin="1" end="3"  var="i">
        
            <h3>${student.getFirstName()} ${i}</h3>
        </c:forEach>
         
            <table class="table  table-striped table-bordered table-hover">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            <c:forEach var="st" items="${stData.getAllStudents()}">
                <tr>
                    <td>${st.getId()}</td>
                    <td>${st.getFirstName()}</td>
                    <td><a href="" class="btn btn-success" title="Edit"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a> <a href="" class="btn btn-danger" title="Delete"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
                </tr>
                
            </c:forEach>
            </table>
        </div>      
    </body>
</html>
