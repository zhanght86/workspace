﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>南川区科学发展工作考核网</title>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type='text/javascript'>
	function check(){
		var user = document.form1.user.value;
		var password = document.form1.password.value;
		var radio = document.form1.radio;//form1(name) 既可以获取id 又可以获取name，还可以获取name的数组
		if(user==''||password==''||!(radio[0].checked||radio[1].checked)){
			alert('您的用户名或密码为空');
			return false;
			}
	}
</script>
</head>
<body>
<div class="zhong" >
  
  <div class="banner"><embed src='images/nanchuan2.swf' style="width:1000px;height:150px;"></embed></div>
  <div class="menu" >
    <div class="menusel" style="width:95px;">
      <h2><a href="index.jsp">首页</a></h2>
    </div>
    <div id="menu1" class="menusel">
      <h2><a href="qujikaoping.jsp">区级考评</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu2" class="menusel">
      <h2><a href="kaohezhibiao.jsp">考核指标</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu3" class="menusel">
      <h2><a href="xiangqing.jsp">综合考核</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="#">工作介绍</a></li>
          <li><a href="#">组织架构</a></li>
          <li class="lli"><a href="#">考核对象</a></li>
        </ul>
      </div>
    </div>
    
    <div id="menu4" class="menusel">
      <h2><a href="#">下载中心</a></h2>
       <div class="position">
        <ul class="clearfix typeul">
        </ul>
      </div>
    </div>
    <div id="menu5" class="menusel">
      <h2><a href="#">在线留言</a></h2>
      <div class="position">
        <ul class="clearfix typeul">
          <li><a href="#">发表留言</a></li>
          <li><a href="#">民意投票</a></li>
          <li><a href="#">建议</a></li>
          <li class="lli"><a href="#">投诉</a></li>
        </ul>
      </div>
    </div>
    <div style="float:right;height:36px;width:240px;">
    	<input type="text" name="search" style="height:18px;width:160px;margin-top:7px;float:left;margin-right:5px;"/>
        <input type="image" src="images2/12.png" style="float:right" onclick="javascript:alert('正在搜索...')"/>
    </div>
  </div>
  <div class="main">
    <div class="left">
      <div class="box_1" style="border:1px solid lightblue;">
      <form name='form1' method='post' action ='servlet'>
        <div class="left_title">科学发展工作考核动态系统</div>
        <table width="90%" border="0" cellspacing="0" cellpadding="0" style="text-align:center">
          <tr>
            <td width="32%" height="37" valign="middle">用户名：</td>
            <td width="68%" valign="middle">
              <input type="text" name="user" id="textfield" class="input_1" size=""/>
            </td>
          </tr>
          <tr>
            <td height="37" valign="middle">密　码：</td>
            <td valign="middle">
              <input type="text" name="password" id="textfield2" class="input_2"/>
            </td>
          </tr>
          <tr>
            <td height="37" valign="middle">验证码：</td>
            <td valign="middle">
              <input type="text" name="textfield3" id="textfield3" class="input_3" />
              <span style="margin-left:6px;"><img src="images/img_7.gif" /></span></td>
          </tr>
          <tr>
          	<td colspan='2'>
          	<span style='float:left;margin-left:20px'>
          		部门<input type="radio" name="radio" value="department" checked/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              	领导<input type="radio" name="radio" value="lingdao"/>
            </span>
            </td>
          </tr>
          <tr>
            <td colspan="2" height='37'>
              <input name="input" type="image" src="images/img_4.gif" onclick='return check()'/>
              <input name="input" type="image" src="images/img_5.gif" onclick='javascript:alert("你正在注册");' style="margin:0 10px;"/>
              <input name="input" type="image" src="images/img_6.gif" onclick='javascript:alert("申请找回密码");'/>
            </td>
          </tr>
        </table>
        </form>
      </div>
      <div class="box_1" style="border:1px solid lightblue;">
        <div class="left_title">本站公告</div>
        <div class="left_nr">
          <ul>
            <li><a href="#">滚动滚动滚动滚动</a></li>
            <li><a href="#">穿透内网文件传输</a></li>
            <li><a href="#">网络版本的个人资料库</a></li>
            <li><a href="#">强大的手机短信双向功能</a></li>
            <li><a href="#">滚动滚动滚动滚动</a></li>
            <li><a href="#">穿透内网文件传输</a></li>
            <li><a href="#">网络版本的个人资料库</a></li>
            <li><a href="#">强大的手机短信双向功能</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="right" >
      <div id="right_1" style="border:1px solid lightblue;width:700px;height:241px;">
      	<div style="border:1px solid lightblue;float:left"><img src="images2/1.png" /></div>
        <div style="border:1px solid lightblue;float:left"><img src="images2/3.png" /></div>
        <div style="border:1px solid lightblue;float:left"><img src="images2/2.png" /></div>
      </div>
      <div class="news" style="border:1px solid lightblue;">
        <div class="news_title"><span><img src="images/title_1.gif" /></span><a href="#"><img src="images/more.gif" /></a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义1</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义2</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义3</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义4</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义5</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义6</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义7</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义8</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
          <tr>
            <td width="48%" height="18"><a href="#">Email行销的发展现状和意义9</a></td>
            <td width="27%">21</td>
            <td width="25%" align="center">2009-02-21</td>
          </tr>
        </table>
      </div>
    </div>
    <div style="width:491px;float:left;border:1px solid lightblue;">
    	<img src="images2/4.png"/>
        <img src="images2/6.png"/>
    </div>
    <div style="width:491px;float:right;margin-bottom:2px;border:1px solid lightblue;">
    	<img src="images2/5.png"/>
        <img src="images2/7.png"/>
    </div>
    <div style="width:491px;float:left;border:1px solid lightblue;">
    	<img src="images2/8.png"/>
        <img src="images2/9.png"/>
    </div>
    <div style="width:491px;float:right;border:1px solid lightblue;">
    	<img src="images2/10.png"/>
        <img src="images2/11.png"/>
    </div>
    <div class="clear"></div>
    <div class="huoban" >
      <div class="huoban_title"><img src="images/title_4.gif" /></div>
      <div class="huoban_nr">
      	<div id="demo">
		<div id="indemo">
		<div id="demo1">
            <ul>
              <li><img src="images/111.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/222.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/333.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/444.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/555.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/666.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/777.jpg" style="height:80px;width:160px"/></li>
              <li><img src="images/888.jpg" style="height:80px;width:160px"/></li>
            </ul>
        </div>
		<div id="demo2"></div>
		</div>
		</div>
        <div class="clear"></div>
      </div>
    </div>
  </div>
  <div class="bottom"> 
  <table cellpadding="3" cellspacing="0" width="100%">
  	<tr>
    	<td style='font-size:25px;border-right:1px solid lightblue;height:70px;width:500px;'>
        	南川区综合考评委员会办公室
        </td>
        <td>
        	<table border="0" cellpadding="" cellspacing="1" width="80%" style="text-align:left;margin-left:50px;font-size:13px">
            	<tbody>
                	<tr>
                    	<td style="color:red">
                        	<a href="#" target="_blank" style="color:red">网站简介</a>&nbsp;&nbsp;|&nbsp;
                            <a href="#" target="_blank" style="color:red">联系我们</a>&nbsp;&nbsp;|&nbsp;
                            <a href="#" target="_blank" style="color:red">保存网站</a>&nbsp;&nbsp;|&nbsp;
                        </td>
                    </tr>
                    <tr><td>Copyright &copy; 2012 南川区综合考评委员会办公室</td></tr>
                    <tr><td>技术支持：1007工作室</td></tr>
                    <tr><td>自2012年5月1日起，您是本站第21926位访问者</td></tr>
                </tbody>
            </table>
        </td>
    </tr>
  </table>
 </div>
</div>
<script>
	<!--
	var speed=20;
	var tab=document.getElementById("demo");
	var tab1=document.getElementById("demo1");
	var tab2=document.getElementById("demo2");
	tab2.innerHTML=tab1.innerHTML;
	function Marquee(){
	if(tab2.offsetWidth-tab.scrollLeft<=0)
	tab.scrollLeft-=tab1.offsetWidth;
	else{
	tab.scrollLeft++;
	}
	}
	var MyMar=setInterval(Marquee,speed);
	tab.onmouseover=function() {clearInterval(MyMar);};
	tab.onmouseout=function() {MyMar=setInterval(Marquee,speed);};
	-->
</script>
<script src="js/meun.js" type="text/javascript"></script>
</body>
</html>
