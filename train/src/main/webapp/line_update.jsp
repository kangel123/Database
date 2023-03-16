<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="user.UserDAO" %>
<%@ page import="dto.LineDAO" %>
<jsp:useBean id="lineDAO" class="dto.LineDAO" scope="session" />

<!DOCTYPE html>
<jsp:useBean id="user" class="user.UserDAO" scope="page" />
<html lang="ko">

<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <title>
    	라인수정
    </title>
</head>
	
<body>
<jsp:include page="menu.jsp" />
	<%
		String id = request.getParameter("id");
		LineDAO line = lineDAO.line(id);
	%>
    <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">라인정보 수정</h1>
		</div>
	</div>
	
        <form method="post" action="./line_update_Action.jsp">
    <div class="container">
    <div class="form-group row">
			<h3>라인수정</h3>
			<div class="col-sm-offset-2 col-sm-10 ">
	            <input type="submit" class="bt_join" value="완료">
	            <input type="button" class="bt_join" onclick="location.href='line_manage.jsp'" value="취소"/>
    	   		</div>
    	   		</div>
            <table class="table">
			<tr>
				<th>라인ID</th>
				<th>이름</th>
				<th>역량</th>
				<th>시작점</th>
				<th>도착점</th>
			</tr>
			<tr>
				<td><input type="text" class="input" value="<%=line.getLineID()%>" name=LineID class="form-control" readonly/></td>
				<td><input type="text" class="input" value="<%=line.getName()%>" name=Name class="form-control"/></td>
				<td><input type="text" class="input" value="<%=line.getCapacity()%>" name=Capacity class="form-control"/></td>
				<td><input type="text" class="input" value="<%=line.getStart_station()%>" name=Start_station class="form-control"/></td>
				<td><input type="text" class="input" value="<%=line.getFinish_station()%>" name=Finish_station class="form-control"/></td>
			</tr>						
       		</table>
   </div>
	</form>   

 <jsp:include page="footer.jsp" />
</body>

</html>
