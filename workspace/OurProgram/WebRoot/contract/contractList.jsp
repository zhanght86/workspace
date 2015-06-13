<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>合同列表</title>
<link rel="stylesheet" href="../css/style.css">
<style type="text/css">
<!--
body {
	background-image: url(../images/grid.gif);
}
.style1 {font-weight: bold}
-->
</style>

<SCRIPT LANGUAGE="JavaScript">
<!--
	function _choose(url)
	{
		window.open(url,"PhoneTreeShow",'height=400, width=200,left=100,top=100, toolbar=yes, menubar=yes, scrollbars=yes,resizable=yes,location=no, status=yes')
	}
function _getDate(_txt)
{
	var w = 200;   // 宽度
	var h = 210;   // 高度
	var x = event.screenX - event.offsetX - w/2;   // + deltaX;
	var y = event.screenY - event.offsetY + 20;    // + deltaY;
	
	
	var state = "dialogWidth:" + w + "px;dialogHeight:" + h + "px;dialogLeft:" + x + "px;dialogTop:" + y + "px;status:no;directories:yes;scrollbars:no;resizable=no;";
	//alert(state);
	var a = window.showModalDialog("../js/date.HTM","",state);
	if(a != null)
		_txt.value = a;
}
function changeInput(src,src1, src2) {
	if ((!src.type)||(src.type=="select-one" && src.value=="other")) {
		document.getElementById(src1).style.display="none";	
		document.getElementById(src2).style.display="block";
	} 
}
function radioChecked() {
	var rs = document.all.contractUuid;
	for (var i = 0; i < rs.length; i++) {
		if (rs[i].checked) {
			return true;
		}
	}
	return false;
}
function _editMaterials() {
	if (!radioChecked()) {
		alert('请先选择要维护资料的项目');
		return;
	}
	window.location='ctrctMaterials.jsp';
}
function _delete() {
	if (!radioChecked()) {
		alert('请先选择要删除的项目');
		return;
	}
	window.location.reload();
}
function _showPrjs(_txt) {
	var w = 300;   // 宽度
	var h = 500;   // 高度
	var x = event.screenX - event.offsetX - w/2;   // + deltaX;
	var y = event.screenY - event.offsetY;    // + deltaY;
	
	
	var state = "dialogWidth:" + w + "px;dialogHeight:" + h + "px;dialogLeft:" + x + "px;dialogTop:" + y + "px;status:no;directories:yes;scrollbars:no;resizable=no;";
	//alert(state);
	var a = window.showModalDialog("../project/miniPrjList.htm","",state);
	if(a) {
		for (var t = 0; t < a.length; t++) {
			_txt.value += a[t];
			if (t < a.length-1) {
				_txt.value += ",";
			}
		}
	}
		
}
function showDialog(url) {
	var w = 300;   // 宽度
	var h = 400;   // 高度
	var x = event.screenX - event.offsetX - w/2;   // + deltaX;
	var y = event.screenY - event.offsetY;    // + deltaY;
	var state = "dialogWidth:" + w + "px;dialogHeight:" + h + "px;dialogLeft:" + x + "px;dialogTop:" + y + "px;status:no;directories:yes;scrollbars:no;resizable=no;";
	var a = window.showModalDialog(url,"",state);
	return a;
}
function getPopValue(_txt, url) {
	var a = window.showDialog(url);
	if(a) {
		_txt.value = "";
		for (var t = 0; t < a.length; t++) {
			_txt.value += a[t];
			if (t < a.length-1) {
				_txt.value += ",";
			}
		}
	}
}
function chooseType(type) {
	if (type == 1) {
	
	} else {
		
	}
}
//-->
</SCRIPT>
</head>

<body bgcolor="#FFFFFF" text="#000000" leftmargin="10" topmargin="10">

