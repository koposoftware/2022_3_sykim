<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
   href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>

<meta charset="UTF-8">
<title>Insert title here</title>



   <script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
   crossorigin="anonymous"></script>
</head>
    <link rel="stylesheet" href="/vendors2/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/vendors2/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="/vendors2/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="/vendors2/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="/vendors2/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="/vendors2/owl-carousel-2/owl.theme.default.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css2/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="/images2/favicon.png" />
    
 
</head>

<style>
.table-striped tbody tr:nth-of-type(odd) {
    background-color: #ffffff;
}
.content-wrapper {
    background: #e4e4e4;
    padding: 1.875rem 1.75rem;
    width: 100%;
    -webkit-flex-grow: 1;
    flex-grow: 1;
}
/* font-family: 'Noto Sans KR', sans-serif; */
@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}
@font-face {
    font-family: 'HanaB.ttf';
    src: url('/font/HanaB.ttf');
    font-weight: 400;
    font-style: normal;
}
.sidebar .nav .nav-item.active > .nav-link {
    background: #bbbbbb;
    position: relative;
   
}
.sidebar .nav .nav-item.active > .nav-link .menu-title {
    color: #5b6cc6;
}

.mail > .menu-title:hover{
  background: none;
  color: #fff !important;
}

.sidebar .nav .nav-item .nav-link {
    display: -webkit-flex;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    white-space: nowrap;
    padding: 0.8rem 10px 0.8rem 1.188rem;
    color: #5b6cc6;
    -webkit-transition-duration: 0.45s;
    -moz-transition-duration: 0.45s;
    -o-transition-duration: 0.45s;
    transition-duration: 0.45s;
    transition-property: color;
    -webkit-transition-property: color;
    height: 46px;
    border-radius: 0px 100px 100px 0px;
}
.sidebar .nav:not(.sub-menu) > .nav-item:hover:not(.nav-category):not(.account-dropdown) > .nav-link {
    background: #a0c0d9;
    color: #ffffff;
}

.h6 {
    font-size: 1rem;
    color: black;
}

.text-muted, .preview-list .preview-item .preview-item-content p .content-category {
    color: #fff !important;
}
.text-muted1, .preview-list .preview-item .preview-item-content p .content-category {
    color: #787171 !important;
}

</style>



<body>


<div class="container-scroller">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar" style="background-color:#bbbbbb">  
<!--       #d3d3df -->
        <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top" style="background-color:#42b4b5">
          <a class="sidebar-brand brand-logo" href="/"><img src="/img/hanaglobal-admin.png" alt="logo" alt="" class="img-fluid" style="width:280px;height:70px" /></a>
          <a class="sidebar-brand brand-logo-mini" href="index.html"><img src="/assets/images/logo-mini.svg" alt="logo" /></a>
        </div>
        <ul class="nav">
          <li class="nav-item profile">
            <div class="profile-desc">
              <div class="profile-pic">
                <div class="count-indicator">
                  <img class="img-xs rounded-circle " src="img/account.png" alt="">
                  <span class="count bg-success"></span>
                </div>
                <div class="profile-name">
                  <h5 class="mb-0 font-weight-normal" style="font-family: 'Pretendard-Regular'">admin 관리자님!</h5>
                  <span>어서오세요!</span>
                </div>
              </div>
              <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>
              <div class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list" aria-labelledby="profile-dropdown">
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-settings text-primary"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">Account settings</p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-onepassword  text-info"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">Change Password</p>
                  </div>
                </a>
                <div class="dropdown-divider"></div>
                <a href="#" class="dropdown-item preview-item">
                  <div class="preview-thumbnail">
                    <div class="preview-icon bg-dark rounded-circle">
                      <i class="mdi mdi-calendar-today text-success"></i>
                    </div>
                  </div>
                  <div class="preview-item-content">
                    <p class="preview-subject ellipsis mb-1 text-small">To-do list</p>
                  </div>
                </a>
              </div>
            </div>
          </li>
          <li class="nav-item nav-category">
