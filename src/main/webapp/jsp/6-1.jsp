<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//map <String,String>을 3개 만들고 값을 
//name=홍길동,age =22
//name=유관순,age =33 
//name=임꺽정,age =40
//이 Map들을 List에 저장한 후
//해당 List를 request scope에 저장합니다
//6-1.jsp로 포워딩 시킨뒤에
//6-1.jsp에서 해당 list를 반복문으로 출력
List<Map<String,String>> list = (List<Map<String,String>>)request.getAttribute("list");
for(Map<String,String>maps:list) {
 out.print(maps);
}


%>
