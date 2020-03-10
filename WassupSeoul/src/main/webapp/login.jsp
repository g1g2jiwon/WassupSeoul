<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
 
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mihyun_01.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">

  <title>Wassup, Seoul</title>

  <script src="http://code.jquery.com/jquery-3.4.1.min.js"
    integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>

<style>
   @import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');

.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;

        max-width: 100%; 
        width: auto; 
}

</style>
</head>


<body>
  
  <div class="backgroundPicture">
    <img src="${pageContext.request.contextPath}/resources/img/서울4.jpg" class="mainPicture">

    <div class="container2">
      <span class="titletext">Wassup, Seoul</span>

      <form class="form-signin" form method="POST" action="${pageContext.request.contextPath}/member/login" name="login">
        <img class="mb-4" src="{{ site.baseurl }}/docs/{{ site.docs_version }}/assets/brand/bootstrap-solid.svg" alt=""
          width="72" height="72">
        <h1 class="h1 mb-3 font-weight-bold nanum">우리랑 같이 놀래?</h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" name="memberEmail" class="form-control nanum" placeholder="이메일을 입력하세요" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" name="memberPwd" class="form-control nanum" placeholder="비밀번호를 입력하세요" required>
        <div class="checkbox mb-3">
          <br>
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block nanum" type="submit">드루와</button>
        <br>
        <a href="#" style="font-size: 20px;" data-toggle="modal" data-target="#findEmailModal">Find
          Email</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#" style="font-size: 20px;" data-toggle="modal" data-target="#findPwdModal">Find Password</a>
        <a href="${pageContext.request.contextPath}/member/agreeForm" style="font-size: 20px;">회원가입</a>
      </form>

      <!-- Eamil 찾기 -->
    </div>
  </div>
  <div class="modal fade" id="findEmailModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title nanum" style="font-size: 30px;">Email 찾기</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="">
            <span class="nanum" style="font-size: 25px; color: tomato;">Email</span>
            <span class="nanum" style="font-size: 25px;">을 잊으셨나요?</span>
            <br><br>
            <label for="" class="nanum">제 이름은</label>
            <input type="text" class="nanum" size="10"> 
            <span class="nanum">이고,</span>
            <label for="" class="nanum">휴대폰 번호는</label>
            <span class="nanum" style="font-size: 15px; color: gray;">(' - ' 포함)</span>&nbsp;&nbsp;
            <input type="text" class="nanum" size="20">
            <span class="nanum">이에요. &nbsp; </span> 
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success nanum">이메일 찾기</button>
          <button type="button" class="btn btn-primary nanum" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

  <!-- Pwd 찾기 -->

  <div class="modal fade" id="findPwdModal">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title nanum" style="font-size: 30px;">Password 찾기</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="">
            <span class="nanum" style="font-size: 25px; color: tomato;">Password</span>
            <span class="nanum" style="font-size: 25px;">를 잊으셨나요??</span>
            <br><br>
            <label for="" class="nanum">제 이름은</label>
            <input type="text" class="nanum" size="10"> 
            <span class="nanum">이고,</span>
            <label for="" class="nanum">Email은</label>
            <input type="email" class="nanum" size="20"> 
            <span class="nanum">이에요. &nbsp; </span> 
            <label for="" class="nanum">휴대폰 번호는 </label>
            <span class="nanum" style="font-size: 15px; color: gray;">(' - ' 포함)</span>&nbsp;&nbsp;
            <input type="text" class="nanum" size="20">
            <span class="nanum">입니다. &nbsp; </span> <br>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success nanum">비밀번호 찾기</button>
          <button type="button" class="btn btn-primary nanum" data-dismiss="modal">닫기</button>
        </div>
      </div>
    </div>
  </div>

  <!-- </div> -->

  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>

</body>

</html>