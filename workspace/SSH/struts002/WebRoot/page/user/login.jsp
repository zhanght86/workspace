<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<s:actionerror /><br/>
  	#session.p
  	----------
  
    <s:form action="login" validate="true">
    	<s:textfield name="userName"></s:textfield>
    	
    	<font color="red">
    	<s:fielderror >
    		<s:param>a</s:param>    		
    	</s:fielderror>
    	</font>
    	<s:textfield key="password">
    	</s:textfield>
    	<s:fielderror>
    		<s:param>b</s:param>    
    	</s:fielderror>
    	<s:textfield name="p"></s:textfield>
		<s:submit></s:submit>    	
    </s:form>
  </body>
</html>