<!--             <span class="nav-link">Navigation</span> -->
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" href="index.fhtml">
              <span class="menu-icon">
                <i class="mdi mdi-speedometer"></i>
              </span>
              <span class="menu-title">대시보드</span>
            </a>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-icon">
                <i class="mdi mdi-laptop"></i>
              </span>
              <span class="menu-title">심사리스트</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/dropdowns.html">Dropdowns</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item menu-items">
            <a class="nav-link mail" href="${pageContext.request.contextPath}/admin/mail" >
              <span class="menu-icon">
                <i class="mdi mdi-playlist-play"></i>
              </span>
              <span class="menu-title">메일보내기</span>
            </a>
          </li>
       
    
       
          <li class="nav-item menu-items">
            <a class="nav-link"  data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <span class="menu-icon">
                <i class="mdi mdi-security"></i>
              </span>
              <span class="menu-title" >기타</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
              </ul>
            </div>
          </li>
       
        </ul>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar p-0 fixed-top d-flex flex-row">
          <div class="navbar-brand-wrapper d-flex d-lg-none align-items-center justify-content-center" style="background-color:#fff">
            <a class="navbar-brand brand-logo-mini" href="index.html"><img src="/img/club.png" alt="logo" width="1000px" /></a>
          </div>
          <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch" style="background-color:#42b4b5;color:#fff">
            <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
              <span class="mdi mdi-menu"></span>
            </button>
            <ul class="navbar-nav w-100">
              <li class="nav-item w-100">
                <form class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">
                  <input type="text" class="form-control" placeholder="Search products" style="background-color:#fff;border:none">
                </form>
              </li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
              <li class="nav-item dropdown d-none d-lg-block">
                <a class="nav-link btn btn-success create-new-button" id="createbuttonDropdown" data-toggle="dropdown" aria-expanded="false" href="#" style="background-color:#5d8896">+ 프로젝트 추가하기</a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="createbuttonDropdown">
                  <h6 class="p-3 mb-0">Projects</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-file-outline text-primary"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Software Development</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-web text-info"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">UI Development</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-layers text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Software Testing</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">See all projects</p>
                </div>
              </li>
              <li class="nav-item nav-settings d-none d-lg-block">
                <a class="nav-link" href="#">
                  <i class="mdi mdi-view-grid"></i>
                </a>
              </li>
              <li class="nav-item dropdown border-left">
                <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                  <i class="mdi mdi-email"></i>
                  <span class="count bg-success"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                  <h6 class="p-3 mb-0">Messages</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <img src="/img/hanaglobal.png" alt="image" class="rounded-circle profile-pic">
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Mark send you a message</p>
                      <p class="text-muted mb-0"> 1 Minutes ago </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <img src="/img/account.png" alt="image" class="rounded-circle profile-pic">
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Cregh send you a message</p>
                      <p class="text-muted mb-0"> 15 Minutes ago </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <img src="/img/account.png alt="image" class="rounded-circle profile-pic">
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject ellipsis mb-1">Profile picture updated</p>
                      <p class="text-muted mb-0"> 18 Minutes ago </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">4 new messages</p>
                </div>
              </li>
              <li class="nav-item dropdown border-left">
                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                  <i class="mdi mdi-bell"></i>
                  <span class="count bg-danger"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                  <h6 class="p-3 mb-0">Notifications</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-calendar text-success"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Event today</p>
                      <p class="text-muted ellipsis mb-0"> Just a reminder that you have an event today </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-settings text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Settings</p>
                      <p class="text-muted ellipsis mb-0"> Update dashboard </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-link-variant text-warning"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Launch Admin</p>
                      <p class="text-muted ellipsis mb-0"> New admin wow! </p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">See all notifications</p>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" id="profileDropdown" href="#" data-toggle="dropdown">
                  <div class="navbar-profile">
                    <img class="img-xs rounded-circle" src="img/account.png" alt="">
                    <p class="mb-0 d-none d-sm-block navbar-profile-name">admin 관리자님!</p>
                    <i class="mdi mdi-menu-down d-none d-sm-block"></i>
                  </div>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="profileDropdown">
                  <h6 class="p-3 mb-0">Profile</h6>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-settings text-success"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Settings</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item preview-item">
                    <div class="preview-thumbnail">
                      <div class="preview-icon bg-dark rounded-circle">
                        <i class="mdi mdi-logout text-danger"></i>
                      </div>
                    </div>
                    <div class="preview-item-content">
                      <p class="preview-subject mb-1">Log out</p>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
                  <p class="p-3 mb-0 text-center">Advanced settings</p>
                </div>
              </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-format-line-spacing"></span>
            </button>
          </div>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row" style="background-color:#e4e4e4">
              <div class="col-12 grid-margin stretch-card">
                
              </div>
            </div>
            <div class="row" style="background-color:#e4e4e4">
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#058489">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0"> 
                         <input type="hidden" id="CurrentRate" name="CurrentRate" 
                         class="form-control"
                        placeholder="직접입력" / style="width:647px;height:40px;"
                        value="${selectbuybasicrate1[4].BUYBASICRATE}">
                        미국 <br>
                         ${selectbuybasicrate1[4].BUYBASICRATE} 
                        
                          </h3>
                          <p class="ml-2 mb-0 font-weight-medium" style="margin-top:10px;color:#e74c4c">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.5 </p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-danger ">
                        <span class="mdi mdi-arrow-top-right icon-item" ></span>
                       
                        </div>
                      </div>
                    </div>
                    <h6 class="text-muted font-weight-normal" style="font-family: 'HanaB.ttf'" >
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color: #058489">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">유럽연합 
                           <input type="hidden" id="CurrentRate" name="CurrentRate" 
                         class="form-control"
                        placeholder="직접입력" / style="width:647px;height:40px;"
                        value="${selectbuybasicrate1[5].BUYBASICRATE}">
                         <br>
                        ${selectbuybasicrate1[5].BUYBASICRATE} 
                          
                          </h3>
                           <p class="ml-2 mb-0 font-weight-medium" style="margin-top:10px;color:#00d25b" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.97</p>
                        </div>
                      </div>
                      <div class="col-3">
                           <div class="icon icon-box-success">
                          <span class="mdi mdi-arrow-bottom-right icon-item"></span>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#058489">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">중국 CNY 
                           <input type="hidden" id="CurrentRate" name="CurrentRate" 
                         class="form-control"
                        placeholder="직접입력" / style="width:647px;height:40px;"
                        value="${selectbuybasicrate1[1].BUYBASICRATE}">
                         <br>
                         ${selectbuybasicrate1[1].BUYBASICRATE} 
                        
                          </h3>
                        <p class="ml-2 mb-0 font-weight-medium" style="margin-top:10px;color:#e74c4c" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0.82</p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-danger">
                          <span class="mdi mdi-arrow-top-right icon-item"></span>
                        </div>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color: #058489">
                    <div class="row">
                      <div class="col-9">
                        <div class="d-flex align-items-center align-self-start">
                          <h3 class="mb-0">일본JPY(100엔)
                         <input type="hidden" id="CurrentRate" name="CurrentRate" 
                         class="form-control"
                        placeholder="직접입력" / style="width:647px;height:40px;"
                        value="${selectbuybasicrate1[0].BUYBASICRATE}">
                          <br>
                         ${selectbuybasicrate1[0].BUYBASICRATE} 
                          </h3>
                          <p class=" ml-2 mb-0 font-weight-medium" style="margin-top:10px;color:#00d25b" >&nbsp;6.71</p>
                        </div>
                      </div>
                      <div class="col-3">
                        <div class="icon icon-box-success ">
                          <span class="mdi mdi-arrow-bottom-right icon-item"></span>
                        </div>
                      </div>
                    </div>
                  
                  </div>
                </div>
              </div>
            </div>
              <div class="row" style="background-color:#e4e4e4">
              <div class="col-12">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#dee2e6">
                    <h4 class="card-title text-muted1" style="font-family: 'Pretendard-Regular'">국가 환율 </h4>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="table-responsive">
                          <table class="table">
                            <tbody>
                              <tr>
                                <td>
                                  <i class="flag-icon flag-icon-us"></i>
                                </td>
                                <td>USA</td>
                                <td class="text-right">  </td>
                                <td class="text-right font-weight-medium">
                           <input type="hidden" id="CurrentRate" name="CurrentRate" 
                        		class="form-control"
                        		placeholder="직접입력" / style="width:647px;height:40px;" 
                       		value="${selectbuybasicrate1[4].BUYBASICRATE}"> 
                                ${selectbuybasicrate1[4].BUYBASICRATE} 
                             
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <i class="flag-icon flag-icon-de"></i>
                                </td>
                                <td>Germany</td>
                                <td class="text-right">  </td>
                                <td class="text-right font-weight-medium">
                                <input type="hidden" id="CurrentRate" name="CurrentRate"  -->
                          		class="form-control" 
                        		placeholder="직접입력" / style="width:647px;height:40px;" 
                         		value="${selectbuybasicrate1[5].BUYBASICRATE}"> 
                            ${selectbuybasicrate1[5].BUYBASICRATE} 
                             
                                 </td>
                              </tr>
                              <tr>
                                <td>
                                  <i class="flag-icon flag-icon-au"></i>
                                </td>
                                <td>Australia</td>
                                <td class="text-right">  </td>
                                <td class="text-right font-weight-medium"> 
                              <input type="hidden" id="CurrentRate" name="CurrentRate"  -->
                         		class="form-control" -->
                        		placeholder="직접입력" / style="width:647px;height:40px;" 
                   		      value="${selectbuybasicrate1[3].BUYBASICRATE}"> 
