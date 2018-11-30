<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
 <button id="popOpenBtn">Popup Open</button> 
 
    <div id ="popup_mask" >




    </div> <!-- 팝업 배경 DIV -->
    
    <div id="popupDiv"> <!-- 팝업창 -->

    	<img class="loginImg" src="/joongo/image/2.png"><button id="popCloseBtn">close</button>
    	<div id="popupTitle">중고장터로 중고거래 시작하기</div>
    	<div id="popupText">로그인하고 빠르고 안전하게 중고거래를 시작하세요!<br>
    		단 15초면 회원가입 완료!
    	<div id="LoginAPI">카카오톡<br>
    	페이스북</div>
        
        </div>
        <div>
        <form>
        	<input class="loginInput" type="text" name="" placeholder="아이디"><br>
        	<input class="loginInput" type="text" name="" placeholder="비밀번호"><br>
        	<input type="submit" name="" id="loginSubmit" value="로그인하기">
        </form>
        	
        </div>
        <br>

        

    </div>
    

</body>
</html>