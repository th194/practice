<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>로그인 예제</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
    </head>
<body>
<header class="py-5">
            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">카카오톡 로그인 성공!</h1>
                        <!-- <p class="fs-4"></p> -->
                        <!-- <a class="btn btn-primary btn-lg" href="#!">Call to action</a> -->
                    </div>
                </div>
            </div>
        </header>
	<section class="pt-4">
		
            <div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
                    <div class="col-lg-6 col-xxl-3 mb-5" id="kakaoLogout" onclick="kakaoLogout();">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><img src="../resources/icon/카카오톡1.png" alt="카카오톡 로그인" style="width:50px; hieght:50px"><!-- <i class="bi bi-collection"></i> --></div>
                                <h2 class="fs-4 fw-bold">카카오톡<br>로그아웃 하기</h2>
                                <!-- <p class="mb-0">카카오톡으로<br>로그인하세요!</p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../resources/js/scripts.js"></script>
    </body>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('e4ca2b3cf6b21bc4457628aa05d57537'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그아웃  
	function kakaoLogout() {
	    if (Kakao.Auth.getAccessToken()) {
	      Kakao.API.request({
	        url: '/v1/user/unlink',
	        success: function (response) {
	        	console.log(response)
	        	location.href="/index";
	        },
	        fail: function (error) {
	          console.log(error)
	        },
	      })
	      Kakao.Auth.setAccessToken(undefined)
	    }
	  }  
</script>
</html>