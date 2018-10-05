<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>List Customers</title>
		
		<!-- reference our style sheet -->
		
		<link type="text/css"
				rel="stylesheet"				
				href="${pageContext.request.contextPath}/resources/css/style.css" />
		
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>
		
		<div id="container">
			<div id="content">
			
				<!-- put new button: Add Customer -->
				
				<input type="button"
						value="Add Customer"
						onClick="window.location.href='showFormForAdd'; return false;"
						class="add-button"/>
			
				<!-- add our html table here -->
				
				<table>
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${customers}">						
							
							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/showFormForUpdate">
								<c:param name="customerId" value="${tempCustomer.id}"/>
							</c:url>
													
							<tr>
								<td>${tempCustomer.firstName}</td>
								<td>${tempCustomer.lastName}</td>
								<td>${tempCustomer.email}</td>
								<!-- display the update link -->
								<td>
									<a href="${updateLink}">Update</a>
								</td>																
							</tr>						
						</c:forEach>						
					</tbody>
				</table>			
			</div>
		</div>
	</body>
</html>