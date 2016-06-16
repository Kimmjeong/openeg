<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#box2 {
		float: left;
		width: 20%;
		padding: 10px;
		display: inline;
		border: 1px solid orange;
		margin-bottom:10px;	
	}
	
	#box3 {
		float: right;
		width: 75%;
		padding: 10px;
		display: inline;
		border: 1px solid white;
		margin-bottom:10px;	

	}
	
	.comment {
	    font-size: 12px;
	   	color: green;
	   	margin: 1px;
		padding: 1px;
		font-weight: normal;
	}
	
	.result{
		font-size: 16px;
		color: red;
		font-weight: bold;
		margin-top:10px;	
		margin-bottom:10px;	
	}
	
	.hint {
		font-size: 22px;
		font-weight: bold;
	}
</style>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<script src="../js/webtoolkit.base64.js"></script>
<script src="../js/jquery-1.7.1.js"></script>

<script type="text/javascript">
	  $(document).ready(function(){
	       $("#labs div").hide();
	       $("#div${param.no}").show();
	     
	       $('.menu').css('cursor','pointer').click(function() {
	          /*
	         $('#result').html('');
	         $('.hint').hide();
	         $('#div'+$(this).attr('no')).show();
	         */         
	         location.href = "/openeg/test/test.do?no="+$(this).attr('no');
	       });
	     });
	 function postPopUp(formName){ 
		 fm=document.getElementById(formName);
		 window.open("","viewer","width=1000, height=700, menubar=no,status=yes,scrollbars=no");
	     fm.action="forward_test.do";
	     fm.target="viewer";
	     fm.method="post";
	     fm.submit();
	}
</script>

</head>
<body>
<div id="container">
	
	<h1>
		<jsp:include page="../board/header.jsp"/>  
	</h1>

	
	<div id="content-container">
	<div id="content" style="width:100%;">
		<div id="box2">
			<font color="white" size="5"  margin="1" style="background-color: indigo;font-weight: bold">보안코딩테스트</font>
			<br/>
			<ul id="lists">
				<li class="menu" no="1">인코딩</li>
				<li class="menu" no="2">정규식</li>
				<li class="menu" no="3" >SQL 인젝션</li>
				<li class="menu" no="4" >명령어 인젝션</li>
				<li class="menu" no="5" >XPath 인젝션</li>
				<li class="menu" no="6" >XSS</li>
				<li class="menu" no="15" >CSRF</li>
				<li class="menu" no="7" >암호화</li>
				<li class="menu" no="8" >오픈리다이렉트</li>
				<li class="menu" no="9" >보안쿠키</li>
				<li class="menu" no="10" >인증</li>
				<li class="menu" no="11" >HTTP응답분할</li>
				<li class="menu" no="12" >접근제어</li>
				<li class="menu" no="13" >예외처리</li>
				<li class="menu" no="14" >정수오버플로우</li>
				<li class="menu" no="16" >TOCTOU</li>
				<li class="menu" no="17" >세션간의 정보노출</li>
				<li class="menu" no="18" >반복문제어 부재</li>
				<li class="menu" no="19" >널포인트 역참조</li>
				<li class="menu" no="30" >캡슐화 위배</li>
				<li class="menu" no="31" >중요정보 노출</li>
			</ul>
		</div>
    
    	<div id="box3">
     		 
     		<div id="labs">
     
     			<div class="hint"  id="div0">
       				<pre class="showLabs">
<font color="green"  size="6">보안 코딩 테스트</font><br/>
<font color="blue" size="4">왼쪽 메뉴를 선택하세요 !!</font>
       				</pre>
     			</div>
     
     
    <div class="hint"  id="div1">
        <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  인코딩 테스트 &nbsp;&nbsp;&nbsp;</font><hr/>
     <form id="form1"  action="encode_test.do">
       <pre class="showLabs">

테스트스트링:   <input type="text" name="data"  id="data1" size="40"> <input type="button"  id="button1" value="실행" > 

   <input type="radio"  name="type"  value="0" > BASE64 인코딩     
   <input type="radio"  name="type"  value="1" > BASE64 디코딩
   <input type="radio"  name="type"  value="2" > URL 인코딩        
   <input type="radio"  name="type"  value="3" > URL 디코딩
   <input type="radio"  name="type"  value="4"  checked="checked"> HTML 인코딩
   <input type="radio"  name="type"  value="5" > HTML 디코딩
   <br/>
       </pre>
     </form>
     </div>
     
 <div class="hint"  id="div2">
    <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  정규식 테스트 &nbsp;&nbsp;&nbsp;</font><hr/>
     <form id="form2"  action="reg_test.do">
        <pre class="showLabs">

