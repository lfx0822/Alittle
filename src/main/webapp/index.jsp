<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/showAll">全部</a>
<a href="${pageContext.request.contextPath }/showType?dishes_cname=粤菜">粤菜</a>
<div>
<form action="${pageContext.request.contextPath }/findByWord" method="post">
		     <input type="text" name="word" placeholder="请搜索...">
		    <input type="submit" name="button" value="搜索">
		  </form>
</div>
</body>
</html>