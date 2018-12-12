<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- 메시지 표시 영역 -->
    <textarea id="messageTextArea" readonly="readonly" rows="10" cols="45"></textarea><br />
    <!-- 송신 메시지 텍스트박스 -->
    <input type="text" id="messageText" size="50" />
    <input type="text" id="name" value="김형렬">
    <!-- 송신 버튼 -->
    <input type="button" value="Send" onclick="sendMessage()" />
    
    <script type="text/javascript">
        //웹소켓 초기화
        var localhost = "ws://localhost:8080/joongo/server";
        var inIp = "ws://192.168.0.254:8080/joongo/server";
        var outIp = "ws://211.118.162.122:8080/joongo/server";

        var webSocket = new WebSocket(localhost);
        var messageTextArea = document.getElementById("messageTextArea");
        var name = document.getElementById("name");
       
        
        webSocket.onopen = function(){
        	sendUserNickname('${loginUser.nickname}');	
        }
        
        //메시지가 오면 messageTextArea요소에 메시지를 추가한다.
        webSocket.onmessage = function processMessge(message){
            //Json 풀기
            var jsonData = JSON.parse(message.data);
            if(jsonData.message != null) {
                messageTextArea.value += jsonData.message + "\n"
            };
        }
	
        function sendUserNickname(nickname){
            webSocket.send(nickname);
        }
        
        //메시지 보내기
        function sendMessage(d){
            var messageText = document.getElementById("messageText");
            webSocket.send(messageText.value);
            messageText.value = "";
        }
    </script>
</body>
</html>