-                                 ${selectbuybasicrate1[3].BUYBASICRATE} 
                                 </td>
                              </tr>
                              <tr>
                                <td>
                                  <i class="flag-icon flag-icon-gb"></i>
                                </td>
                                <td>United Kingdom</td>
                                <td class="text-right">  </td>
                                <td class="text-right font-weight-medium"> 

                                 </td>
                              </tr>

                            </tbody>
                          </table>
                        </div>
                      </div>
                      <div class="col-md-7">
                        <div id="audience-map" class="vector-map"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row" style="background-color:#e4e4e4;padding-left:20px;padding-right:20px">
              <div class="col-12 grid-margin">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#fff;">
                    <h4 class="card-title text-muted1" style="font-family: 'HanaB.ttf">심사 리스트</h4>
             <table class="table table-striped dataTable mt-0" id="Table">
             <thead class="" style="background-color:#e0dcdc">
               <tr>          <th> </th>
                             
                             <th style="width: 15%"> 아이디 </th>
                              <th class="align-items-center justify-content-center"
                                 style="width: 15%">송금인 성명</th>
                              <th style="width: 15%;">송금인 계좌번호</th> &nbsp;
                              <th style="width: 15%;">수취인 성명</th> &nbsp;
                              <th style="width: 15%;">수취인 계좌번호</th> &nbsp;
                              <th style="width: 15%;">통화</th> &nbsp;
                              <th style="width: 15%;">거래액</th> &nbsp;
                              <th style="width: 15%;">신청일</th> &nbsp;
                              <th style="width: 15%;">승인상태</th> &nbsp;
               </tr>
            </thead>
            
            <c:forEach items="${transaction}" var="transaction">
 <!-- 모달 -->
 <div class="modal fade" id="exampleModal" tabindex="-1"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" style="margin-left:300px">
         <div class="modal-content" style="border: 0.5rem solid #0c8b8b;width:1100px;height:800px">
            <div class="modal-header" style="background-color:#ffffff">
           
            <div class="basicfont" style="color:#009699; font-family: 'HanaB.ttf';">입증서류심사</div>
            </h5>
            </div>
            <div class="modal-body" style="height:500px;text-align:center;background-color:#ffffff;color:black">
           <div style="font-family:Pretendard-Regular"></div>

               <div class="row">
                <div class="col-md-6">
                <img src="/img/scan.gif" style="width:450px;height:550px;position:absolute;margin-top:0px;margin-left:80px;">              
                </div>


        <div class="col-md-6">
        <div class="container">
      <div class="row">
         <div class="col-md-10" style="margin-left:20px">
            <h2 class="mb-5" style="margin-left:50px; font-family: 'HanaB.ttf'">입증서류 심사</h2>
                     <div class="d-flex ">
                     <p scope="row" style="width:100px">성명 </p>
                     <p id="name"></p>
                     </div>
                     <hr>
                     
                     <div class="d-flex ">
                     <p scope="row" style="width:100px">studies at </p>
                     <p id="studies"></p>
                     </div>
                     <hr>
                     
                     <div class="d-flex ">
                     <p scope="row" style="width:100px">Born </p>
                     <p id="born"></p>
                     </div>
                     <hr>
                     
                     <div class="d-flex ">
                     <p scope="row" style="width:100px">ISIC Validity</p>
                     <p id="Validity"></p>
                     </div>
                     <hr>
                     
                     <div class="d-flex ">
                     <p scope="row" style="width:100px">카드번호</p>
                     <p id="cardNum"></p>
                     </div>
                     <hr>
                     
                     <div class="d-flex ">
                     <p scope="row" style="width:100px">Month/year</p>
                     <p id="exdate"></p>
                     </div>
                    
         </div>
      </div>
   </div>
                 
