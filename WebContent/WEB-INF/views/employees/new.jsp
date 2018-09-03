<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<h2>Create new employee page</h2>
		<form method="POST" action="<c:url value='/employees/create'/>">
			<c:import url="_form.jsp"/>
		</form>
		<p><a href="<c:url value="/employees/index"/>">Back to employee index</a></p>
	</c:param>
</c:import>
