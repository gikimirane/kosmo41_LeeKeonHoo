<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("ValidMem") == null){
%>
	<jsp:forward page="login.jsp" />
<%
	}

	String name =(String)session.getAttribute("name");
	String id =(String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <script src="http://code.jquery.com/jquery.js"></script>
    
    <script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name="google-signin-client_id" content="105485682983-u7954einnd0lb8ersmkfj79v1r0tiqk2.apps.googleusercontent.com">

	<script>
	function onSignIn(googleUser) {
		var profile = googleUser.getBasicProfile();
		console.log('ID: ' + profile.getId());
		console.log('Name: ' + profile.getName());
		console.log('Image URL: ' + profile.getImageUrl());
		console.log('Email: ' + profile.getEmail());

		$('#login').css('display', 'none');
    	$('#logout').css('display', 'block');
    	$('#upic').attr('src', profile.getImageUrl());
    	$('#uname').html('[ ' +profile.getName() + ' ]');
	}
	function signOut() {
	    var auth2 = gapi.auth2.getAuthInstance();
	    auth2.signOut().then(function () {
	    	console.log('User signed out.');
	    
	    	$('#login').css('display', 'block');
	    	$('#logout').css('display', 'none');
	    	$('#upic').attr('src', '');
	    	$('#uname').html('');
	    });
	}
	
	</script>
</head>
<body>

	<h1><%= name %>님 안녕하세요</h1> <br>
	<form action="logout.go" method="post">
		<input type="submit" value="로그아웃">&nbsp;&nbsp;&nbsp;
		<input type ="button" value="정보수정"
				onclick="javascript:window.location='modify.jsp'">&nbsp;&nbsp;&nbsp;
		<input type ="button" value="게시판"
				onclick="javascript:window.location='list.do?page=1'">&nbsp;&nbsp;&nbsp;

<div id="login" class="g-signin2" data-onsuccess="onSignIn"></div>

<div id="logout" style="display: none;">
    <input type="button" onclick="signOut();" value="로그아웃" /><br>

    <img id="upic" src=""><br>
    <span id="uname"></span>
</div>
	</form>
	
</body>
</html>