</div>
</div>
<div class="modal-footer" style="margin-top:150px">
            <form action="/update" method="post" name="">
            <input type="hidden" name="trans_no" id="trans_no" value=" ${transaction['TRANS_NO']}">
            <input type="hidden" name="status" id="status" value="">
            <button type="submit" onclick="approved()" class="btn btn-primary" >승인</button> 
            </form>
             <button type="button" class="btn btn-primary"
               onclick="rejected()" data-bs-dismiss="modal" >반려</button>
                <button type="button" class="btn btn-secondary"
               data-bs-dismiss="modal">취소</button>   
            </div>
            </div>
         </div>
      </div>
   </div>

<!-- 모달 끝 -->
            <tbody> 
             <tr> 
                  <td>
                  <div class="form-check form-check-muted m-0"> 
                                 <label class="form-check-label"> 
                                 <input type="checkbox" class="form-check-input"> 
                                </label> 
                               </div> 
                  </td>

                  <td>
                  ${transaction['ID']}
                  </td>
 
                   <td>
                   ${transaction['SENDER_NAME']}
                   </td>
                  
                   <td>
                   ${transaction['WITHDRAWAL_ACCOUNTNO']}
                   </td>
                 
                   <td>
                    ${transaction['RECEIVED_NAME']}
                   </td>
                   
                   <td>
                    ${transaction['DEPOSIT_ACCOUNTNO']}
                   </td>
                   
                   <td>
                    ${transaction['CURRENCY']}
                   </td>
                   
                   <td>
                    ${transaction['TRANS_AMOUNT']}
                   </td>
                    <td>
                    ${transaction['TRANS_DATE']}
                   </td>
                    <td>
                  <c:if test="${transaction['STATUS'] eq '대기중'}">
                     <div id="check"><div class="badge badge-outline-success" style="background-color:#009699;width:120px"><button class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="color:#fff;width:100%" id="show2"><div id="show1">PENDING</div></button></div></div>
                   </c:if>
                   <c:if test="${transaction['STATUS'] eq '완료'}">
                         
                     <div id="check"><div class="badge badge-outline-warning" style="background-color:orange;width:120px"><button class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal" style="color:#fff;width:100%" id="show2"><div id="show1">COMPLETE</div></button></div></div>
                    </c:if>
                     </td>
                </tr>
             
            </c:forEach>
             </tbody>

         </table>
         </div>
         </div>
         </div>
         </div>

            <div class="row" style="background-color:#e4e4e4;padding-left:20px;padding-right:20px">
              <div class="col-md-8 grid-margin stretch-card">
                <div class="card" style="border:none">
                 <div class="card-body" style="background-color:#f3f3f3;color:black">
                 <h4 class="card-title text-muted1" style="font-family: 'HanaB.ttf">환전/송금 이용자 수</h4>
                  <p class="font-weight-500">

                  <canvas id="myChart" width="400" height="100"></canvas>
                </div>
                </div>
              </div>
                <div class="col-md-4 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#baccca;">
                    <h4 class="card-title" style="font-family: 'HanaB.ttf'">HANA Global 평균 환전 금액</h4>
                    <canvas id="transaction-history" class="transaction-chart"></canvas>
                    <div class="bg-gray d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3" style="background-color:#fff;color:black">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1"></h6>
                        <p class="text-muted1 mb-0"></p>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0"></h6>
                      </div>
                    </div>
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3" style="background-color:#fff;color:black">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1"></h6>
                        <p class="text-muted1 mb-0">
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0"></h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           
            
            <div class="row" style="background-color:#e4e4e4;padding-left:20px">
              <div class="col-md-6 col-xl-4 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#cdcaca;">
                    <div class="d-flex flex-row justify-content-between text-muted1">
                      <h4 class="card-title">Messages</h4>
                      <p class="text-muted mb-1 small">View all</p>
                    </div>
                    <div class="preview-list">
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="/img/account.png" alt="image" class="rounded-circle" />
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject">Leonard</h6>
                              <p class="text-muted text-small">5 minutes ago</p>
                            </div>
                            <p class="text-muted">상태 진행 중</p>
                          </div>
                        </div>
                      </div>
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="/img/account.png" alt="image" class="rounded-circle" />
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject"></h6>
                              <p class="text-muted text-small"></p>
                            </div>
                            <p class="text-muted">상태 진행 중</p>
                          </div>
                        </div>
                      </div>
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="/img/account.png" alt="image" class="rounded-circle" />
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject"></h6>
                              <p class="text-muted text-small"></p>
                            </div>
                            <p class="text-muted"></p>
                          </div>
                        </div>
                      </div>
                      <div class="preview-item border-bottom">
                        <div class="preview-thumbnail">
                          <img src="/img/account.png" alt="image" class="rounded-circle" />
                        </div>
                        <div class="preview-item-content d-flex flex-grow">
                          <div class="flex-grow">
                            <div class="d-flex d-md-block d-xl-flex justify-content-between">
                              <h6 class="preview-subject"></h6>
                              <p class="text-muted text-small"></p>
                            </div>
                            <p class="text-muted"></p>
                          </div>
                        </div>
                      </div>s
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-xl-4 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#908cb7;border:none">
                    <h4 class="card-title">Portfolio Slide</h4>
                    <div class="owl-carousel owl-theme full-width owl-carousel-dash portfolio-carousel" id="owl-carousel-basic">
                      <div class="item">
                        <img src="../img/hanaglobal.img.png" alt="" style="height:230px">
                      </div>
                      <div class="item">
                        <img src="../img/world1.png" alt="" style="height:230px">
                      </div>
              </div>
                    <div class="d-flex py-4">
                      <div class="preview-list w-100">
                        <div class="preview-item p-0">
                          <div class="preview-thumbnail">
                            <img src="img/check.png" class="rounded-circle" alt="">
                          </div>
                          <div class="preview-item-content d-flex flex-grow">
                            <div class="flex-grow">
                              <div class="d-flex d-md-block d-xl-flex justify-content-between">
                                <h6 class="preview-subject">관리자님</h6>
                                <p class="text-muted text-small">4 Hours Ago</p>
                              </div>
                              <p class="text-muted">확인중입니다</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <p class="text-muted">status</p>
                    <div class="progress progress-md portfolio-progress">
                      <div class="progress-bar bg-success" role="progressbar" style="width: 50%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-12 col-xl-4 grid-margin stretch-card">
                <div class="card" style="border:none">
                  <div class="card-body" style="background-color:#fff;padding-right:20px">
                    <h4 class="card-title" style="color:black;font-family: 'Pretendard-Regular'">To do list</h4>
                    <div class="add-items d-flex">
                      <input type="text" class="form-control todo-list-input" placeholder="enter task..">
                      <button class="add btn btn-secondary todo-list-add-btn"></button>
                    </div>
                    <div class="list-wrapper">
                      <ul class="d-flex flex-column-reverse text-white todo-list todo-list-custom">
                        <li>
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox"> 강남지점에 12시에 파일 송부하기 </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                        <li>
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox"> 승인 여부 알람 제공하기 </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                     
                        <li>
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox"> 회원 수 확인하기 </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                        <li>
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox"> 서류 확인하기 </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                           <li class="completed">
                          <div class="form-check form-check-primary">
                            <label class="form-check-label">
                              <input class="checkbox" type="checkbox" checked> 승인 제대로 하기 </label>
                          </div>
                          <i class="remove mdi mdi-close-box"></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © bootstrapdash.com 2020</span>
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center"> Free <a href="https://www.bootstrapdash.com/bootstrap-admin-template/" target="_blank">Bootstrap admin templates</a> from Bootstrapdash.com</span>
            </div>
          </footer>
   
        </div>

      </div>

    </div>
   
    <!-- plugins:js -->
    <script src="/vendors2/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