정규식문자열:  <input type="text" name="data"  id="data2"  size="70"> <input type="button"  id="button2" value="실행" >
 <br/>
        </pre>
     </form>
 </div>
 
  <div class="hint"  id="div3"> 
   <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  SQL 인젝션   &nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="sql_test.do"  id="form4"> 
        <pre class="showLabs">
(1) MySQL 인젝션(인증우회)<br/>
      ID: <input type="text" name="id"  id="data4-1">  PASSWORD: <input type="password" name="passwd"  id="data4-2"> <input type="button"  id="button4"  value="실행"  >  
             
         </pre>
     </form>
  
      <form action="sql_test_b.do"  id="form4"> 
        <pre class="showLabs">
(2) MySQL 인젝션<br/>
      ID: <input type="text" name="id"  id="data4-1" size="60"> <input type="submit"  id="button4"  value="실행"  >

         </pre>
     </form>
  
     <form action="sql_test_b2.do"  id="form4"> 
        <pre class="showLabs">
(3) MS-SQL 인젝션<br/>  
      ID: <input type="text" name="id"  id="data4-1" size="60"> <input type="submit"  id="button4"  value="실행"  >
       <br/>
        </pre>
     </form>
  </div>
  <div class="hint" id="div4">
         <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  Command 인젝션   &nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="command_test.do"  id="form5">
        <pre>

작업선택:  <select  name="data"  id="data5">
         <option value="type">--- show File1.txt ---</option>
         <option value="dir">--- show Dir ---</option>
      </select> <input type="button"   id="button5" value="실행"  > <br/>
       </pre>
     </form>
  </div> 
  <div class="hint" id="div5">
       <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  XPath 인젝션  &nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="xpath_test.do"  id="form6">
        <pre>

이름: <input type="text" name="name"  id="data6" size="50">  <input type="button"   id="button6" value="실행"  >   <br/>        
          </pre>
     </form>
  </div> 
   <div class="hint" id="div6">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  XSS(크로스 사이트 스크립트)  &nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="xss_test.do"  id="form3">
        <pre>
(1) Reflective XSS  <br/>
    <input type="text" name="data"  id="data3" size="50"> <input type="button"   id="button3"  value="실행"  > 
        </pre>
     </form>
     <form action="xss_test_b.do"  id="form20">
        <pre>
(2) Stored XSS  <br/>
    <input type="text" name="data"  id="data20" size="50"> <input type="button"   id="button20"  value="실행"  > 입력값: 1 or 2   
        </pre>
     </form>
     <form action="xss_test_c.do"  id="form21">
        <pre>
(3) DOM XSS  <br/>
    <input type="text" name="data"  id="data21" size="50"> <input type="submit"     value="실행"  >
  <br/>
        </pre>
     </form>
  </div>
   <div class="hint" id="div15">
          <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  CSRF(크로스사이트 요청 위조)  &nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="csrf_test.do"  id="form15">
        <pre>

<a href="csrf_test.do?id=${userId}">포인트 조회</a>  <br/>   
수신자ID:    <input type="text" name="id"  id="data15" size="50">  
선물할포인트: <input type="text" name="point"  id="data15" size="50"> <input type="button"   id="button15" value="실행"  >     <br/>     
 <br/>         </pre>
     </form>
  </div> 
   <div class="hint"  id="div7">
          <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;  암호화  &nbsp;&nbsp;&nbsp;</font><hr/>
      <form action="encrypt_test.do"  id="form7">
         <pre>

