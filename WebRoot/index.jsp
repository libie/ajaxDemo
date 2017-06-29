<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	
	<script type="text/javascript">
		function loadXMLDoc()
		{
			var xmlhttp;
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			
			
			xmlhttp.onreadystatechange=function()
			  {
				//Document.write(xmlhttp.readyState);
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
			    }
			  };
			alert(xmlhttp.readyState);
			alert(xmlhttp.state);
			//--get请求
			//为了避免得到的是缓存的结果，请向 URL 添加一个唯一的 ID：t
			//如果您希望通过 GET 方法发送信息，请向 URL 添加信息：fname=Bie&lname=Li
			xmlhttp.open("GET","servlet/TestServlet?fname=Bie&lname=Li&t=" + Math.random(),true);
			xmlhttp.send();
			alert(xmlhttp.readyState);
			alert(xmlhttp.state);
			
			//--post请求
			//一个简单 POST 请求：
			xmlhttp.open("POST","servlet/TestServlet",true);
			xmlhttp.send();
			alert(xmlhttp.readyState);
			alert(xmlhttp.state);
			
			//--如果需要像 HTML 表单那样 POST 数据，请使用 setRequestHeader() 来添加 HTTP 头。然后在 send() 方法中规定您希望发送的数据：
			xmlhttp.open("POST","servlet/TestServlet",true);
			xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			xmlhttp.send("fname=Bie&lname=Li");
			alert(xmlhttp.readyState);
			alert(xmlhttp.state);

//alert('aaa');



		}
</script>
	
  </head>
  
  <body>
    <div id="myDiv"><h3>Let AJAX change this text</h3></div>
	<button type="button" onclick="loadXMLDoc()">JS请求数据</button>
	<br/>
	
	<div><h3>Get提交Form</h3>
		<form action="servlet/TestServlet" method="get">
			<input type="text"  id="lname" name="lname" value="Li" readonly="readonly">
			<input type="text"  id="fname" name="fname" value="Bie" disabled="disabled">
			<button type="submit">Get提交Form</button>
		</form>
	</div>
	<br/>
	
	<div><h3>Post提交Form</h3>
		<form action="servlet/TestServlet" method="post">
			<input type="text"  id="lname" name="lname" value="Li" readonly="readonly">
			<input type="text"  id="fname" name="fname" value="Bie" disabled="disabled">
			<button type="submit" >Post提交Form</button>
		</form>
	</div>


  </body>
</html>
