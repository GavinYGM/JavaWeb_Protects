<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>bootstrap</title>
  </head>
  <style>
  	div.header{
  		border:1px solid gray;
  		border-radius:10px;
  		width: 70%;
  		height:40px;
  		line-height:25px;
  		font-size:36px;
  		margin: 0px auto;
  		position: relative;
  		background-image: linear-gradient(to bottom,white,green,white);
  	}
  	.header span {
		position: absolute;
		left: 100px;
		top:4px;
		color: black;
	}
	div.bodyer{
		border:1px solid gray;
  		border-radius:10px;
  		width: 70%;
  		margin: 10px auto;
  		font-size: 25px;
  		color: gray;
	}
  </style>
  <body>
	<div class="header">
		<span>bootstrap</span>
	</div>
	<div class="bodyer">
	<p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Bootstrap是美国Twitter公司的设计师Mark Otto和Jacob 
		Thornton合作基于HTML、CSS、JavaScript 开发的简洁、
		直观、强悍的前端开发框架，使得 Web 开发更加快捷。
	</p>
	<p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		Bootstrap提供了优雅的HTML和CSS规范，它即是由动态CSS
		语言Less写成。Bootstrap一经推出后颇受欢迎，一直是GitHub
		上的热门开源项目，包括NASA的MSNBC（微软全国广播公司）的Breaking News都使用了该项目。
	</p>
	<p>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		国内一些移动开发者较为熟悉的框架，如WeX5前端开源框架等，也是基于Bootstrap源码进行性能优化而来
	</p>
	</div>
  </body>
</html>
