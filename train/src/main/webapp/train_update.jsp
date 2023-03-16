<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="user.UserDAO" %>
<%@ page import="dto.TrainDAO" %>
<jsp:useBean id="trainDAO" class="dto.TrainDAO" scope="session" />

<!DOCTYPE html>
<jsp:useBean id="user" class="user.UserDAO" scope="page" />
<html lang="ko">

<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <title>
    	열차수정
    </title>
</head>
	
<body>
<jsp:include page="menu.jsp" />
	<%
		String id = request.getParameter("id");
		TrainDAO train = trainDAO.train(id);
	%>
    <div class="jumbotron">
		<div class="container">
			<h1 class="display-3">열차정보 수정</h1>
		</div>
	</div>
	
        <form method="post" action="./train_update_Action.jsp">
    <div class="container">
    <div class="form-group row">
			<h3>열차수정</h3>
			<div class="col-sm-offset-2 col-sm-10 ">
	            <input type="submit" class="bt_join" value="완료">
	            <input type="button" class="bt_join" onclick="location.href='train_manage.jsp'" value="취소"/>
    	   		</div>
    	   		</div>
            <table class="table">
			<tr>
				<th>열차ID</th>
				<th>타입</th>
				<th>상태</th>
				<th>생산년도</th>
				<th>스피드</th>
			</tr>
			<tr>
				<td><input type="text" class="input" value="<%=train.getTrainID()%>" name=TrainID class="form-control" readonly/></td>
				<td><input type="text" class="input" value="<%=train.getType()%>" name=Type class="form-control"/></td>
				<td><input type="text" class="input" value="<%=train.getCondition()%>" name=Condition class="form-control"/></td>
				<td><input type="text" class="input" value="<%=train.getProductionYear()%>" name=ProductionYear class="form-control"/></td>
				<td><input type="text" class="input" value="<%=train.getSpeed()%>" name=Speed class="form-control"/></td>
			</tr>						
       		</table>
   </div>
	</form>   

 <jsp:include page="footer.jsp" />
</body>

</html>
