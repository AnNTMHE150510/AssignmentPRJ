<%-- 
    Document   : listRoom
    Created on : Dec 8, 2021, 11:50:59 PM
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
            table{
                border-collapse: collapse;
                margin:auto;
                
            }
            th,td{
                padding: 8px 32px;
                border:1px solid gray;
            }
            .content{
                width:100%;
                float:left;
                margin-left:30px;
                height:auto;
                
            }
            
            .pagination {
                 display: inline-block;

              }
             .pagination a {
                color: black;
                font-size: 18px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
              }
            .pagination a.active {
                background-color: #4CAF50;
                color: white;
              }
            .pagination a:hover:not(.active) {
                background-color: chocolate;
            }   
            

        </style>
    <body>
        <div class="content">

            <c:set var="page" value="${requestScope.page}"/>
            <h3 class="dom">DOM:</h3>
            <div class="pagination">
               
                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                    <a class="${i==page?"active":""}" href="listRoom?page=${i}">${i==1?"A":i==2?"B":i==3?"C":"D"}</a>
                </c:forEach>
            </div>
            <table>
                <tr>
                    <th>STT </th>               
                    <th>Dom</th>
                    <th>Floor</th>
                    <th>Room</th>
                    <th>Bed</th>
                    <th>Bed used</th>
                    <th>Price</th>
                    <th>Action</th>
                    <% int i=1;%>
                    <c:forEach items="${requestScope.data}" var="p">
                        <tr>
                            <td><%=i++%></td>
                            <td>${p.dom}</td>
                            <td>${p.floor}</td>
                            <td>${p.roomId}</td>
                            <td>${p.bed}</td>
                            <td>${p.usedBed}</td>
                            <td>${p.price}</td>
                            <td><a href="#">Detail</a></td>
                        </tr>
                    </c:forEach>
                </tr>
            </table>
        </div>
    </body>
</html>

