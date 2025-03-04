<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//jsp action 태그
//1. jsp action 태그는 앞에 <jsp: 로 시작
//2. forward action 태그
// 
//6.jsp와 똑같은데 5개의 map을 만들고 
//그 값은
//name=홍길동,age=30,고향=서울
//name=김철수,age=20,고향=대전
//name=홍철,age=41,고향=대구
//name=박철수,age=22,고향=부산
//name=천동이,age=33,고향=광주
request.setAttribute("name", "request");
Map<String,String> map = new HashMap<>();
List<Map<String,String>> list = new ArrayList<>();
map.put("name", "홍길동");
map.put("age", "30");
map.put("고향", "서울");
list.add(map);
map = new HashMap<>();
map.put("name", "김철수");
map.put("age", "20");
map.put("고향", "대전");
list.add(map);
map = new HashMap<>();
map.put("name", "홍철");
map.put("age", "41");
map.put("고향", "대구");
list.add(map);
map = new HashMap<>();
map.put("name", "박철수");
map.put("age", "22");
map.put("고향", "부산");
list.add(map);
map = new HashMap<>();
map.put("name", "천동이");
map.put("age", "33");
map.put("고향", "광주");
list.add(map);
request.setAttribute("list", list);
RequestDispatcher rd = request.getRequestDispatcher("/jsp2/1-1.jsp");
rd.forward(request, response);
%>

<jsp:forward page="/jsp2/1-1.jsp"/>