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
<div class="page_header">
		<div class="page_header_parallax">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h3>유지보수 현황 관리</h3>
						<h4>고객사 관리</h4>
					</div>
				</div>
			</div>
		</div>
		<div class="bcrumb-wrap">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<ul class="bcrumbs">
							<li>유지보수 현황 관리</a></li>
							<li>고객사 관리</li>
						</ul>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="inner-content" style="padding-top: 50px; padding-bottom: 450px;">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 double-space-bottom">
					<h2 class="heading space30">고객사 정보</h2>
					<div class="space-top">
						<table class="table">
							<thead>
								<tr>
									<th>고객사 명</th>
									<th>고객사 주소</th>
									<th>담당자</th>
									<th>담당자 연락처</th>
									<th>담당자 이메일</th>
									<th>삭제</th>
								</tr>
							</thead>
							<tbody>
						<% List<companybean> companybean = (List<companybean>) request.getAttribute("companyList"); %>
						<% for(companybean c : companybean){

						%>
							<tr>
								<td><a href="company_update.co?name=<%=c.getName()%>"><%=c.getName() %></a></td>
								<td><%=c.getAddress() %></td>
								<td><%=c.getManager() %></td>
								<td><%=c.getPhone() %></td>
								<td><%=c.getEmail() %></td>
								<td><a onclick="delete()">삭제</a></td>
							</tr>				
						<%
						}
						%>
							</tbody>
						</table>
					</div>
				</div>
		</div>
	</div>
	</div>
</html>