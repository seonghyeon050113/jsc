<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("name", "page");
request.setAttribute("name", "request");
session.setAttribute("name", "session");
application.setAttribute("name", "application");
%>

<%=pageContext.getAttribute("name")%> <!-- page --><br>
<%//el태그는 scope의 값을 출력%>
<h3>표현식으로 scope값 출력</h3>
page: <%=pageContext.getAttribute("name") %><br>
request: <%=request.getAttribute("name") %><br>
session: <%=session.getAttribute("name") %><br>
application: <%=application.getAttribute("name") %><br>

<h3>el태그로 scope값 출력</h3>
page :${pageScope.name}<br>
request :${requestScope.name}<br>
session :${sessionScope.name}<br>
application :${applicationScope.name}<br>