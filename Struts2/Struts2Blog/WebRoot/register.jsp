<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<script type="text/javascript">
function shuaxin(obj) {
	var shijian = new Date().getTime();
	obj.src="imageAction.action?d="+shijian;
}
</script>
</head>
<body>
	<h1 align="center">用户注册</h1>
	<div align="center">
		<s:fielderror cssStyle="color:red"></s:fielderror>
		<s:actionerror cssStyle="color:red"/>
		<br />
		<s:form action="register" theme="simple" method="post">
			<table width="50%" border="0" style="width: 50px;height: 342px;">
				<tr>
					<td align="right">账号</td>
					<td width="20">
						<s:textfield name="username"></s:textfield>
					</td>
					<td>
						<font color="red" align="left">
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">密码</td>
					<td>
						<s:password name="password"></s:password>
					</td>
					<td>
						<font color="red" align="left">
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">重复密码</td>
					<td>
						<s:password name="repassword"></s:password>
					</td>
					<td>
						<font color="red" align="left">
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">性别</td>
					<td>
						<input type="radio" name="sex" value="0" checked="checked"/>
						男
						<input type="radio" name="sex" value="1"/>
						女
					</td>
				</tr>
				<tr>
					<td align="right">电子邮箱</td>
					<td>
						<s:textfield name="email"></s:textfield>
					</td>
					<td>
						<font color="red" align="left">
							<h6>*必填</h6>
						</font>
					</td>
				</tr>
				<tr>
					<td align="right">验证码</td>
					<td>
						<s:textfield name="validate"></s:textfield>
					</td>
					<td>
						<img alt="点击图片" src="imageAction" align="left" onclick="shuaxin(this)" />
					</td>
				</tr>
				<tr>
					<td>
						<s:submit value="提交"></s:submit>
					</td>
					<td>
						<s:reset value="重置"></s:reset>
					</td>
				</tr>
			</table>
		</s:form>
	</div>

</body>
</html>