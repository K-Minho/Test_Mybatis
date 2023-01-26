<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>

        <table border="1">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>등록일</th>
            </tr>
            <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${boardList.id}</td>
                    <td><a href="/board/${boardList.id}">${boardList.title}</a></td>
                    <td>${boardList.userId}</td>
                    <td>${boardList.createdAt}</td>
                </tr>
            </c:forEach>
            <a href="/board/insert">글쓰기</a>


        </table>
        <%@ include file="../layout/footer.jsp" %>