<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>TestPage</title>
            <style>
                .box {
                    display: flex;
                    justify-content: center;
                }

                .color {
                    background-color: gray;
                }
            </style>
        </head>

        <body>
            <div class="color">
                <div class="box">
                    <h1>게시글 목록 페이지</h1>
                </div>
            </div>
            <hr>
            <div class="box">
                <ul>
                    <c:choose>
                        <c:when test="${principal == null}">
                            <a href="/loginForm">로그인</a> &nbsp;&nbsp;
                            <a href="/joinForm">회원가입</a>
                        </c:when>

                        <c:otherwise>
                            <a href="/updateForm">회원정보</a> &nbsp;&nbsp;
                            <a href="/logout">로그아웃</a>
                        </c:otherwise>
                    </c:choose>

                </ul>
            </div>
            <div class="box">
                <table border="1">
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>등록일</th>
                    </tr>
                    <c:forEach items="${boardList}" var="board">
                        <tr>
                            <td>${board.id}</td>
                            <td><a href="/board/${board.id}">${board.title}</a></td>
                            <td>${board.createdAtToString}</td>
                        </tr>
                    </c:forEach>


                </table>
            </div>
            <div class="box">
                <a href="/board/insert">글쓰기</a>
            </div>
            <%@ include file="../layout/footer.jsp" %>