<br/>
<table border="0" valign="top" width="95%" align="center" cellspacing="1" bordercolorlight="#003366" bordercolordark="#DFDFFF" bgcolor="#426199">
<thead>
<tr bgcolor="#6699CC"><td height="25" colspan="11" align="center"><strong><font color="#FFFFFF" size="4">合同列表</font></strong></td><tr bgcolor="EEF4FF">
	<td width="4%" height="25">&nbsp;</td>
	<td width="6%" height="25"><div align="center"><strong>序号</strong><a href="#" onClick="alert('排序')" style="cursor:pointer ">▼</a></div></td>
	<td width="7%" height="25"><div align="center"><strong>编号</strong><a href="#" onClick="alert('排序')" style="cursor:pointer ">▼</a></div></td>
	<td width="14%"><div align="center"><strong>合同名称</strong><a href="#" onClick="alert('排序')" style="cursor:pointer ">▼</a></div></td>
	<td width="7%" height="25"><div align="center"><strong>甲方</strong></div></td>
	<td width="7%" height="25"><div align="center"><strong>乙方</strong></div></td>
	<td width="7%" height="25"><div align="center"><strong>丙方</strong></div></td>
	<td width="10%"><div align="center"><strong>签订日期</strong><a href="#" onClick="alert('排序')" style="cursor:pointer ">▼</a></div></td>
	<td width="12%"><div align="center"><strong>合同价款</strong><a href="#" onClick="alert('排序')" style="cursor:pointer ">▼</a></div></td>
	<td width="13%"><div align="center"><strong>所属项目</strong></div></td>
    <td width="13%"><div align="center"><strong>备注</strong></div></td>
</tr>
</thead>
<tbody>
	<tr bgcolor="EEF4FF" onmouseover="this.bgColor='#EBEBEB';" onmouseout="this.bgColor='#EEF4FF';">
	<td width="4%" height="25" align="center"><input type="radio" name="contractUuid"></td>
	<td width="6%" height="25"><div align="center">1</div></td>
	<td width="7%" height="25"><div align="center">001</div></td>
	<td width="14%"><div align="left">关于xxx的合同</div></td>
	<td width="7%" height="25"><div align="left">张三啊</div></td>
	<td width="7%" height="25"><div align="left">李四</div></td>
	<td height="25"><div align="left">王五</div></td>
	<td height="25" align="center">2006-12-12</td>
	<td height="25" align="center"><div align="right">3,232.53</div></td>
	<td align="center" title="xxx项目xxx项目"><div align="left">xxx项目..</div></td>
	<td align="center"  title="备注信息备注信息备注信息"><div align="left">备注信息..</div></td>
	</tr>
	<tr bgcolor="EEF4FF" onmouseover="this.bgColor='#EBEBEB';" onmouseout="this.bgColor='#EEF4FF';">
	<td width="4%" height="25"  align="center"><input type="radio" name="contractUuid"></td>
	<td width="6%" height="25"><div align="center">2</div></td>
	<td width="7%" height="25"><div align="center">023</div></td>
	<td width="14%"><div align="left">关于yyy的合同</div></td>
	<td width="7%" height="25"><div align="left">李四</div></td>
	<td width="7%" height="25"><div align="left">张三</div></td>
	<td height="25"><div align="left">赵六</div></td>
	<td height="25" align="center">2006-10-20</td>
	<td height="25" align="center"><div align="right">1,322,335.23</div></td>
	<td align="center"  title="yyy项目yyy项目"><div align="left">yyy项目..</div></td>
	<td align="center" title="备注信息备注信息备注信息"><div align="left">备注信息..</div></td>
	</tr>
</tbody>
</table>
<p align="center">
<input type="button" name="Submit" value="维护资料" class="bt1" onClick="_editMaterials()" />&nbsp;
<img src="../images/delete.gif"  onClick="alert('删除')" style="cursor:pointer "/>&nbsp;
  <input type="button" onClick="alert('生成Excel报表')" class="bt1" value="生成Excel">
