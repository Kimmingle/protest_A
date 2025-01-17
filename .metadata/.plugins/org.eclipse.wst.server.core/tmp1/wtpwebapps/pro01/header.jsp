<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="hpath" value="<%=request.getContextPath() %>" />
<header>

	<div class="row" style="height:110px;">
				<div class="col-sm-1"> 
				
					<div class="logo_wrap">
						<a href="/pro01"><img src="${hpath }/images/풍남로고.png" alt="풍남동 로고" /></a>
					</div>
				
				</div>
				
				<div class="col-sm-9" >
					<nav id="gnb" style="margin-top:50px;">
						<ul class="" >
							<li class="item">
								<a href="" class="dp1" >풍남동소개</a>
								<ul class="sub_menu" >
									<li><a href="${hpath }/intro/origin.jsp">지명유래</a></li>
									<li><a href="${hpath }/intro/facility.jsp">연혁</a></li>
									
									<li><a href="${hpath }/intro/history.jsp">현황</a></li>
									<li><a href="${hpath }/intro/map.jsp">오시는 길</a></li>
								</ul>
							
							<li class="item">
								<a href="" class="dp1">문화관광</a>
								<ul class="sub_menu" >
									<li><a href="${hpath }/tour/choi.jsp">최명희 문학관</a></li>
									<li><a href="${hpath }/tour/history.jsp">전주한옥마을 역사관</a></li>
									<li><a href="${hpath }/tour/history.jsp">경기전</a></li>
									<li><a href="${hpath }/tour/history.jsp">전동성당</a></li>
								</ul>
							</li>
							
							<li class="item">
								<a href="" class="dp1">커뮤니티</a>
								<ul class="sub_menu">
									<li><a href="${hpath }/NotiList.do">공지사항</a></li>
									<li><a href="${hpath }/GetQnaList.do">자료실</a></li>
									<li><a href="${hpath }/GetQnaList.do">묻고답하기</a></li>
									<li><a href="${hpath }/GetQnaList.do">자유게시판</a></li>
									
								</ul>
							</li>
							<li class="item">
								<a href="" class="dp1">기타 편의시설</a>
								<ul class="sub_menu">
									<li><a href="${hpath }/">편의시설</a></li>
									<li><a href="${hpath }/">공유 운송차 이용</a></li>
									<li><a href="${hpath }/">주차시설</a></li>
								</ul>
							</li>
							<li class="item">
								<a href="" class="dp1">마이페이지</a>
								<ul class="sub_menu" >
									<c:if test="${empty sid }">
									<li><a href="${hpath }/member/login.jsp">로그인</a></li>
									<li><a href="${hpath }/member/term.jsp">회원가입</a></li>
									</c:if>
									<c:if test="${not empty sid }">
									<li><a href="${hpath }/LogOut.do">로그아웃</a></li>
									<li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
									</c:if>
									<c:if test="${sid.equals('admin') }">
									<li><a href="${hpath }/AdminMain.do">관리자로</a></li>
									</c:if>
									<li><a href="${hpath }/member/terms.jsp">회원약관</a></li>
									<li><a href="${hpath }/member/policy.jsp">개인정보처리방침</a></li>
								</ul>
								
							</li>
						</ul>
						
					</nav>
					
				</div>
				
				<div class="col-sm-2" style="padding:none;">
					<form id="" class="d-flex" style="text-align:right;  margin-top:50px ; ">		
							        <input class="form-control me-2"  type="search" placeholder="Search" aria-label="Search" style=" weith:100px; height:38px;">
							       
									<button class="btn btn-sm btn-primary" style=" background-color:#000066; border-color:#000066; margin-right:0px; curser:pointer "><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"  fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" >
									  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
									</svg></button>
					</form>
				</div>
				
				
	</div> 
				

	
	<!--  
	
	<div  class="d-grid gap-2 d-md-block"  style = "position:absolute; text-align:right; margin-right:100px; ">
	  <button class="btn btn-light" type="button">로그인</button>
	  &nbsp;
	  <button class="btn btn-light" type="button">회원가입</button>
	</div>
	
	-->

	
	
<!--  
 
	<nav class="navbar navbar-expand-md bg-body-tertiary">
--> 
	<!--  <div class="container-fluid">
		<a class="navbar-brand">로고</a>
		
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-toggle="#mynavbar">
			<span class = "navbar-toggler-icon"></span>
		</button> 
		
		<div class="collapse navbar-collapse" id="mynavbar">
		
 		<ul class="navbar-nav me-auto">
			<li class="nav-item"><a href="javascript:void(0)" class="nav-link">dd</a></li>
			<li class="nav-item"><a href="javascript:void(0)" class="nav-link">dd</a></li>
			<li class="nav-item"><a href="javascript:void(0)" class="nav-link">dd</a></li>
		</ul>
		
		<form class="d-flex" role="Search">
					
			<input class="form-control me-2"  type="search" placeholder="Search" aria-label="Search">
			        
			<button class="btn btn-primary" style="background-color:#000066; border-color:#000066;" type="button">Search</button>
		</form>
		</div>

	</div>
	</nav>
		-->

		
	
	
</header> 
