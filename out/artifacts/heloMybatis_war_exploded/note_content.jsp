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
	
#right {
	float:left;
	height:450px;
	width:100%;
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
	
#title {
	font-weight:bold;
	text-align:center;
	font-size:14px;
	height:50px;
	line-height:50px;}

#time {
	color:#999999;
	height: 30px;
	line-height:30px;
	float:right;
	}

</style>
</head>

<body>
<div id="container">
	<div id="top">
        <ul id="nav">
          <li><a href="NoteServlet?status=queryAll">留言列表</a></li>
        </ul>
    </div>
    <div id="right">
    	<div id="content">
        	<h2>留言内容</h2>
            <div id="inner_content">
            	<div id="title">${note.title}</div> 
                 <div id="time">
                发表人：${note.user.name}
                </div>
            	<p style="line-height:30px; text-indent:2em; clear:both;">${note.content}</p>
            </div>
        </div>
        <div id="footer">版权所有&copy;苏叶晚晚</div>
    </div>
    <div class="clear"></div>
</div>
</body>
</html>