</p>
<br/>
<table width="95%" border="0" align="center" cellpadding="2" cellspacing="1" bordercolorlight="#003366" bordercolordark="#DFDFFF" bgcolor="#426199">
  <tr class="lc2" bgcolor="#6699CC">
    <td height="26" colspan="4">
      <div align="center"><strong><font color="#FFFFFF" size="4">合同信息维护</font></strong></div></td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td height="30">信息类别</td>
    <td colspan="3">&nbsp;合同
     <input type="radio" name="radiobutton" value="radiobutton" checked onClick="chooseType(1)"> 
    专项
    <input type="radio" name="radiobutton" value="radiobutton" onClick="chooseType(2)"></td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td width="13%" height="30"><span id="_name">合同名称</span></td>
    <td width="35%">
      &nbsp;<input name="prjName" type="text" class="txt1" size="32" style="width:97% ">
    </td>
    <td width="14%"><span id="_fund">合同价款</span></td>
    <td width="38%">&nbsp;<input name="startDate" type="text" class="txt1" size="18" style="width:97% ">
    </td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td>合同甲方</td>
    <td id="a01">&nbsp;<select name="prjDept1" style="width:97%" onChange="changeInput(this, 'a01', 'a02')">
        <option value="none" selected>--请选择--</option>
        <option value="0">张三</option>
        <option value="1">李四</option>
        <option value="2">王五</option>
        <option value="other">其他..</option>
      </select>
    </td>
	<td id="a02" style="display:none">
	&nbsp;<input name="jia" type="text" class="txt1" style="width:92% " size="32" /><img src="../images/clip2.gif" style="cursor:hand " onClick="changeInput(this, 'a02','a01');">
	</td>
    <td><span id="_code">合同编号</span></td>
    <td align="left" nowrap> <span class="style1">
      &nbsp;<input name="startDate2" type="text" class="txt1" size="18" style="width:97% ">
      </span>
        <input name="prjPerson2" type="text" class="txt1" size="18" style="display:none "/>
    </td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td height="25">合同乙方</td>
    <td id='b01'>&nbsp;<select name="select" style="width:97%" onChange="changeInput(this, 'b01', 'b02')">
        <option value="none" selected>--请选择--</option>
        <option value="0">张三</option>
        <option value="1">李四</option>
        <option value="2">王五</option>
        <option value="other">其他..</option>
      </select>
	</td>
	<td id="b02" style="display:none">
	&nbsp;<input name="yi" type="text" class="txt1" style="width:92%" /><img src="../images/clip2.gif" style="cursor:hand " onClick="changeInput(this, 'b02','b01');">
	</td>
    <td >签订日期</td>
    <td >
      &nbsp;<input name="signDate" type="text" class="txt1" size="18"  style="width:90%">
      <img src="../images/calendar.gif" style="cursor:hand;" width="18" height="18" border="0" align="absmiddle" alt="" onClick="_getDate(signDate)"> </td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td height="25">合同丙方</td>
    <td id="c01">&nbsp;<select name="select2" style="width:97%" onChange="changeInput(this, 'c01','c02')">
      <option value="none" selected>--请选择--</option>
      <option value="0">张三</option>
      <option value="1">李四</option>
      <option value="2">王五</option>
      <option value="other">其他..</option>
    </select>  </td>
	<td id="c02" style="display:none">
	&nbsp;<input name="bing" type="text" class="txt1" style="width:92% " size="32" /><img src="../images/clip2.gif" style="cursor:hand " onClick="changeInput(this, 'c02','c01');">
	</td>
      
    <td>合同内容</td>
    <td>&nbsp;<input name="prjName" type="text" class="txt1" size="32" style="width:97% ">
    </td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td height="25">所属项目</td>
    <td >&nbsp;<input name="belongedPrj" type="text" class="txt1" size="60" style="width:90% ">
    <img src="../images/clip.gif" onClick="getPopValue(belongedPrj, '../project/miniPrjList0.jsp')" style="cursor:pointer "/></td>
    <td >建设内容</td>
    <td >&nbsp;<input type="text" class="txt1" size="40" name="jie_kemu"  style="width:90% "/>
    <img src="../images/clip.gif" onClick="getPopValue(jie_kemu,'../basedata/popups/construct_content.jsp')" style="cursor:pointer "/></td>
  </tr>
  <tr class="lc2" bgcolor="#EEF4FF">
    <td height="25">备注</td>
    <td colspan="3" >
      &nbsp;<textarea name="coment" rows="2" style="width:99% ">
	</textarea>
    </td>
  </tr>
</table>
<p align="center"> <img src="../images/add.gif"  onClick="alert('添加')" style="cursor:pointer "/> &nbsp;
<img src="../images/modify.gif"  onClick="alert('修改')" style="cursor:pointer "/>&nbsp;
<img src="../images/find.gif"  onClick="alert('查询')" style="cursor:pointer "/></p>
</body>
</html>
