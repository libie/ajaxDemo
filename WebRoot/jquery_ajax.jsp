<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    <title>My JSP 'jQuery_Ajax.jsp' starting page</title>


	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery.min.js"></script>

  </head>
  
  <body>
    This is my JSP page. <br>
    <input type="button" value="提交ajax" onclick="jq_ajax()">
    <div><h3 id='showajaxmsg'>testajax</h3></div>
    
    
    <script type="text/javascript">
    function jq_ajax(){
    	$.ajax({
    		type:"post",
    		url:"servlet/TestServlet",
    		async:true,
    		data:{lname:"Li",fname:"Bie"},
    		dataType:"text",
    		success:function(testajax){
    			//alert($("#showajaxmsg").html());
    			$("#showajaxmsg").html(testajax);
    			//console.log(testajax);
    		}
        });
    }
    </script>
  </body>
</html>
