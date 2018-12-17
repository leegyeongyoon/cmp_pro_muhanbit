<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<script>
		function state_change(){
		        var result = document.getElementById('name_select');
		                $.ajax({
		                    url : "test.do?sort="+document.getElementById("state_select").value ,// test.jsp 에서 받아옴
		                    dataType :"json", // 데이터타입을 json 으로 받아옴
		                    success : function(data) {
		                        result.innerHTML = data;
		                    },
		                    error : function(e) {
		                        result.innerHTML = e.responseText;
		                    }
		                });
		            
		}	
	</script>
	<h1>
		상태 insert
	</h1>
	<form action="state_delete_ok.do" method="post">
	<table>
		<tr>
			<td>
				구분	
			</td>
			
			<td>
				<select onchange="state_change()" id="state_select" name="sort">
					<option></option>
					<option value="장애">장애</option>
					<option value="percall">percall</option>
					<option value="정기점검">정기점검</option>
					<option value="구축">구축</option>
				</select>
			</td>
		</tr>
	
			<tr>
			<td>작업 제목</td>
				<td>
				<select  id="name_select" name="title">
				
				</select>
				
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="삭제하기"><input type="button" onclick="location.href='index.do'" value="취소하기"></td>
		</tr>
	</table>
	
	</form>
</body>
</html>