>
    <script src="/vendors2/chart.js/Chart.min.js"></script>
    <script src="/vendors2/progressbar.js/progressbar.min.js"></script>
    <script src="/vendors2/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="/vendors2/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="/vendors2/owl-carousel-2/owl.carousel.min.js"></script>

    <script src="/js/off-canvas.js"></script>
    <script src="/js/hoverable-collapse.js"></script>
    <script src="/js/misc.js"></script>
    <script src="/js/settings.js"></script>
    <script src="/js/todolist.js"></script>
    <script src="/js/dashboard.js"></script>
  
  
 <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/> 

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>   





<script>
   $(document).ready(function() {
      $.ajax({
         url : '${pageContext.request.contextPath}/clovaOCR',
         method : 'get',
         success : function(data) {

            let list = JSON.parse(data);
            console.log(list);
            console.log(list.images);
            console.log(list.images[0]); 
            console.log(list.images[0].fields);
            console.log(list.images[0].fields);

            let Validity = document.getElementById('Validity');
            let ceo1 = document.getElementById('ceo1');
            let ceo2 = document.getElementById('ceo2');
            let studies = document.getElementById('studies');
            let born = document.getElementById('born');
            let name = document.getElementById('name');
            let cardNum = document.getElementById('cardNum');
            let exdate = document.getElementById('exdate');

            studies.innerText = list.images[0].fields[12].inferText + " " + list.images[0].fields[13].inferText;
            born.innerText = list.images[0].fields[15].inferText;
            Validity.innerText  = list.images[0].fields[18].inferText +" ";
            cardNum.innerText = list.images[0].fields[21].inferText +  " - " +  list.images[0].fields[22].inferText  +" - " + list.images[0].fields[23].inferText +" - " + list.images[0].fields[24].inferText;
            exdate.innerText = list.images[0].fields[34].inferText;

            
         },
         error : function() {
            alert('실패');
         }
      })
   })
</script>
<script>


function rejected(){
   $("#check").empty();
    $("#check").append('<div class="badge badge-outline-danger" style="background-color:red"><button class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal"  style="color:#fff"><div id="show4">REJECTED</div></button>');
}

const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['JPY', 'USD', 'CNY', 'HKD', 'AUD', 'NZD'],
        datasets: [{
            label: '# of Currency Exchange',
            data: data,
            backgroundColor: [
                '#54BAB9',
                '#6FEDD6',
                '#AAC4FF',
                '#FFCACA',
                '#FDFDBD',
                '#E1FFB1'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>
 


   </body>
</html>