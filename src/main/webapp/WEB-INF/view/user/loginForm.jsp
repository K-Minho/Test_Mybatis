<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>

        <h1>로그인 페이지</h1>
        <hr />
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