암/복호화 요청 데이터: <input type="text" name="data"  id="data7" size="30">  <input type="button" id="button7" value="실행"  > 

   <input type="radio"  name="type" value="0" checked="checked"> SHA-256 암호화  
   <input type="radio"  name="type" value="1"> AES 암호화      
   <input type="radio"  name="type" value="2"> AES 복호화          
   <input type="radio"  name="type" value="3"> RSA 암호화      
   <input type="radio"  name="type" value="4"> RSA 복호화           <br/>

          </pre>
      </form>
  </div>
    <div class="hint"  id="div8">
                   <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; Redirect/Forward   &nbsp;&nbsp;&nbsp;</font><hr/>
       <form  name="form8" id="form8">
          <pre>

 사이트선택: <select  name="data"  id="data8">
             <option value="http://www.naver.com">--- 네이버 ---</option>
             <option value="http://www.nate.com">--- 네이트 ---</option>
             <option value="http://www.daum.net">--- 다음 ---</option>
       </select> <input type="button"  value="이동"  onClick="postPopUp('form8')">  <br/>
          </pre>
        </form>
     </div>
      <div class="hint" id="div9">
               <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 보안 쿠키  &nbsp;&nbsp;&nbsp;</font><hr/>
       <form action="secure_cookie_test.do"  id="form9">
          <pre>

전송데이터: <input type="text" name="data"  id="data9" size="30"> <input type="button" id="button9" value="실행"  >
 <br/>
<input type="radio"  name="type" value="0" checked="checked"> 쿠키값 설정 요청 
<input type="radio"  name="type" value="1"> 쿠키값 전송 요청       <br/>
          </pre>
        </form>
      </div>
    <div class="hint" id="div10">
         <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 인증(Authentication)  &nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="authenticator_test.do"  id="form10"> 
         <pre>

ID: <input type="text" name="id"  id="data10-1">  PASSWORD: <input type="password" name="passwd"  id="data10-2">  <input type="button"  id="button10"  value="실행"  >
 <br/>
           </pre>
     </form>
  </div>
    <div class="hint" id="div11">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; HTTP응답분할&nbsp;&nbsp;&nbsp;</font><hr/>
     <form action="http_split_test.do"  id="form11"> 
        <pre>

전송메시지: <input type="text" name="data"  id="data11" size="60"> <input type="button"  id="button11"  value="실행"  >
 <br/>
          </pre>
     </form>
  </div>
   <div class="hint"  id="div12">
         <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;접근제어&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action="access_control_test.do"  id="form12">
          <pre>
          
작업선택: <select  name="action"  id="data12">
               <option value="view">-- 정보 조회 --</option>
               <option value="modify">-- 연락처 변경 --</option>        
               <c:if test="${userId == 'admin' }">  
                     <option value="edit">-- 고객 정보 등록 --</option>     
                     <option value="delete">-- 고객 정보 삭제 --</option>   
                </c:if>
        </select> <br/>
<c:if test="${userId == 'admin' }">  
고객ID: <input type="text" name="id"  id="data11" size="20" >  고객명: <input type="text" name="name"  id="data11" size="20"> <input type="button" id="button12" value="실행"  >
</c:if>
<c:if test="${userId != 'admin' }">  
고객ID: <input type="text" name="id"  id="data11" size="20"  value="${userId}"  readonly>  연락처: <input type="text" name="name"  id="data11" size="20"> <input type="button" id="button12" value="실행"  >
</c:if>

 <br/>
           </pre>
        </form>
     </div>
     <div class="hint"  id="div13">
      <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;예외처리&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action="exception_test.do"  id="form13">
       <pre>

     <input type="text" name="data"  id="data13" size="30">  <input type="button" id="button13" value="실행"  > 
     <br/><br/>    
     <input type="radio"  name="type" value="0" checked="checked"> 오류메시지를 통한 정보 노출 
      <font color=gray>  0~100까지 숫자 입력 </font><br/>
     <input type="radio"  name="type" value="1"> 오류 상황 대응 부재  
       <font color=gray> 계정명을 입력(관리자: admin) </font><br/>
     <input type="radio"  name="type" value="2"> 부적절한 예외처리 
       <font color=gray> 조회하고자 하는 파일명 입력 ex:file1.txt   </font>  <br/>    
  <br/>
           </pre>
        </form>
     </div>
     <div class="hint"  id="div14">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp;정수오버플로우&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action=" int_overflow_test.do"  id="form14">
          <pre>

 숫자입력: <input type="text" name="data"  id="data14" size="40"> <input type="button" id="button14" value="실행"  > 
       
 -2147483648 to 2147483647
   <br/>
           </pre>
        </form>
     </div>
     
        <div class="hint"  id="div16">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; Currency TOCTOU&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action=" concurrency_test.do"  id="form16">
          <pre>

 숫자입력[0~9]: <input type="text" name="data"  id="data16" size="40"> <input type="button" id="button16" value="실행"  > 

   <br/>
           </pre>
        </form>
     </div>
     
       <div class="hint"  id="div17">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 세션간의 정보노출&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action=" session_data_test.do"  id="form17">
          <pre>

