<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("name", "request");
%>

시작<%=request.getAttribute("이름")%>끝<br>
시작${requestScope.이름}끝<br>
<%/*
http:/localhost/jsp2/4.jsp?name=홍길동
위 주소로 요청시
?를 기준으로 왼쪽(http:/localhost/jsp2/4.jsp)이 요청주소
오른쪽(name=홍길동이) key value인데 
key값 name으로 값을 가져오는 방법은 2가지
1.request.getAttribute("name")
2.${param.name}
*/%>
request.getParameter: <%=request.getParameter("name")%><br>
param.name:${param.name}<br>