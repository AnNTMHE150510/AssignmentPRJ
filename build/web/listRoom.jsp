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
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            }
            body{
                background: #ffeaa785;
            }
            th,td{
                padding: 8px 32px;
                border:1px solid gray;
                font-size:16px;
            }
            .content{
                width:100%;
                
                margin-left:30px;
                height:auto;
                
            }
            
            .pagination {
                 display: inline-block;
                 box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;

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
            #search-form{
                position:absolute;
                top:5%;
                right:5%;
                box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
            }
            #search-form input{
                font-size: 16px;
                padding:4px;
                border-radius: 5px;
                font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;
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
            
            
            <form action="search" id="search-form">
                <input type="text" name="id" placeholder="Search student's ID"/>
                <input type="Submit" value="Search"/>
            </form>
            
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
                            <td><a href="roomDetail?room=${p.roomId}">Detail</a></td>
                        </tr>
                    </c:forEach>
                </tr>
            </table>
        </div>
        
    </body>
    
</html>
