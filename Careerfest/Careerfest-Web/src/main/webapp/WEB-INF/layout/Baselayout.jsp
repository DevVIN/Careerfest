<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" align="left">
		<tr>
			<td colspan="1" align="left"><tiles:insertAttribute
					name="header"></tiles:insertAttribute></td>
		</tr>
		<tr>
			<td colspan="1" align="left"><tiles:insertAttribute name="body"></tiles:insertAttribute></td>
		</tr>
		<tr>
			<td colspan="1" align="left"><tiles:insertAttribute
					name="footer"></tiles:insertAttribute></td>
		</tr>

	</table>

</body>
</html>