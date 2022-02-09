<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-lg-5">
                <a class="navbar-brand" href="#!">로그인 연습</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#!"></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="py-5">
            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">각종 로그인 하기</h1>
                        <!-- <p class="fs-4"></p> -->
                        <!-- <a class="btn btn-primary btn-lg" href="#!">Call to action</a> -->
                    </div>
                </div>
            </div>
        </header>
        <!-- Page Content-->
        <section class="pt-4">
            <div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
                    <div class="col-lg-6 col-xxl-3 mb-5" id="kakaoLogin" onclick="kakaoLogin();">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><img src="../resources/icon/카카오톡1.png" alt="카카오톡 로그인" style="width:50px; hieght:50px"><!-- <i class="bi bi-collection"></i> --></div>
                                <h2 class="fs-4 fw-bold">카카오톡<br>로그인하기</h2>
                                <p class="mb-0">카카오톡으로<br>로그인하세요!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-3 mb-5" id="naverLogin">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><img src="../resources/icon/naver-icon-file.png" alt="네이버 로그인" style="width:50px; hieght:50px"><!-- <i class="bi bi-cloud-download"></i> --></div>
                                <h2 class="fs-4 fw-bold">네이버<br>로그인하기</h2>
                                <p class="mb-0">네이버로<br>로그인하세요!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-3 mb-5" id="facebookLogin">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><img src="../resources/icon/facebook-icon-file.jpg" alt="페이스북 로그인" style="width:50px; hieght:50px"><!-- <i class="bi bi-card-heading"></i> --></div>
                                <h2 class="fs-4 fw-bold">페이스북<br>로그인하기</h2>
                                <p class="mb-0">페이스북으로<br>로그인하세요!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-3 mb-5" id="googleLogin">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><img src="../resources/icon/google-icon-file.png" alt="구글 로그인" style="width:50px; hieght:50px"><!-- <i class="bi bi-bootstrap"></i> --></div>
                                <h2 class="fs-4 fw-bold">구글<br>로그인하기</h2>
                                <p class="mb-0">구글로<br>로그인하세요!</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
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
	//카카오로그인
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	        	  console.log(response)
	        	  if(response) {
	        		  location.href="/kakaoLogin/kakaoLoginOk"
	        	  } else {
	        		  window.alert("이미 로그인되어 있습니다.");
	        	  }
	          },
	          fail: function (error) {
	            console.log(error)
	          },
	        })
	      },
	      fail: function (error) {
	        console.log(error)
	      },
	    })
	  }
</script>
</html>
