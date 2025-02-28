<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
Map<String,String> map = new HashMap<>();
List<Map<String,String>> list = new ArrayList<>();
map.put("name","홍길동" );
map.put("age", "22");
list.add(map);
map = new HashMap<>();
map.put("name","유관순" );
map.put("age", "31");
list.add(map);
map = new HashMap<>();
map.put("name","홍길동" );
map.put("age", "40");
list.add(map);
request.setAttribute("list", list);
RequestDispatcher rd = request.getRequestDispatcher("/jsp/6-1.jsp");
rd.forward(request, response);
%>