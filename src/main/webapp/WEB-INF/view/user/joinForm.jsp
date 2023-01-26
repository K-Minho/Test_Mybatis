<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ include file="../layout/header.jsp" %>
        <div class="color">
            <div class="box">
                <h1>회원가입 페이지</h1>
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
            <form action="/join" method="post">
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
                    <tr>
                        <th>이메일</th>
                        <td>
                            <input type="email" name="email" placeholder="Enter email" required><br />
                        </td>
                    </tr>
                </table>
                <button type="submit">회원가입 완료</button>
            </form>
        </div>
        <%@ include file="../layout/footer.jsp" %>