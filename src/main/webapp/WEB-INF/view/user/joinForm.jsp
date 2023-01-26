<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>

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


        <%@ include file="../layout/footer.jsp" %>