이름: <input type="text" name="name"  id="name" size="40"> 

전화번호: <input type="text" name="phone"  id="phone" size="40">  <input type="button" id="button17" value="실행"  > 

   <br/>
           </pre>
        </form>
     </div>
     
     <div class="hint"  id="div18">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 반복문제어 부재&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action=" loop_test.do"  id="form18">
          <pre>

팩토리얼 구하기: <input type="text" name="data"  id="data" size="40">  <input type="button" id="button18" value="실행"  > 

   <br/>
           </pre>
        </form>
     </div>
   
     <div class="hint"  id="div19">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 널포인트 역참조&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action=" null_test.do"  id="form19">
          <pre>

작업선택: <select  name="data"  id="data19">
               <option value="0">-- 백업 --</option>
               <option value="1">-- 복구 --</option>     
               <option value="2">-- 초기화  --</option>           
        </select>  <input type="button" id="button19" value="실행"  >
        <input type="hidden" name="userid" value="${userId}">
   <br/>
           </pre>
        </form>
     </div>
         
    <div class="hint"  id="div30">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 캡슐화 위배&nbsp;&nbsp;&nbsp;</font><hr/>
       <form action=" encap_test.do"  id="form30" >
          <pre>

작업선택: <select  name="type"  id="data30">
               <option value="0">-- 관리자 목록 조회 --</option>
               <option value="1">-- 관리자 정보 수정 --</option>      
               <option value="2">-- 관리자 정보 초기화 --</option>             
        </select> <input type="text"  name="data"   >  <input type="button" id="button30" value="실행"  >
   <br/>
           </pre>
        </form>
     </div>
     
         <div class="hint"  id="div31">
     <font color="white" size="5"  margin="1" style="background-color: green;font-weight: bold">
      &nbsp;&nbsp;&nbsp; 중요정보노출&nbsp;&nbsp;&nbsp;</font><hr/>
     <br/>
     중요 정보는 안전하게 마스킹되어서 표시됩니다.<br/><br/>
     사용자 등급:  <input type="password"  name="grade" value="${userId }"/> <input type="button"  id="button31"  value="숨겨진값 표시" > <br/><br/>
     <주의>소스보기를 통해 사용자 등급을 확인합니다 
     <br/>   <br/>   <br/>   
     </div>
     
     
</div>
     <font color="white" size="5"  margin="1" style="background-color: orange;font-weight: bold">&nbsp;&nbsp;&nbsp;실행결과&nbsp;&nbsp;&nbsp;</font>
     <hr/>
     <div class="result"  id="result"></div>
</div>

		<div id="footer">
			 <jsp:include page="../board/footer.jsp"/> 
		</div>

