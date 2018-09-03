<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
	<c:param name="content">
		<c:choose>
            <c:when test="${employee != null}">
                <h2>id : ${employee.id} employee's edit page</h2>
                <p>（enter new password only if changing）</p>
                <form method="POST" action="<c:url value='/employees/update' />">
                    <c:import url="_form.jsp" />
                </form>

                <p><a href="#" onclick="confirmDestroy();">Delete this employee</a></p>
                <form method="POST" action="<c:url value='/employees/destroy' />">
                    <input type="hidden" name="_token" value="${_token}" />
                </form>
                <script>
                    function confirmDestroy() {
                        if(confirm("Confirm on deleting this employee？")) {
                            document.forms[1].submit();
                        }
                    }
                </script>
            </c:when>
            <c:otherwise>
                <h2>No data found</h2>
            </c:otherwise>
        </c:choose>
         <p><a href="<c:url value='/employees/index' />">come back to employee index</a></p>
	</c:param>
</c:import>
