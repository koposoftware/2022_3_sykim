<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700"
	rel="stylesheet">
<!-- <link href="https://webfontworld.github.io/amore/AritaBuri.css" rel="stylesheet"> -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>
</head>


<header
	style="border-bottom: 2px solid rgb(64, 128, 128); background: #fff;"
	class="header fixed-top">
	<jsp:include page="/WEB-INF/jsp/include/topMenu.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/jsp/include/sidebar.jsp"></jsp:include>
</header>
<script src="/Mission-MVC01/resources/js/jquery-3.6.0.min.js"></script>
<style>
@font-face {
	font-family: 'HanaB.ttf';
	src: url('/font/HanaB.ttf');
	font-weight: 400;
	font-style: normal;
}
</style>
<body style="background: #f4f4f4">



	<div class="container" style="margin-top: 40px">
		<h2
			style="font-family: 'HanaB.ttf'; margin-left: 560px; margin-top: 100px; display: inline-block">가까운
			지점 찾기</h2>
		<div style="color: #657c9d; font-family: 'Noto Sans KR', sans-serif;"></div>
		<div class="hanafont" style="margin-left: 250px; margin-top: 30px">
			<div class="container-xxl p-0">



				<!-- Navbar & Hero Start -->
				<div class="container-xxl position-relative p-0">
					<div class="container-xxl page-header">
						<div class="container text-center">
							<hr style="border: 1px solid black">
						</div>
					</div>
				</div>
				<!-- Navbar & Hero End -->


				<!-- About Start -->
				<div class="container-xxl py-6">
					<div class="container">
						<div class="row g-5 align-items-center">
							<div class="map_wrap">
								<div id="map"
									style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
								<div class=" wow fadeInUp" data-wow-delay="0.1s">
									<div id="menu_wrap" class="bg_white">
										<div class="option">
											<div>
												<form onsubmit="searchPlaces(); return false;">
													키워드 : <input type="text" value="종로 은행" id="keyword"
														size="15">
													<button type="submit">검색하기</button>
												</form>
											</div>
										</div>
										<hr>
										<ul id="placesList"></ul>
										<div id="pagination"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- Back to Top -->
				<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
					class="bi bi-arrow-up"></i></a>
			</div>


			<script type="text/javascript"
				src=""></script>
			<script>
				var markers = [];

				var mapContainer = document.getElementById('map'),
				mapOption = {
					center : new kakao.maps.LatLng(37.566826, 126.9786567), 
					level : 3
			
				};

	
				var map = new kakao.maps.Map(mapContainer, mapOption);


				var ps = new kakao.maps.services.Places();

				
				var infowindow = new kakao.maps.InfoWindow({
					zIndex : 1
				});

				searchPlaces();

	
				function searchPlaces() {

					var keyword = document.getElementById('keyword').value;

					if (!keyword.replace(/^\s+|\s+$/g, '')) {
						alert('키워드를 입력해주세요!');
						return false;
					}

				
					ps.keywordSearch(keyword, placesSearchCB);
				}

	
				function placesSearchCB(data, status, pagination) {
					if (status === kakao.maps.services.Status.OK) {

						
						displayPlaces(data);

					
						displayPagination(pagination);

					} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

						alert('검색 결과가 존재하지 않습니다.');
						return;

					} else if (status === kakao.maps.services.Status.ERROR) {

						alert('검색 결과 중 오류가 발생했습니다.');
						return;

					}
				}

			
				function displayPlaces(places) {

					var listEl = document.getElementById('placesList'), menuEl = document
							.getElementById('menu_wrap'), fragment = document
							.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

				
					removeAllChildNods(listEl);

				
					removeMarker();

					for (var i = 0; i < places.length; i++) {

				
						var placePosition = new kakao.maps.LatLng(places[i].y,
								places[i].x), marker = addMarker(placePosition,
								i), itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

					
						bounds.extend(placePosition);

					
						
						(function(marker, title) {
							kakao.maps.event.addListener(marker, 'mouseover',
									function() {
										displayInfowindow(marker, title);
									});

							kakao.maps.event.addListener(marker, 'mouseout',
									function() {
										infowindow.close();
									});

							itemEl.onmouseover = function() {
								displayInfowindow(marker, title);
							};

							itemEl.onmouseout = function() {
								infowindow.close();
							};
						})(marker, places[i].place_name);

						fragment.appendChild(itemEl);
					}

					// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
					listEl.appendChild(fragment);
					menuEl.scrollTop = 0;

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}

				// 검색결과 항목을 Element로 반환하는 함수입니다
				function getListItem(index, places) {

					var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
							+ (index + 1)
							+ '"></span>'
							+ '<div class="info">'
							+ '   <h5>' + places.place_name + '</h5>';

					if (places.road_address_name) {
						itemStr += '    <span>' + places.road_address_name
								+ '</span>' + '   <span class="jibun gray">'
								+ places.address_name + '</span>';
					} else {
						itemStr += '    <span>' + places.address_name
								+ '</span>';
					}

					itemStr += '  <span class="tel">' + places.phone
							+ '</span>' + '</div>';

					el.innerHTML = itemStr;
					el.className = 'item';

					return el;
				}

				
				function addMarker(position, idx, title) {
					var imageSrc = '', // 마커 이미지 url, 스프라이트 이미지를 씁니다
					imageSize = new kakao.maps.Size(36, 37),
					imgOptions = {
						spriteSize : new kakao.maps.Size(36, 691), 
						spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), 
						offset : new kakao.maps.Point(13, 37)
				
					}, markerImage = new kakao.maps.MarkerImage(imageSrc,
							imageSize, imgOptions), marker = new kakao.maps.Marker(
							{
								position : position, // 마커의 위치
								image : markerImage
							});

					marker.setMap(map); 
					markers.push(marker); 

					return marker;
				}

			
				function removeMarker() {
					for (var i = 0; i < markers.length; i++) {
						markers[i].setMap(null);
					}
					markers = [];
		
				function displayPagination(pagination) {
					var paginationEl = document.getElementById('pagination'), fragment = document
							.createDocumentFragment(), i;

					while (paginationEl.hasChildNodes()) {
						paginationEl.removeChild(paginationEl.lastChild);
					}

					for (i = 1; i <= pagination.last; i++) {
						var el = document.createElement('a');
						el.href = "#";
						el.innerHTML = i;

						if (i === pagination.current) {
							el.className = 'on';
						} else {
							el.onclick = (function(i) {
								return function() {
									pagination.gotoPage(i);
								}
							})(i);
						}

						fragment.appendChild(el);
					}
					paginationEl.appendChild(fragment);
				}

				function displayInfowindow(marker, title) {
					var content = '<div style="padding:5px;z-index:1;">'
							+ title + '</div>';

					infowindow.setContent(content);
					infowindow.open(map, marker);
				}

				// 검색결과 목록의 자식 Element를 제거하는 함수입니다
				function removeAllChildNods(el) {
					while (el.hasChildNodes()) {
						el.removeChild(el.lastChild);
					}
				}
			</script>
			<!-- Template Javascript -->
			<script src="https://unpkg.com/typewriter-effect@2.3.1/dist/core.js"></script>
			<script>
				 
var app = document.getElementById('notificationBar');
				var typewriter = new Typewriter(app, {
					loop : true,
					cursor : "",
				});
				typewriter.typeString('가까운 지점 찾기').pauseFor(2500).deleteAll()
						.typeString('가까운 지점 찾기').pauseFor(2500).deleteAll()
						.typeString('가까운 지점 찾기').pauseFor(2500).start();
			</script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<!-- Core theme JS-->
			<script src="js/scripts.js"></script>
</body>
</html>