</div>
</div>
</div>
     
 <script type="text/javascript"> 
 $( 
   function() { 
 	  $('#button1').click( 
	    	     function() { 
	    	    	
// 	    	    	 var formData={data:Base64.encode(form1.data.value)};
                     var formData = $("#form1").serializeArray();  
 	    	    	 var URL = $("#form1").attr("action");  
 	    	    	 $('#result').empty(); 
  	    	         $.post(URL,  
     	    			   formData,   
  	    			       function(data, textStatus, jqXHR)     {        	    		             
	    	    		           $('#result').append(data); 
	    	    		        } 
	     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
	    	    		    	   $('#result').append("요청처리 실패"); 
	    	    	  }); 
	    }); 
 
 	 $('#button2').click( 
    	     function() { 
    	    	 var formData = $("#form2").serializeArray();  
	    	     var URL = $("#form2").attr("action");  
	    	     $('#result').empty(); 
	    	     $.post(URL,  
 	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {        	    		             
    	    		           $('#result').append(data); 
    	    		        } 
     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
    	    		    	   $('#result').append("요청처리 실패"); 
    	    	  }); 
    }); 

 	 $('#button3').click( 
    	     function() { 
    	    	 var formData = $("#form3").serializeArray();  
	    	     var URL = $("#form3").attr("action");  
	    	     $('#result').empty(); 
	    	     $.post(URL,  
 	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {  
	    	        	       var uri_dec = decodeURIComponent(data);
    	    		           $('#result').append(uri_dec); 
    	    		        } 
     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
    	    		    	   $('#result').append("요청처리 실패"); 
    	    	  }); 
    }); 
 	 
 	$('#button4').click( 
    	     function() { 
    	    	 var formData = $("#form4").serializeArray();  
	    	     var URL = $("#form4").attr("action");  
	    	     $('#result').empty(); 
	    	     $.post(URL,  
 	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {        	    		             
    	    		           $('#result').append(data); 
    	    		        } 
     	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
    	    		    	   $('#result').append("요청처리 실패"); 
    	    	  }); 
    }); 
 	
 	$('#button5').click( 
   	     function() { 
   	    	 var formData = $("#form5").serializeArray();  
	    	 var URL = $("#form5").attr("action");  
	    	 $('#result').empty(); 
	    	 $.post(URL,  
	    			   formData,   
	    			       function(data, textStatus, jqXHR)     {        	    		             
   	    		           $('#result').append(data); 
   	    		        } 
    	    	 ).fail(function(jqXHR, textStatus, errorThrown) {   
   	    		    	   $('#result').append("요청처리 실패"); 
   	    	  }); 
   }); 
 	
   $('#button6').click( 
 		   function() { 
 		   	    	 var formData = $("#form6").serializeArray();  
 			    	 var URL = $("#form6 ").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
   
   $('#button15').click( 
 		   function() { 
 		   	    	 var formData = $("#form15").serializeArray();  
 			    	 var URL = $("#form15 ").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 	  });
 	
 	$('#button7').click( 
 		   function() { 
 		   	    	 var formData = $("#form7").serializeArray();  
 			    	 var URL = $("#form7").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
 	$('#button8').click( 
	   function() { 
	   	    	 var formData = $("#form8").serializeArray();  
		    	 var URL = $("#form8").attr("action");  
		    	 $('#result').empty(); 
		    	 $.post(URL,formData,   
		    			function(data, textStatus, jqXHR)     {  
		    		           window.open(data);
// 	   	    		           $('#result').append(data); 
	   	    		    } 
	    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
	   	    		    	   $('#result').append("요청처리 실패"); 
	   	    	         }); 
	   });
 	
 	$('#button9').click( 
  		   function() { 
  		   	    	 var formData = $("#form9").serializeArray();  
  			    	 var URL = $("#form9").attr("action");  
  			    	 $('#result').empty(); 
  			    	 $.post(URL,formData,   
  			    			function(data, textStatus, jqXHR)     {        	    		             
  		   	    		           $('#result').append(data); 
  		   	    		    } 
  		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
  		   	    		    	   $('#result').append("요청처리 실패"); 
  		   	    	         }); 
  		   });
 	
 	$('#button10').click( 
 		   function() { 
 		   	    	 var formData = $("#form10").serializeArray();  
 			    	 var URL = $("#form10").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
 	$('#button11').click( 
  		   function() { 
  		   	    	 var formData = $("#form11").serializeArray();  
  			    	 var URL = $("#form11").attr("action");  
  			    	 $('#result').empty(); 
  			    	 $.post(URL,formData,   
  			    			function(data, textStatus, jqXHR)     {        	    		             
  		   	    		           $('#result').append(data); 
  		   	    		    } 
  		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
  		   	    		    	   $('#result').append("요청처리 실패"); 
  		   	    	         }); 
  		   });
 	
 	$('#button12').click( 
   		   function() { 
   		   	    	 var formData = $("#form12").serializeArray();  
   			    	 var URL = $("#form12").attr("action");  
   			    	 $('#result').empty(); 
   			    	 $.post(URL,formData,   
   			    			function(data, textStatus, jqXHR)     {        	    		             
   		   	    		           $('#result').append(data); 
   		   	    		    } 
   		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
   		   	    		    	   $('#result').append("요청처리 실패"); 
   		   	    	         }); 
   		   });
 	
 	$('#button13').click( 
    		   function() { 
    		   	    	 var formData = $("#form13").serializeArray();  
    			    	 var URL = $("#form13").attr("action");  
    			    	 $('#result').empty(); 
    			    	 $.post(URL,formData,   
    			    			function(data, textStatus, jqXHR)     {        	    		             
    		   	    		           $('#result').append(data); 
    		   	    		    } 
    		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
    		   	    		    	   $('#result').append("요청처리 실패: "+textStatus); 
    		   	    	         }); 
    		   });
 	$('#button14').click( 
 		   function() { 
 		   	    	 var formData = $("#form14").serializeArray();  
 			    	 var URL = $("#form14").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	$('#button16').click( 
  		   function() { 
  		   	    	 var formData = $("#form16").serializeArray();  
  			    	 var URL = $("#form16").attr("action");  
  			    	 $('#result').empty(); 
  			    	 $.post(URL,formData,   
  			    			function(data, textStatus, jqXHR)     {        	    		             
  		   	    		           $('#result').append(data); 
  		   	    		    } 
  		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
  		   	    		    	   $('#result').append("요청처리 실패"); 
  		   	    	         }); 
  		   });
 	$('#button17').click( 
   		   function() { 
   		   	    	 var formData = $("#form17").serializeArray();  
   			    	 var URL = $("#form17").attr("action");  
   			    	 $('#result').empty(); 
   			    	 $.post(URL,formData,   
   			    			function(data, textStatus, jqXHR)     {        	    		             
   		   	    		           $('#result').append(data); 
   		   	    		    } 
   		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
   		   	    		    	   $('#result').append("요청처리 실패"); 
   		   	    	         }); 
   		   });
 	
	$('#button18').click( 
	   		   function() { 
	   		   	    	 var formData = $("#form18").serializeArray();  
	   			    	 var URL = $("#form18").attr("action");  
	   			    	 $('#result').empty(); 
	   			    	 $.post(URL,formData,   
	   			    			function(data, textStatus, jqXHR)     {        	    		             
	   		   	    		           $('#result').append(data); 
	   		   	    		    } 
	   		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
	   		   	    		    	   $('#result').append("요청처리 실패"); 
	   		   	    	         }); 
	   		   });
	
	$('#button19').click( 
	   		   function() { 
	   		   	    	 var formData = $("#form19").serializeArray();  
	   			    	 var URL = $("#form19").attr("action");  
	   			    	 $('#result').empty(); 
	   			    	 $.post(URL,formData,   
	   			    			function(data, textStatus, jqXHR)     {        	    		             
	   		   	    		           $('#result').append(data); 
	   		   	    		    } 
	   		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
	   		   	    		    	   $('#result').append("요청처리 실패"); 
	   		   	    	         }); 
	   		   });
	
 	$('#button20').click( 
 		   function() { 
 		   	    	 var formData = $("#form20").serializeArray();  
 			    	 var URL = $("#form20").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {        	    		             
 		   	    		           $('#result').append(data); 
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	$('#button21').click( 
 		   function() { 
 		   	    	 var formData = $("#form21").serializeArray();  
 			    	 var URL = $("#form21").attr("action");  
 			    	 $('#result').empty(); 
 			    	 $.post(URL,formData,   
 			    			function(data, textStatus, jqXHR)     {     			    	
 		   	    		           document.write(unescape(data));
 		   	    		    } 
 		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
 		   	    		    	   $('#result').append("요청처리 실패"); 
 		   	    	         }); 
 		   });
 	
 	$('#button30').click( 
	   		   function() { 
	   		   	    	 var formData = $("#form30").serializeArray();  
	   			    	 var URL = $("#form30").attr("action");  
	   			    	 $('#result').empty(); 
	   			    	 $.post(URL,formData,   
	   			    			function(data, textStatus, jqXHR)     {        	    		             
	   		   	    		           $('#result').append(data); 
	   		   	    		    } 
	   		    	    	   ).fail(function(jqXHR, textStatus, errorThrown) {   
	   		   	    		    	   $('#result').append("요청처리 실패"); 
	   		   	    	         }); 
	   		   });
 	
});

    	    	
</script>
 <!--  	var uri = "http://w3schools.com/my test.asp?name=st책le&car=saab"; -->
 <!--  	var uri_enc = encodeURIComponent(uri); -->
 <!--  	var uri_dec = decodeURIComponent(uri_enc); -->
 <!--  	var res = uri_enc + "<br>" + uri_dec; -->
			


</body>
</html>