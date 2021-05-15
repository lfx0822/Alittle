<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>HCI小组订餐系统</title>
    <link href="${pageContext.request.contextPath}/css/style1.css"  rel="stylesheet"  media="screen"  type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carts.css">
    <script src="/META-INF/resources/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.dialog.js"></script>
    <script src="${pageContext.request.contextPath}/js/carts.js"></script>
    <script src="${pageContext.request.contextPath}/js/universial.js"></script>
    <style type="text/css">a {text-decoration: none}</style>
  </head>
  <div>
      <div  class="nav_bg">
          <div class="wrap"> 
              <ul id="nav" class="nav clearfix">
                  <li class="nLi" style="font-size: 30px;">
                      <h3 class="e"><a  href="#" style="font-size: 23px;">饿了呀</a></h3>
                  </li>
                  <li class="nLi">
                    <h3 class="d"><a  href="./index.jsp">首页</a></h3>
                  </li>
                  <li class="nLi ">
                    <h3 class="d"><a href="myorder.jsp">我的订单</a></h3>
                    
                  </li>
            
                  <li class="nLi ">
                    <h3 class="d"><a href="order-statistic.jsp">订单统计</a></h3>
                  </li>
              </ul>
          </div>
      </div>
      
      <div class="left" >
    <form class="search" action="${pageContext.request.contextPath }/findByWord" method="post">
		  		     <input class="input_text" type="text" name="word" placeholder="请搜索...">
		  		    <input type="submit" name="button" value="搜索" class="input_sub">
		  		  </form>
              <ul class="leftborder">
              
                <li class="border1">
                  <a href="myorder.jsp">
                      <img src='${pageContext.request.contextPath}/images/dingdan.png' width=14 height=14 />
                      <span class="outer">  我的订单</span>
                      <br>
                      <br>
                      <span class="inner">近三个月的订单</span>
                      
                  </a>
              </li>
              <li class="border2clicked">
                  <a href="./today.jsp">
                      <img src='${pageContext.request.contextPath}/images/remaicaipin.png' width=14 height=14 />
                      <span class="outer">当天菜品</span>
                      
                  </a>
              </li>
              <li class="border3">
                  <a href="./recommend.jsp">
                      <img src='${pageContext.request.contextPath}/images/tuijian.png' width=14 height=14 />
                      <span class="outer">推荐菜品</span>
                  </a>
              </li>
              <li class="border5">
                      <a href="./selected.jsp">
                          <img src='${pageContext.request.contextPath}/images/today.png' width=14 height=14 />
                          <span class="outer">已选菜品</span>
                          
                      </a>
              </li>
                <li class="border4">
                  <c:forEach items="${category_list}" var="category" >
                  <a href="${pageContext.request.contextPath}/showType?dishes_cname=${category.dishes_cname}">
                  	<img src='${pageContext.request.contextPath}/images/menu.png' width=14 height=14 />
                      <span class="outer">${category.dishes_cname}</span></a>
                  </c:forEach>            
                  
              </li>    
                           
              </ul>
      </div>
    
  </div>
  <p style="font-size: 16px;  position: absolute; top:8.9%; left:48.5%;text-align: center;"><b>今日菜品</b></p>
  <div class="projects">
      <!-- <br>
      <p style="font-size: 15px; height: 30px;width:300px;background-color: silver;padding: 0 0 0 20px;text-align: center;" >今日菜品</p> -->
      <ul class="rightborder">
          <!-- <p style="font-size: 16px;  background-color: rgb(251, 255, 0);text-align: center;">当天菜品</p> -->
          <li class="instruct">
            <span style="padding:0px 65px 0 40px;position: relative ;top:25%;"><b>菜品图片</b> </span>
            <span style="padding:0px 100px 0 0;position: relative ;top:25%;"><b>菜品名称</b> </span>
            <span style="padding:0px 110px 0 0;position: relative ;top:25%;"><b>菜品简介</b> </span>
            <span style="padding:0px 70px 0 30px;position: relative ;top:25%;"><b>菜品金额（单点）</b> </span>
            <span style="padding:0px 100px 0 0;position: relative ;top:25%;"><b>菜品评价</b> </span>
            <span style="padding:0px 0px 0 0;position: relative ;top:25%;"><b>操作</b></span>
          </li>
          <div class="cont">
   <c:forEach items="${list }" var="dish">
          <li class="dishes" id="first">
          <img src='${pageContext.request.contextPath}/image/${dish.photo }' width=136px height=80px />  
              <span id="one">${dish.dishes_name }</span>          
              <span id="two">${dish.dishes_describe }</span>
              <span id="three">${dish.dishes_price }</span>
              <span id="four">9星</span>
              <span id="five">
                  <button class="inn" id="order1">点餐</button>
                  
              </span>
              <span id="six">
                      <button class="inn" id="evaluate1">菜品评价</button>
              </span>
              
          </li>
       </c:forEach>
         </div>
                                               
      </ul>
  </div>
  <script src="${pageContext.request.contextPath}/js/universial.js"></script>
</html>