<%-- 
    Document   : listSearch
    Created on : Dec 12, 2021, 12:46:04 AM
    Author     : Admin
--%>

<%@page import="java.util.List"%>
<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background: #ffeaa785;
            }
        table{
                border-collapse: collapse;
                margin:auto;
                margin-top:100px;
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
                
            }
        th,td{
                padding: 10px 35px;
                border:1px solid gray;
                font-size:16px;
            }
        .content{
                width:100%;
                height:auto;
                
        }
        .result{
            display:flex;
            justify-content: center;
            color:red;
            margin-top:50px;
        }
    </style>
    </head>
    <body>
        <h2> Search result for "<%=request.getParameter("id")%>"</h2>
        
        <%  List<Student>list = (List<Student>)request.getAttribute("listsearch"); 
            if (list.size()>0){
        %>
        <div class="content">
            <table>
                <tr>
                    <th>STT </th>               
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Room</th>
                    <th>Check in</th>
                    <th>Check out</th>
                    <th>Electricity</th>
                    <th>Water</th>
                    
                    <% int i=1;%>
                    <c:forEach items="${requestScope.listsearch}" var="p">
                        <tr>
                            <td><%=i++%></td>
                            <td>${p.studentId}</td>
                            <td>${p.name}</td>
                            <td>${p.roomId}</td>
                            <td>${p.checkin}</td>
                            <td>${p.checkout}</td>
                            <td>${p.electricity}</td>
                            <td>${p.water}</td>
                           
                        </tr>
                    </c:forEach>
                </tr>
            </table>
        </div>
        <% }
            else
            {   
        %>
        <h2 class="result">No result</h2>
        <%} %>
    </body>
</html>
