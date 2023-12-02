<%--
  Created by IntelliJ IDEA.
  User: syudel
  Date: 2023-12-02
  Time: 오후 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 상세보기</title>
    <style>
        .first-table {
            width: 1000px;
        }
        .second-table{
            width: 1200px;
        }
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>

<h2>자유게시판</h2>
<table id="list" class="first-table">
    <tr> <th>제목</th><td>${u.title}</td> </tr>
    <tr> <th>작성자</th><td>${u.writer}</td> <th>카테고리</th><td>${u.category}</td> </tr>
    <tr> <th>작성일</th><td>${u.regdate}</td> <th>Id</th><td>${u.seq}</td></tr>
</table>
<table id="list" class="second-table">
    <tr> <th>글(내용)</th> </tr>
    <tr> <td>${u.content}</td></tr>
</table> <br>
<button type="button" onclick="location.href='../list'">목록으로 돌아가기</button>
<button type="button" onclick="location.href='../editform/${u.seq}'">수정하기</button>
</body>
</html>
