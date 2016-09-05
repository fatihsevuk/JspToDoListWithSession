

<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.util.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Insert title here</title>
</head>
<body>

<form action="todolist.jsp">

Yeni iş ekle: <input type="text" name="is" /><br/>
<input type="submit" value="EKLE" />

</form>
<br/>


<%

 List<String> yapilacaklar=(List<String>) session.getAttribute("myToDoList");

if(yapilacaklar==null){
	
	yapilacaklar=new  ArrayList<String>();
	session.setAttribute("myToDoList",yapilacaklar);
}


String is=request.getParameter("is");

if(is!=null){
	yapilacaklar.add(is);
	
}

%>
<hr>
<b>Yapılacak İşler:</b><br/>
<ol>
<% 


for(String temp:yapilacaklar){
	out.println("<li>"+temp+"</li>");
}


%>
</ol>
</body>
</html>