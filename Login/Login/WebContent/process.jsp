
<%@page import="bean.RegisterDao"%>
<jsp:useBean id="obj" class="bean.User"/>

<jsp:setProperty property="*" name="obj"/>

<%
boolean status=RegisterDao.login(obj);
if(status){
	
    String redirectURL = "http://whatever.com/myJSPFile.jsp";
    response.sendRedirect(redirectURL);
}
else{
	out.print("invalid credentials,please contact system admin");
}

%>