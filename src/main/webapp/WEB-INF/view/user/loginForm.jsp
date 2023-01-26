<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>TestPage</title>
        </head>

        <body>
            <h1>로그인 페이지</h1>

            <hr>
            <ul>
                <c:choose>
                    <c:when test="${principal == null}">
                        <a href="/loginForm">로그인</a> &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/joinForm">회원가입</a>
                    </c:when>

                    <c:otherwise>
                        <a href="/updateForm">회원정보</a> &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/logout">로그아웃</a>
                    </c:otherwise>
                </c:choose>

            </ul>
            <form action="/login" method="post">
                <table border="1">
                    <tr>
                        <th>유저 이름</th>
                        <td>
                            <input type="text" name="username" placeholder="Enter username" required><br />
                        </td>
                    </tr>
                    <tr>
                        <th>비밀번호</th>
                        <td>
                            <input type="password" name="password" placeholder="Enter password" required><br />
                        </td>
                    </tr>
                </table>
                Check Remember me! <input type="checkbox" name="remember"><br />
                <button type="submit">로그인</button>
            </form>


            <%@ include file="../layout/footer.jsp" %>