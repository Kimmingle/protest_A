<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="path0" value="<%=request.getContextPath() %>" />    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title }</title>
<%@ include file="/head.jsp" %>
<style>
.container { width:1400px; }
	.page { clear:both; height:100vh; }
	#page1 { background-color:#ececec; }
	#page2 { background-color:#42bcf5; }
	.page_title { font-size:36px; padding-top:2em; text-align:center; }
	#id { width:800px; float:left; margin-right:10px; }
</style>
</head>
<body>
<div id="header">
	<%@ include file="/header.jsp" %>
</div>
<div class="contents" > 
	<section class="page" id="page1"  >
		<h2>최명희 문학관</h2>
	</section>
	</div>
	
<div id="footer">
	<%@ include file="/footer.jsp" %>
</div>
</body>
</html>