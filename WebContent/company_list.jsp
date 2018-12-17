<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="company.companybean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<table border="1">
	<tr>
		<td>회사명</td>
		<td>담당자</td>
		<td>담당자연락처</td>
		<td>회사 주소</td>
		<td>담당자 메일</td>
	</tr>

	<% List<companybean> companybean = (List<companybean>) request.getAttribute("companyList"); %>
			<% for(companybean c : companybean){

				%>
				
				<tr>
					<td><a href="company_update.co?name=<%=c.getName()%>"><%=c.getName() %></a></td>
					<td><%=c.getManager() %></td>
					<td><%=c.getPhone() %></td>
					<td><%=c.getAddress() %></td>
					<td><%=c.getEmail() %></td>
					<td><a onclick="delete()">삭제</a></td>
				</tr>				
			<%
			}
			%>
</table>		
</body>
</html>