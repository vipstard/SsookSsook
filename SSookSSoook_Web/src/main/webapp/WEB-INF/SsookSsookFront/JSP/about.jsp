<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>SsookSsook - About</title>

    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/core-img/favicon.ico" />

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style.css" />
  </head>

  <body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
      <div class="preloader-circle"></div>
      <div class="preloader-img">
        <img src="${pageContext.request.contextPath}/resources/img/core-img/leaf.png" alt="" />
      </div>
    </div>
    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
      <!-- ***** Top Header Area ***** -->
      <div class="top-header-area">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div
                class="top-header-content d-flex align-items-center justify-content-end"
              >
                <!-- Top Header Content -->
                <div class="top-header-meta d-flex" style="float: left">
                  <!-- Language Dropdown -->
                  <div class="language-dropdown">
                    <div class="dropdown">
                      <button
                        class="btn btn-secondary dropdown-toggle mr-30"
                        type="button"
                        id="dropdownMenuButton"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                      >
                        Language
                      </button>
                      <div
                        class="dropdown-menu"
                        aria-labelledby="dropdownMenuButton"
                      >
                        <a class="dropdown-item" href="#">한국어</a>
                        <a class="dropdown-item" href="#">日本語</a>
                        <a class="dropdown-item" href="#">中国語</a>
                      </div>
                    </div>
                  </div>
               <c:if test="${!empty LoginVo}">
                <label style='color : white'>${LoginVo.name }님 환영합니다.</label>&nbsp&nbsp
                 <!-- 회원정보 수정  -->
                  <div class="Sign Up">
                    <a href="EditProfile?id=${LoginVo.id }"
                      ><i class="fa fa-sign-in" aria-hidden="true"></i>
                      <span>Edit Profile</span></a
                    >
                  </div>
                  
                  
				  <div class="Sign Up">
		            <a href="https://kauth.kakao.com/oauth/logout?client_id=e3eced6c366d05e611468e218fc8f42d&logout_redirect_uri=http://211.227.224.199:8081/SS/LogOut"
		                    ><i class="fa fa-sign-in" aria-hidden="true"></i>
		                    <span>Log out</span></a>
		               </div>
                  </c:if>
                  
                   <c:if test="${empty LoginVo}">
  					 <!-- Login -->
                  <div class="login">
                    <a href="LoginForm"
                      ><i class="fa fa-user" aria-hidden="true"></i>
                      <span>Log in</span></a
                    >
                  </div>
                  <!-- Sign Up -->
                  <div class="Sign Up">
                    <a href="JoinForm"
                      ><i class="fa fa-sign-in" aria-hidden="true"></i>
                      <span>Sign Up</span></a
                    >
                  </div>
                  
				 </c:if>
                      
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- ***** Navbar Area ***** -->
      <div class="alazea-main-menu">
        <div class="classy-nav-container breakpoint-off">
          <div class="container">
            <!-- Menu -->
            <nav class="classy-navbar justify-content-between" id="alazeaNav">
              <!-- Nav Brand -->
              <a href="main" class="nav-brand"
                ><img src="${pageContext.request.contextPath}/resources/img/core-img/SSSSlogo.png" alt=""
              /></a>

              <!-- Navbar Toggler -->
              <div class="classy-navbar-toggler">
                <span class="navbarToggler"
                  ><span></span><span></span><span></span
                ></span>
              </div>

              <!-- Menu -->
              <div class="classy-menu">
                <!-- Close Button -->
                <div class="classycloseIcon">
                  <div class="cross-wrap">
                    <span class="top"></span><span class="bottom"></span>
                  </div>
                </div>

                <!-- Navbar Start -->
                <div class="classynav">
                  <ul style="font-family: SBAggroL">
                    <li><a href="main">Home</a></li>
                    <li><a href="About">회사 소개</a></li>
                    <li><a href="Purchase">제품 구매</a></li>
                    <li><a href="helpQnA">고객센터</a></li>
                    <li><a href="Contact">A/S</a></li>
                    
                    <!--  관리자전용 회원관리 페이지 추가 -->
	                <c:if test='${LoginVo.admin_yn == "Y"}'>

                    <li>
                      <a href="#">회원 관리</a>
                      <ul class="dropdown">
                        <li><a href="member_Manage">회원 관리</a></li>
                        <li><a href="Sales_Manage">매출 관리</a></li>
                      </ul>
                    </li>
                  </ul>
                   </c:if>

                  <!-- Search Icon -->
                  <div id="searchIcon">
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </div>
                </div>
                <!-- Navbar End -->
              </div>
            </nav>

            <!-- Search Form -->
            <div class="search-form">
              <form action="#" method="get">
                <input
                  type="search"
                  name="search"
                  id="search"
                  placeholder="Type keywords &amp; press enter..."
                />
                <button type="submit" class="d-none"></button>
              </form>
              <!-- Close Icon -->
              <div class="closeIcon">
                <i class="fa fa-times" aria-hidden="true"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="breadcrumb-area">
      <!-- Top Breadcrumb Area -->
      <div
        class="top-breadcrumb-area bg-img bg-overlay d-flex align-items-center justify-content-center"
        style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/main2.png)"
      >
        <h2>ABOUT US</h2>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-12">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="#"><i class="fa fa-home"></i> Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  회사 소개
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### About Area Start ##### -->
    <section class="about-us-area">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-12 col-lg-5">
            <!-- Section Heading -->
            <div class="section-heading">
              <h2 style="margin-top: 40px">ABOUT SsookSsook</h2>
              <p>
                놀라운 성장을 이루고 있는 쑥쑥의 원동력은 <br />바로 고객
                여러분입니다.
              </p>
            </div>

            <!-- Progress Bar Content Area -->
            <div class="alazea-progress-bar mb-50" style="padding-top: 40px">
              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>재구매율</p>
                <div id="bar1" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="92"></span>
                </div>
              </div>
              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>식물 성장률</p>
                <div id="bar2" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="78"></span>
                </div>
              </div>

              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>암튼 대단함</p>
                <div id="bar3" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="85"></span>
                </div>
              </div>

              <!-- Single Progress Bar -->
              <div class="single_progress_bar">
                <p>작년 대비 매출 증가율</p>
                <div id="bar4" class="barfiller">
                  <div class="tipWrap">
                    <span class="tip"></span>
                  </div>
                  <span class="fill" data-percentage="96"></span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-12 col-lg-6">
            <div class="alazea-benefits-area">
              <div class="row">
                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src="${pageContext.request.contextPath}/resources/img/core-img/deli.png" alt="" />
                    <h5 class="merit">당일 발송</h5>
                    <p style="font-size: 13px">
                      오후 4시 이전에 주문하시면 모든 제품을 당일 발송해 드리며
                      보다 빠른 배송을 위해 우체국 택배로 배송해 드립니다.
                    </p>
                  </div>
                </div>

                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src="${pageContext.request.contextPath}/resources/img/core-img/qna.png" alt="" />
                    <h5 class="merit">365일 전화 상담</h5>
                    <p style="font-size: 13px">
                      쑥쑥은 쉬지 않습니다. 연중무휴 오전 10시부터 오후 6시까지
                      고객님들의 불편을 도와드리기 위해 준비하고 있습니다.
                    </p>
                  </div>
                </div>

                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src="${pageContext.request.contextPath}/resources/img/core-img/product.png" alt="" />
                    <h5 class="merit">100% 국내 제작</h5>
                    <p style="font-size: 13px">
                      광주광역시 동구에 있는 제조시설에서 모든 제품을
                      생산합니다. 고객님이 걱정 없이 쓰실 수 있게 최선을 다
                      하겠습니다.
                    </p>
                  </div>
                </div>

                <!-- Single Benefits Area -->
                <div class="col-12 col-sm-6">
                  <div class="single-benefits-area">
                    <img src="${pageContext.request.contextPath}/resources/img/core-img/repair.png" alt="" />
                    <h5 class="merit">1년 이내 무상 A/S</h5>
                    <p style="font-size: 13px">
                      제품 구매 후 1년 이내 고장 발생 시 무조건 무상 A/S
                      해드립니다.
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="border-line"></div>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### About Area End ##### -->

    <!-- ##### Service Area Start ##### -->
    <section class="our-services-area bg-gray section-padding-100-0">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Section Heading -->
            <div class="section-heading text-center">
              <h2>쑥쑥과 함께 쑥쑥</h2>
              <p style="font-size: small">
                당신이 바쁜 사이에도 쑥쑥 자라게 해드려요
              </p>
            </div>
          </div>
        </div>

        <div class="row justify-content-between">
          <div class="col-12 col-lg-5">
            <div class="alazea-service-area mb-100">
              <!-- Single Service Area -->
              <div
                class="single-service-area d-flex align-items-center wow fadeInUp"
                data-wow-delay="100ms"
              >
                <!-- Icon -->
                <div class="service-icon mr-30">
                  <img src="${pageContext.request.contextPath}/resources/img/core-img/waterdrop.png" alt="" />
                </div>
                <!-- Content -->
                <div class="service-content">
                  <h5 class="explain_title">Automatic Watering</h5>
                  <p style="font-family: S-CoreDream-3Light; font-size: 14px">
                    쑥쑥은 자동 급수 시스템 뿐만 아니라 물통의 수위를 체크하여
                    급수 시 물이 부족한 일이 없게 도와줍니다. 또한 물통의 수위는
                    어플로 실시간 확인이 가능합니다.
                  </p>
                </div>
              </div>

              <!-- Single Service Area -->
              <div
                class="single-service-area d-flex align-items-center wow fadeInUp"
                data-wow-delay="300ms"
              >
                <!-- Icon -->
                <div class="service-icon mr-30">
                  <img src="${pageContext.request.contextPath}/resources/img/core-img/check.png" alt="" />
                </div>
                <!-- Content -->
                <div class="service-content">
                  <h5 class="explain_title">Check Status</h5>
                  <p style="font-family: S-CoreDream-3Light; font-size: 14px">
                    멀리 있어도 가까이 느낄 수 있게! 당신이 어디에 있어도 어플
                    하나면 쑥쑥이 돌보고 있는 화분들의 상태를 한번에 알게됩니다.
                  </p>
                </div>
              </div>

              <!-- Single Service Area -->
              <div
                class="single-service-area d-flex align-items-center wow fadeInUp"
                data-wow-delay="500ms"
              >
                <!-- Icon -->
                <div class="service-icon mr-30">
                  <img src="${pageContext.request.contextPath}/resources/img/core-img/talk.png" alt="" />
                </div>
                <!-- Content -->
                <div class="service-content">
                  <h5 class="explain_title">Communicate with other users</h5>
                  <p style="font-family: S-CoreDream-3Light; font-size: 14px">
                    쑥쑥은 '식물덕후'들이 모여있습니다. 당신이 치열하게 고민하던
                    고민이 쑥쑥 유저 게시판에서 5분만에 해결 될 수도 있습니다!
                    정말 놀랍지 않나요?
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-12 col-lg-6">
            <div class="alazea-video-area bg-overlay mb-100">
              <img src="${pageContext.request.contextPath}/resources/img/bg-img/video.jpeg" alt="" />
              <a
                href="https://www.youtube.com/watch?v=OvioeS1ZZ7o"
                class="video-icon"
              >
                <i class="fa fa-play" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Service Area End ##### -->

    <!-- ##### Cool Facts Area Start ##### -->
    <section
      class="cool-facts-area bg-img section-padding-100-0"
      style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/subscribe.png)"
    >
      <div class="container">
        <div class="row">
          <!-- Single Cool Facts Area -->
          <div class="col-12 col-sm-6 col-md-3">
            <div
              class="single-cool-fact d-flex align-items-center justify-content-center mb-100"
            >
              <div class="cf-icon">
                <img src="${pageContext.request.contextPath}/resources/img/core-img/cf1.png" alt="" />
              </div>
              <div class="cf-content">
                <h2><span class="counter">28</span></h2>
                <h6>AWARDS</h6>
              </div>
            </div>
          </div>

          <!-- Single Cool Facts Area -->
          <div class="col-12 col-sm-6 col-md-3">
            <div
              class="single-cool-fact d-flex align-items-center justify-content-center mb-100"
            >
              <div class="cf-icon">
                <img src="${pageContext.request.contextPath}/resources/img/core-img/cf2.png" alt="" />
              </div>
              <div class="cf-content">
                <h2><span class="counter">230</span>K+</h2>
                <h6>Count</h6>
              </div>
            </div>
          </div>

          <!-- Single Cool Facts Area -->
          <div class="col-12 col-sm-6 col-md-3">
            <div
              class="single-cool-fact d-flex align-items-center justify-content-center mb-100"
            >
              <div class="cf-icon">
                <img src="${pageContext.request.contextPath}/resources/img/core-img/cf3.png" alt="" />
              </div>
              <div class="cf-content">
                <h2><span class="counter">130</span>K+</h2>
                <h6>Client Review</h6>
              </div>
            </div>
          </div>

          <!-- Single Cool Facts Area -->
          <div class="col-12 col-sm-6 col-md-3">
            <div
              class="single-cool-fact d-flex align-items-center justify-content-center mb-100"
            >
              <div class="cf-icon">
                <img src="${pageContext.request.contextPath}/resources/img/core-img/cf4.png" alt="" />
              </div>
              <div class="cf-content">
                <h2><span class="counter">960</span>K+</h2>
                <h6>REVENUE</h6>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Side Image -->
      <div class="side-img wow fadeInUp" data-wow-delay="500ms"></div>
    </section>
    <!-- ##### Cool Facts Area End ##### -->

    <!-- ##### Team Area Start ##### -->
    <section class="team-area section-padding-100-0">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <!-- Section Heading -->
            <div class="section-heading text-center">
              <h2>OUR TEAM</h2>
              <p>A team of dedicated experienced professionals.</p>
            </div>
          </div>
        </div>

        <div class="row">
          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team1.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Yang Jeong In</h5>
                <p>Assistant Manager</p>
              </div>
            </div>
          </div>

          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team2.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Seo Chang Bin</h5>
                <p>Deputy General Manager</p>
              </div>
            </div>
          </div>
          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team3.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Felix Lee</h5>
                <p>Assistant Manager</p>
              </div>
            </div>
          </div>
          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team4.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Kim Seung Min</h5>
                <p>Auditing Director</p>
              </div>
            </div>
          </div>

          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team5.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Hwang Hyun Jin</h5>
                <p>Senior Clerk</p>
              </div>
            </div>
          </div>

          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team6.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Lee Min Ho</h5>
                <p>Plan Manager</p>
              </div>
            </div>
          </div>

          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team7.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Han Ji Sung</h5>
                <p>Mechanic</p>
              </div>
            </div>
          </div>

          <!-- Single Team Member Area -->
          <div class="col-12 col-sm-6 col-lg-3">
            <div class="single-team-member text-center mb-100">
              <!-- Team Member Thumb -->
              <div class="team-member-thumb">
                <img src="${pageContext.request.contextPath}/resources/img/bg-img/team8.png" alt="" />
                <!-- Social Info -->
                <div class="team-member-social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
              <!-- Team Member Info -->
              <div class="team-member-info mt-30">
                <h5>Bang Chan</h5>
                <p>eneral Manager</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ##### Team Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area bg-img" style="background-color: #313b2b">
      <!-- Main Footer Area -->
      <div class="main-footer-area">
        <div class="container">
          <div class="row">
            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="footer-logo mb-30">
                  <a href="#"
                    ><img src="${pageContext.request.contextPath}/resources/img/core-img/SSSSlogo.png" alt=""
                  /></a>
                </div>
                <p>
                  Lorem ipsum dolor sit samet, consectetur adipiscing elit.
                  India situs atione mantor
                </p>
                <div class="social-info">
                  <a href="#"
                    ><i class="fa fa-facebook" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-twitter" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-google-plus" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-instagram" aria-hidden="true"></i
                  ></a>
                  <a href="#"
                    ><i class="fa fa-linkedin" aria-hidden="true"></i
                  ></a>
                </div>
              </div>
            </div>

            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="widget-title">
                  <h5>QUICK LINK</h5>
                </div>
                <nav class="widget-nav">
                  <ul>
                    <li><a href="#">Purchase</a></li>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Payment</a></li>
                    <li><a href="#">Review</a></li>
                    <li><a href="#">Return</a></li>
                    <li><a href="#">Advertise</a></li>
                    <li><a href="#">BulkOrder</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Application</a></li>
                    <li><a href="#">Contact</a></li>
                  </ul>
                </nav>
              </div>
            </div>

            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="widget-title">
                  <h5>STORE</h5>
                </div>

                <!-- Single Best Seller Products -->
                <div
                  class="single-best-seller-product d-flex align-items-center"
                >
                  <div class="product-thumbnail">
                    <a href="shop-details.html"
                      ><img src="${pageContext.request.contextPath}/resources/img/bg-img/apple1.png" alt=""
                    /></a>
                  </div>
                  <div class="product-info">
                    <a href="shop-details.html">가로수길 2호점</a>
                    <p>서울특별시 서울 강남구 <br />가로수길 43</p>
                  </div>
                </div>

                <!-- Single Best Seller Products -->
                <div
                  class="single-best-seller-product d-flex align-items-center"
                >
                  <div class="product-thumbnail">
                    <a href="shop-details.html"
                      ><img src="${pageContext.request.contextPath}/resources/img/bg-img/apple.png" alt=""
                    /></a>
                  </div>
                  <div class="product-info">
                    <a href="shop-details.html">명동 3호점</a>
                    <p>
                      서울 중구 남대문로 2가 9-1<br />
                      하이드파크
                    </p>
                  </div>
                </div>
              </div>
            </div>

            <!-- Single Footer Widget -->
            <div class="col-12 col-sm-6 col-lg-3">
              <div class="single-footer-widget">
                <div class="widget-title">
                  <h5>CONTACT</h5>
                </div>

                <div class="contact-information">
                  <p><span>Address:</span> 광주광역시 동구 예술길 31-15 4층</p>
                  <p><span>tel:</span> 062-655-3510</p>
                  <p><span>fax:</span> 062-655-3511</p>
                  <p><span>Email:</span> info.ssookssook@gmail.com</p>
                  <p><span>Open hours:</span> Mon - Sun: 8 AM to 9 PM</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Footer Bottom Area -->
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="border-line"></div>
            </div>
            <!-- Copywrite Text -->
            <div class="col-12 col-md-6">
              <div class="copywrite-text">
                <p>
                  &copy; Copyright &copy;
                  <script>
                    document.write(new Date().getFullYear());
                  </script>
                  All rights reserved |
                  <i class="fa fa-heart-o" aria-hidden="true"></i> by
                  <a href="#" target="_blank">SsookSsook</a>
                </p>
              </div>
            </div>
            <!-- Footer Nav -->
            <div class="col-12 col-md-6">
              <div class="footer-nav">
                <nav>
                  <ul>
                    <li><a href="main">Home</a></li>
                    <li><a href="About">About</a></li>
                    <li><a href="#">Purchase</a></li>
                    <li><a href="#"> Service center</a></li>
                    <li><a href="Contact">A/S</a></li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Files ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="${pageContext.request.contextPath}/resources/js/active.js"></script>
  </body>
</html>
