<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<style type="text/css">
* { margin:0; padding:0; }
body {
	background:#e5e5e5;}
a {
	text-decoration:none;
	color:black;}
#container { width: 900px; height:auto; margin:0 auto;}
#top {
	height: 146px;
	background:url(images/header.png) no-repeat;
	}
	
#left {
	float:left;
	width:224px;
	}
	
#right {
	float:left;
	height:450px;
	width:666px;
	margin-left:10px;
	padding-top: 10px;
	}
#content {
	height:380px;
	background:url(images/right.gif) repeat-y;
	padding:10px 15px;
	}
	
#footer {
	height:45px;
	background:#F5F5F5;
	margin-top: 10px;
	text-align:center;
	font-size:8px;
	padding-top:25px;
	}
.clear {
	clear:both;
	}

#left_top {
	height:21px;
	background:url(images/left_top.png) no-repeat;}
#left_content {
	background:url(images/left.gif) repeat-y;
	height:450px;}
#left_bottom {
	height:15px;
	background:url(images/left_bottom.gif) no-repeat;}
#nav{ float:right; margin-top:120px;}
#nav li{ list-style-type:none; float:left; padding:5px 10px; background:#f5f5f5; margin:0 5px; border:solid 1px #c5c5c5;_}

.user_info {
	height:25px;
	line-height:25px;
	font-size: 12px;
	padding:5px 20px;}

h2 {
	border-bottom:1px #CCC solid;}
	
#note_list { list-style-type:none; margin-top:15px; font-size:12px;}
#note_list li{ height: 30px; line-height:30px; border-bottom:dashed 1px #CCC;} 
#namelist{
	
	padding-top:20px;
}

#namelist li{
	list-style-type:none; 
	padding:5px 0px;
	text-align:center;
    border-bottom:1px #CCC dotted;
	letter-spacing:5px;
}
.right{
	float:right;}
</style>
</head>

<body>
<div id="container">
	<div id="top">
        <ul id="nav">
          <li><a href="#">留言列表</a></li>
          <li><a href="#">后台管理</a></li>
        </ul>
    </div>
    <div id="left">
    	<div id="left_top"></div>
        <div id="left_content">
            <h2 style="text-align:center;">参与人员</h2>
            <ul id="namelist">

                	<li><a href="NoteServlet?status=queryByUserid&id=${u.id}">${u.name}</a></li>

            </ul>
        </div>
        <div id="left_bottom"></div>
    </div>
    <div id="right">
    	<div id="content">
        	<h2>留言列表</h2>
            <ul id="note_list">

                <li><span class="right">${users.name}</span><a href="NoteServlet?status=queryByNoteid&id=${users.id}">${users.userName}</a></li>

            </ul>
        </div>
        <div id="footer">版权所有&copy;兰赛普<br>20140522java开发班</div>
    </div>
    <div class="clear"></div>
</div>
</body>
</html>

