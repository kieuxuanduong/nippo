<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<c:choose>
            <c:when test="${employee != null}">
                <h2>id : ${employee.id} employee 's detailed page</h2>
                <table>
                    <tbody>
                        <tr>
                            <th>CODE</th>
                            <td><c:out value="${employee.code}" /></td>
                        </tr>
                        <tr>
                            <th>NAME</th>
                            <td><c:out value="${employee.name}" /></td>
                        </tr>
                        <tr>
                            <th>AUTHORITY</th>
                            <td>
                                <c:choose>
                                    <c:when test="${employee.admin_flag == 1}">ADMIN</c:when>
                                    <c:otherwise>GENERAL</c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                        <tr>
                            <th>Registered on: </th>
                            <td>
                                <fmt:formatDate value="${employee.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                        <tr>
                            <th>Updated on: </th>
                            <td>
                                <fmt:formatDate value="${employee.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p><a href="<c:url value='/employees/edit?id=${employee.id}' />">Edit this employee's page</a></p>
            </c:when>
            <c:otherwise>
                <h2>No data found</h2>
            </c:otherwise>
        </c:choose>
        <p><a href="<c:url value='/employees/index' />">一覧に戻る</a></p>
	</c:param>
</c:import>
