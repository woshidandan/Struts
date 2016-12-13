<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP '2.jsp' starting page</title>
<script language="javascript">
var count = 5;//记数器

function countdown()
{ 
count--;

if(count == 1)
{
window.location.href='login.jsp';
}

if(document.layers)
{   
document.layers.showtime.document.write(count);   
document.layers.showtime.document.close();   
}   
else if(document.all)
{
showtime.innerHTML=count+" 秒后自动返回 ...";
}

setTimeout("countdown()",1000);   
}   
</script>

</head>
<body bgcolor="#F4F6F6" onLoad="countdown();">
<center>
<span id="showtime"></span>
</center>
您已经注册成功
</body>
</html>