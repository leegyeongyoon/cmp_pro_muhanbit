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
		            
		    	
			
			if(document.getElementById("state_select").value=="장애"){
				document.getElementById("type_select").innerHTML= "<option value='요청'>요청</option>"
				+"<option value='진행'>진행</option>"
				+"<option value='완료'>완료</option>"
			}
			
			else if(document.getElementById("state_select").value=="percall"){
				document.getElementById("type_select").innerHTML= "<option value='방문'>방문</option>"
				+"<option value='원격'>원격</option>"
				+"<option value='유선'>유선</option>"
				+"<option value='메일'>메일</option>"
			}
			
			else if(document.getElementById("state_select").value=="정기점검"){
				document.getElementById("type_select").innerHTML= "<option value='매월점검'>매월점검</option>"
				+"<option value='분기점검'>분기점검</option>"
				+"<option value='원격점검'>원격점검</option>"
			}
			
			else if(document.getElementById("state_select").value=="구축"){
				document.getElementById("type_select").innerHTML= "<option value='신규'>신규</option>"
				+"<option value='추가'>추가</option>"
			}
		}	
	</script>
	<h1>
		상태 insert
	</h1>
	
	<table>
		<tr>
			<td>
				구분	
			</td>
			
			<td>
				<select onchange="state_change()" id="state_select">
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
				타입	
			</td>
			
			<td>
				<select  id="type_select">
				
				</select>
			</td>
			</tr>
			<tr>
			<td>작업 제목</td>
				<td>
				<select  id="name_select">
				
				</select>
				<div id="result"></div>
			</td>
		</tr>
	</table>
</body>
</html>