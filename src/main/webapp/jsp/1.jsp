<% //Directive 지시자: <%@ %>
<%//종류 : <%@page, <%@include, <%@taglib %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //Declaration 선언부: <%! %>
<%!
int i = 1;
public void test(){
	//out.println("test호출");
}
//클래스 안 메소드 생성가능 변수 실행 불 가능
%>

<% //Expression 표현식: <%= %>
<%="asdfklas" %>

<%//Scriptlet: <% %>    
<%
int i = 1;
out.println(i);
//메소드 안 메소드 생성 불가능 하고 변수 프린트 가능
%>