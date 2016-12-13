<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>»áÔ±µÇÂ¼</title>
</head>
<body>
	<div align="left">
		<s:a href="register.jsp">
			<font color="blue">
				<h5>»¹Î´×¢²á£¿µã»÷×¢²á</h5>
			</font>
		</s:a>
		
	</div>
	<div>
		<s:form action="login" method="post">
			<s:textfield name="username" label="ÕËºÅ"></s:textfield>
			<s:password name="password" label="ÃÜÂë"></s:password>
			<s:submit value="µÇÂ¼"></s:submit>
		</s:form>
	</div>

</body>
</html>