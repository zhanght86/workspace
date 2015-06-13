<%@ page contentType="text/html; charset=UTF-8" %>

<%@ page language="java" import="java.util.*,com.zr.js.js.javabean.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
  <head>
    <title>
      资料属性维护
    </title>
    <style type="text/css">
         .style1
        {
        	
            width: 49px;
        }
        .style2
        {
            width: 91px;
        }
        .style5
        {
            height: 24px;
        }
        .style6
        {
            height: 20px;
        }
        .style7
        {
        }
        .style8
        {
        }
        .style9
        {
            width: 135px;
        }
        #Button3
        {
            margin-top: 0px;
            height: 32px;
            width: 54px;
        }
        #Button1
        {
            height: 32px;
            width: 54px;
        }
        #Button2
        {
            height: 32px;
            width: 54px;
        }
        </style>   
       <script>
       function add()
       {
          form1.qq.value="1";
         //为防止报错，传过去一个空值
          var reg1=form1.num.value;
          var reg2=form1.name.value;
          if(reg1==""||reg2=="")
          {
              alert("名称或编号不能为空");
              return false;
          }
       }
       function recompose()
       {
          form1.qq.value="2";
          if(form1.id.value=="0")
          {
             alert("请先选择该项");
             return false;
          }
          var reg1=form1.num.value;
          var reg2=form1.name.value;
          if(reg1==""||reg2=="")
          {
              alert("名称或编号不能为空");
              return false;
          }else{
          
          document.form1.action="dataAttribute.action";
          document.form1.submit();}
        
       }
       function del()
       {
           if(form1.id.value=="0")
          {
             alert("请先选择该项");
             return false;
          }
          form1.qq.value="3";
          
       }
       function test()
       {
                    
       	  var temp = document.getElementsByName("radio");
          for(var i=0;i<temp.length;i++)
          {
               
               if(temp[i].checked)
               var r = temp[i].value;
          }
          form1.num.value=document.getElementsByName(r)[0].value;
          form1.name.value=document.getElementsByName(r)[1].value;
          form1.id.value=r;      
         }
       function loading()
       {
          var load="<s:property value="pagesize"/>";
          if(load!=10)
          {
          form1.action="dataAttribute.action";
          form1.submit();
          }
       }
       </script>          
</head>
<body  onload="loading();">
     <h2 align="center">
       <font color="red"><s:actionerror/></font>
    </h2>
     <form  method="post"  name ="passForm"> 
     <input id = 'test2' type = 'hidden' name="str" value="propertySort"> 
     </form>
     
     <form  method="post" action="dataAttribute.action" id ="passForm"> 
     <input id = 'test2' type = 'hidden' name="test2"> 
     </form>   
     <s:form name= "form1" method="post"  namespace="/" action="dataAttribute">
     <table style="width: 63%;"align="center" border="1">
        <tr align="center">
            <td class="style7" colspan="2" bgcolor="#275c98">
                资料属性维护</td>
        </tr>
        <tr>
            <td class="style9" bgcolor="#99ccff">
                资料属性编码*</td>
            <td class="style8">
            <input type="text" name="num" id="num" style="width:100%;">
            </td>
        </tr>
        <tr>
            <td class="style9" bgcolor="#99ccff">
                资料属性名称*</td>
            <td class="style8">
            <input type="text" name="name" id="name" style="width:100%;">
            </td>
        </tr>
        <tr>
        <td><input type="hidden" name="qq" id="qq" value="0" style="width:100%;" ></td>
        </tr>
        <tr>
        <td><input type="hidden" name="id" id="id" value="0"  style="width:100%;" ></td>
        </tr>
    </table>
    
    <p align="center">
        <input id="Button1" type="submit" value="添加"  onclick="return add();"/>&nbsp;&nbsp;
        <input id="Button2" type="button" value="修改"  onclick="return recompose();"/>&nbsp;&nbsp;
        <input id="Button3" type="submit" value="删除"  onclick="return del();"/></p>
        
    </s:form>
    
     <table style="width: 63%;" border="1" align="center">
        <tr align="center" >
            <td class="style6" colspan="3"  bgcolor="#275c98" >
                资料属性</td>
        </tr>
        <tr align="center" bgcolor="#99ccff">
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                资料属性编码</td>
            <td >
                资料属性名称</td>
        </tr>
        <s:iterator value="list" status="s" id="l" >
	   
		<tr align="center">
		     <td class="style1">
		          <input  name="radio" type="radio" value="<s:property value="id"/>" onclick="test();"/>
		     </td>
		     <td class="style2">
		          <input name="<s:property value="id"/>" type="hidden" value="<s:property  value="num"/>"/>
		          <s:property  value="num"/>
		     </td>
             <td>
                  <input name="<s:property value="id"/>" type="hidden" value="<s:property  value="name"/>"/>
                  <s:property value="name"/>
             </td>
        </tr>      
	    </s:iterator>                    
        </table>
        
        <center>
        共<s:property value="intRowCount"/>记录&nbsp;&nbsp;
        第<s:property value="pageNow"/>/<s:property value="intPageCount"/>页&nbsp;&nbsp;
         <s:url id="url_pre" value="dataAttribute.action">   
         <s:param name="pageNow" value="pageNow-1"></s:param>   
     </s:url>   
  
     <s:url id="url_next" value="dataAttribute.action">   
         <s:param name="pageNow" value="pageNow+1"></s:param>   
     </s:url>   
     <s:iterator value="Newss" status="status">   
        <s:url id="url" value="dataAttribute.action">   
            <s:param name="pageNow" value="pageNow"/>   
        </s:url>   
     </s:iterator>    
     <s:if test="pageNow==1">
    <s:a href="%{url_pre}">首页</s:a>
     </s:if>
     <s:else>
     <s:a href="%{url_pre}">上一页</s:a>
     </s:else>
     <s:if test="pageNow==k">
     <s:a href="%{url_next}">末页</s:a>
       </s:if>
       <s:else>
       <s:a href="%{url_next}">下一页</s:a>
       </s:else>
       </center>
  </body>
 </html>