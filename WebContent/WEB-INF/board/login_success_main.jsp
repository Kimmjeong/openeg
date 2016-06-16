<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글 목록 보기</title>
<link href="<%=request.getContextPath()%>/css/board.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.7.1.js"></script>
<script type="text/javascript">
<!--
	function selectedOptionCheck(){
		$("#type > option[value=<%=request.getParameter("type")%>]").attr("selected", "true");
	}
	
	function moveAction(where){
		switch (where) {
		case 1:
			location.href = "write.do";
			break;
		
		case 2:
			location.href = "list.do";
			break;
		}
	}
//-->
</script>
</head>
<body onload="selectedOptionCheck()">

<div id="container">
	
		<h1>
			<jsp:include page="header.jsp"/>  
		</h1>

	
	<div id="content-container">
	<div id="content">
	      <img src="../img/openeg.jpg" width="500" height="400" />
    </div>
	<div id="aside">
		<fieldset>
			<center>
			   <label>[ ${userName} ]님 환영합니다.</label><br/>
			   <a href="../logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
	           <a href="../member/modify.do">정보수정</a>
			</center>
		</fieldset>
	</div>
		<div id="footer">
			 <jsp:include page="footer.jsp"/> 
		</div>
	
</div>
</div>

</body>
</html>