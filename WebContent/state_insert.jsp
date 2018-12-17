<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>
		상태 insert
	</h1>
	<form action="state_insert.do" method="post">
	<table border="1">
		<tr>
			<td>
				구분	
			</td>
			
			<td>
				<select id="state_select" name="sort">
					<option></option>
					<option value="장애">장애</option>
					<option value="percall">percall</option>
					<option value="정기점검">정기점검</option>
					<option value="구축">구축</option>
				</select>
				
			</td>
		</tr>
		
		<tr>
			<td>
				작업제목	
			</td>
			
			<td>
				<input type="text" id="work_name" name="title"> 
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록하기"><input type="button" onclick="location.href='index.do'" value="메인으로">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>