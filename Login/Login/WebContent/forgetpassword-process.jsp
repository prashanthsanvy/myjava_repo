
<%@page import="bean.RegisterDao"%>

<%
try
{
String uname=request.getParameter("uname");
String newPassword=request.getParameter("unpass");
String confirmPassword=request.getParameter("ucpass");
boolean status=RegisterDao.validateUser(uname);
if(status){
	if(newPassword.equals(confirmPassword)){
		boolean success=RegisterDao.updatePassword(uname,newPassword);
			if(success){
		out.println("newpassword suceessfuly set");
			}else{
			out.println("password no set correct due to some error");
	
			}
		
	}else{
		out.println("newpassword and cpassword are not equal");

	}
	
}else{
	out.println("user name inavlid");

}
}
catch (Exception e){
e.printStackTrace();
}
%>
