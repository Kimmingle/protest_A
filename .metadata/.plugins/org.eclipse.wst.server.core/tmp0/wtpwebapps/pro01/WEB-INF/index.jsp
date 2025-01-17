
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }

.page { clear:both; height:100vh; }
#page1 { background-color:#ececec; height:calc(100vh - 110px); }
#page2 { background-color:#ffffff; }
#page3 { background-color:#ececec; }
#page4 { background-color:#ffffff; }
#page5 { background-size : cover ; }
#box1-1{  background-size : cover ;  }

.image {

  background-image: url('/pro01/images/한옥마을dark.jpg');
  background-size: cover;
   clear:both; height:100vh;
  height:calc(100vh - 110px);
}

.page_title { font-size:36px; padding-top:2em; text-align:center; }
th.item1 { width:8%; }
th.item2 { width:60%; }
th.item3 { width:20%; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div class="contents" > 
	<section class="page" id="page1"  >   <!-- 100vh에서 헤더(110px)를 뺀 만큼만 섹션 높이 설정함 -->
	<div class="image" >
		<figure > <!-- id=vs없앰 -->
			

			
				<div class="row" style="float:center;">
					<div class="col-sm-2">  <!-- 공백 -->
				</div>
				
				<div class="col-sm-5">  <!-- 최근공지 -->
					<div class="card" style="max-width: 50rem; margin:15px auto; background-color:#FFFFF;">
						<div class="card-header" style="height:50px">
						
							<h4 class="" style="width:150px">최근 공지사항</h4>
						
								
									<a href="${hpath }/NotiList.do" title="더보기" class="more" style="color:#000099; text-align:right; float:right; text-width:50px; padding-bottom:5px">
										<i class="fas fa-plus fa-fw"></i> 더보기
									</a>
								
								
							</div>
  					<div class="card-body">
						
						<table class="table" id="tb3">
							<thead>
								<tr>
									<th class="item1">번호</th>
									<th class="item2">제목</th>
									<th class="item3">작성일</th>
									<th class="item4">조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${not empty latestNotiList }">
									<c:forEach var="dto" items="${latestNotiList }">
									<tr>
										<td>${dto.no }</td>
										<td>
											<c:if test="${empty sid }">
											<strong>${dto.title }</strong>
											</c:if>
											<c:if test="${not empty sid }">
											<a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a>
											</c:if>
										</td>
										<td>${dto.resdate }</td><td>${dto.visited }</td>
									</tr>
									</c:forEach>
								</c:if>
								<c:if test="${empty latestNotiList }">
									<tr>
										<td colspan="4"><strong>공지사항이 존재하지 않습니다.</strong></td>
									</tr>
								</c:if>
							</tbody>
						</table>
						 </div>
						</div>
					
				</div>
				<div class="col-sm-3" style="float:center;">  <!-- 안내 -->
					<div class="card border-light mb-3" style="max-width: 35rem; max-height: 50rem; margin:15px auto;" >
			  			<img src="https://tour.jeonju.go.kr/upload_data/popup/popup/171038006605600.jpg" class="card-img-top" alt="https://tour.jeonju.go.kr/board/view.jeonju?boardId=BBS_0000022&menuCd=DOM_000000101012000000&paging=ok&startPage=1&dataSid=11239">
					  <div class="card-body">
					    <h5 class="card-title">남부 야시장</h5>
					    <p class="card-text">남부시장 맛집 총집합! 먹거리 가득한 야시장<br>
					    위치 : 전주시 완산구 풍남문2길 49 </p>
					    <a href="https://tour.jeonju.go.kr/board/view.jeonju?boardId=BBS_0000022&menuCd=DOM_000000101012000000&paging=ok&startPage=1&dataSid=11239" class="btn btn-primary" style="background-color:#000066; border-color:#000066;">자세히 보기</a>
					  </div>
					</div>
				</div>
				<div class="col-sm-2">  <!-- 공백 -->
				<!--  <div class="alert alert-danger"></div> -->
				</div>
			</div>
		</figure>
		
	</div>
		
				
	</section>
	
	<section class="page" id="page2">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title">Hot Place(핫 플레이스)</h3>
			
		</div>		

	</section>
	<section class="page" id="page3">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title">최신 묻고 답하기</h3>
			
		</div>	
	</section>
	<section class="page" id="page4">
		<div style="width:1400px; margin:0 auto;">	
			<h3 class="page_title">최근 공지사항</h3>
			<div class="right_item" style="text-align:right;padding-bottom:12px;">
				<a href="${hpath }/NotiList.do" title="더보기" class="more">
					<i class="fas fa-plus fa-fw"></i>더보기
				</a>
			</div>
			<table class="table" id="tb3">
				<thead>
					<tr>
						<th class="item1">번호</th>
						<th class="item2">제목</th>
						<th class="item3">작성일</th>
						<th class="item4">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty latestNotiList }">
						<c:forEach var="dto" items="${latestNotiList }">
						<tr>
							<td>${dto.no }</td>
							<td>
								<c:if test="${empty sid }">
								<strong>${dto.title }</strong>
								</c:if>
								<c:if test="${not empty sid }">
								<a href="${path0 }/GetNotice.do?no=${dto.no }">${dto.title }</a>
								</c:if>
							</td>
							<td>${dto.resdate }</td><td>${dto.visited }</td>
						</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty latestNotiList }">
						<tr>
							<td colspan="4"><strong>공지사항이 존재하지 않습니다.</strong></td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
	</section>
</div>
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
