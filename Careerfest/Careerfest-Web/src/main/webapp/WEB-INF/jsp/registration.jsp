<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/own.css" rel="stylesheet">
<style>
.textbox {
	width: 30% !important;
}

.error {
	color: red;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page aditya dubey </title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-2 col-md-2 col-xs-2 col-sm-2"></div>
			<div class="col-lg-10 col-md-10 col-xs-10 col-sm-10">

				<h1 style="margin-left: 5%;">Registration Page</h1>
				<form:form action="registration.do" method="POST"
					modelAttribute="Registration">
					<form class="form-horizontal" style="margin-top: 5%;">
						<div class="form-group">
							<label class="col-sm-2 control-label text-muted">First
								Name:</label>
							<div class="col-sm-10">
								<form:input path="first_name" class="form-control textbox"
									placeholder="First Name" />
								<form:errors path="first_name" class="error"></form:errors>
								<br>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label text-muted">Last
								Name:</label>
							<div class="col-sm-10">
								<form:input path="last_name" class="form-control textbox"
									placeholder="Last Name" />
								<form:errors path="last_name" class="error"></form:errors>
								<br>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-muted">Mobile
								No:</label>
							<div class="col-sm-10">
								<form:input path="mobile_no" class="form-control textbox"
									placeholder="Mobile Number" />
								<form:errors path="mobile_no" class="error"></form:errors>
								<br>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-muted">Email
								ID:</label>
							<div class="col-sm-10">
								<form:input path="email_id" class="form-control textbox"
									placeholder="Email ID" />
								<form:errors path="email_id" class="error"></form:errors>
								<br>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label text-muted">Password:</label>
							<div class="col-sm-10">
								<form:password path="password" class="form-control textbox"
									placeholder="Password" />
								<form:errors path="password" class="error"></form:errors>
								<br>
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label text-muted">Confirm
								Password:</label>
							<div class="col-sm-10">
								<form:password path="confirm_password"
									class="form-control textbox" placeholder="Re-enter Password" />
								<form:errors path="confirm_password" class="error"></form:errors>
								<br>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-sm-10">
								<button type="submit" class="btn btn-primary button_submit ">Submit</button>
							</div>
						</div>
							
					</form>
				</form:form>
				
				<table>
								<tr>
								<td> S. No</td>
								<td>First Name</td>
								<td>Last Name</td>
								<td>Mobile Number</td>
								<td>Email ID</td>
								<td>Password</td>
								<td>Confirm Password</td>
								</tr>
								<c:forEach	items="${userlist}" var="saveUsers">
								<tr>
								<td>${saveUsers.id}</td>
								<td>${saveUsers.first_name}</td>
								<td>${saveUsers.last_name}</td>
								<td>${saveUsers.mobile_no}</td>
								<td>${saveUsers.email_id}</td>
								<td>${saveUsers.password}</td>
								<td>${saveUsers.confirm_password}</td>
								</tr>
								</c:forEach>
							</table>
			</div>
		</div>
	</div>
	

</body>
</html>