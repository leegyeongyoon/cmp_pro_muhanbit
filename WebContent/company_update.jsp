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
<% List<companybean> companybean = (List<companybean>) request.getAttribute("companyUpdate"); %>
			<% for(companybean c : companybean){

				%>
				
					
				
			
<form action="company_update_ok.co" method="post">
		<input type="hidden" value="<%=c.getName()%>" name="name">
		<table>
			<tr>
				<td>
					고객사 이름
				</td>
				
				<td>
					<input type="text" name="company_name" value="<%=c.getName()%>">
				</td>
			</tr>
			
			<tr>
				<td>
					담당자 이름
				</td>
				
				<td>
					<input type="text" name="manager_name" value="<%=c.getManager()%>">
				</td>
			</tr>
			
			<tr>
				<td>
					담당자 번호
				</td>
				
				<td>
					<input type="text" name="manager_phone" value="<%=c.getPhone()%>">
				</td>
			</tr>
			
			<tr>
				<td>
					담당자 이메일
				</td>
				
				<td>
					<input type="text" name="manager_email" value="<%=c.getEmail()%>">
				</td>
			</tr>
			
						
			<tr>
				<td>
					고객사 주소
				</td>
				
				<td>
					<input type="text" name="company_address" value="<%=c.getAddress()%>">
				</td>
			</tr>
			
			
			<tr>
				<td colspan="2">
					<input type="submit" value="수정하기"><input type="button" onclick="location.href='company_list.co'" value="뒤로가기">
				</td>
			</tr>
		</table>
		</form>
	<%
			}
			%>
</body>
</html>