<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>고객사 등곱 insert</h2>
		<hr>
		<form action="company_insert.co" method="post">
		<table>
			<tr>
				<td>
					고객사 이름
				</td>
				
				<td>
					<input type="text" name="company_name">
				</td>
			</tr>
			
			<tr>
				<td>
					담당자 이름
				</td>
				
				<td>
					<input type="text" name="manager_name">
				</td>
			</tr>
			
			<tr>
				<td>
					담당자 번호
				</td>
				
				<td>
					<input type="text" name="manager_phone">
				</td>
			</tr>
			
			<tr>
				<td>
					담당자 이메일
				</td>
				
				<td>
					<input type="text" name="manager_email">
				</td>
			</tr>
			
						
			<tr>
				<td>
					고객사 주소
				</td>
				
				<td>
					<input type="text" name="company_address">
				</td>
			</tr>
			
			
			<tr>
				<td colspan="2">
					<input type="submit" value="등록하기"><input type="button" onclick="location.href='index.do'" value="뒤로가기">
				</td>
			</tr>
		</table>
		</form>
</body>
</html>