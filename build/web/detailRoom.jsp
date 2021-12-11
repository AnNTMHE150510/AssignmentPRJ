<%-- 
    Document   : detailRoom
    Created on : Dec 9, 2021, 11:47:01 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
    </style>
    <body>
        <div class="content">
            <table>
                <tr>
                    <th>STT </th>               
                    <th>Student ID</th>
                    <th>Name</th>
                    <th>Check in</th>
                    <th>Check out</th>
                    <th>Electricity</th>
                    <th>Water</th>
                    
                    <% int i=1;%>
                    <c:forEach items="${requestScope.listroom}" var="p">
                        <tr>
                            <td><%=i++%></td>
                            <td>${p.studentId}</td>
                            <td>${p.name}</td>
                            <td>${p.checkin}</td>
                            <td>${p.checkout}</td>
                            <td>${p.electricity}</td>
                            <td>${p.water}</td>
                           
                        </tr>
                    </c:forEach>
                </tr>
            </table>
        </div>
        
    </body>
</html>
