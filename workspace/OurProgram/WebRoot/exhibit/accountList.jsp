<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>数据展现</title>
<style type="text/css">
<!--
table {font-size:9pt;}
th {font-size:12pt;font-family:宋体;}
a:link {color:#0000ff;text-decoration:none;}
a:visited {color:#0000ff;text-decoration:none;}
a:hover {color:#ff0000;text-decoration:none;}
-->
</style>
<script language="JavaScript">
<!--
function _show(snumber,paymode){
	document.form1.snumber.value = snumber;
	document.form1.paymode.value = paymode;
}
function changeTdContent(id,txt){
	for (var i = 1;i<=2;i++){
		document.getElementById(id+i).innerHTML = '&nbsp;'+txt;
	}
}
function changeTdColor(tr_index,td_index){
	var trs = document.getElementById("nav").getElementsByTagName("tr");
	for (var i = 0;i<trs.length;i++){
	  for (var j = 0;j<trs[i].cells.length;j++){
	    trs[i].cells[j].bgColor = "#FFFFFF";
	  }
	}
	trs[tr_index].cells[td_index].bgColor = "#cccccc";
}
function _getDate(_txt)
{
	var w = 200;   // 宽度
	var h = 210;   // 高度
	var x = event.screenX - event.offsetX - w/2;   // + deltaX;
	var y = event.screenY - event.offsetY + 20;    // + deltaY;
	
	
	var state = "dialogWidth:" + w + "px;dialogHeight:" + h + "px;dialogLeft:" + x + "px;dialogTop:" + y + "px;status:no;directories:yes;scrollbars:no;resizable=no;";
	//alert(state);
	var a = window.showModalDialog("../budget/datex.HTM","",state);
	if(a != null)
		_txt.value = a;
}
//-->
</script>
</head>

<body background="../images/grid.gif">
<form name="form1" method="post" action="">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#426199">
    <!--tr align="center" bgcolor="#6699CC"> 
      <th height="25" colspan="9"><strong>银行存款</strong></th>
    </tr-->
    <tr> 
      <td width="10%" align="center" bgcolor="#A6D0F2"><strong>日期</strong></td>
      <td width="5%" height="25" align="center" bgcolor="#A6D0F2"><strong>凭证号</strong></td>
      <td width="10%" align="center" bgcolor="#A6D0F2"><strong>摘要</strong></td>
	  <td width="10%" align="center" bgcolor="#cccccc"><strong>会计科目</strong></td>
      <td width="10%" align="center" bgcolor="#A6D0F2"><strong>借方金额</strong></td>
      <td width="10%" align="center" bgcolor="#A6D0F2"><strong>贷方金额</strong></td>
      <td width="10%" align="center" bgcolor="#A6D0F2"><strong>余款</strong></td>
      <td width="10%" align="center" bgcolor="#A6D0F2"><strong>支付方式</strong></td>
      <td align="center" bgcolor="#A6D0F2"><strong>采购形式</strong></td>
      <td width="8%" align="center" bgcolor="#A6D0F2"><strong>采购方式</strong></td>
      <td width="8%" align="center" bgcolor="#A6D0F2"><strong>项目分类</strong></td>
    </tr>
    <tr bgcolor="EEF4FF"  onmouseover="this.bgColor='#EBEBEB';" onmouseout="this.bgColor='#EEF4FF';"> 
      <td>
<div align="center">2006-07-08</div></td>
      <td height="25" align="center" >003</td>
      <td title="财政拨款">&nbsp;财政拨款</td>
      <td bgcolor="#cccccc" id="td01">&nbsp;银行存款</td>
      <td align="right" >5,000,000.00</td>
      <td align="right" >0.00</td>
      <td align="right" >5,000,000.00</td>
      <td >&nbsp;财政直接支付</td>
      <td >&nbsp;自行组织集中采购机构采购</td>
      <td >&nbsp;公开招标</td>
      <td >&nbsp;货物</td>
    </tr>
    <tr  bgcolor="EEF4FF" onmouseover="this.bgColor='#EBEBEB';" onmouseout="this.bgColor='#EEF4FF';"> 
      <td >
<div align="center">2006-08-08</div></td>
      <td height="25" align="center" >004</td>
      <td  title="金审工程一期-应用软件">&nbsp;金审工程...</td>
      <td bgcolor="#cccccc" id="td02">&nbsp;银行存款</td>
      <td align="right" >0.00</td>
      <td align="right" >90,000.00</td>
      <td align="right" >4,910,000.00</td>
      <td >&nbsp;财政直接支付</td>
      <td >&nbsp;自行组织集中采购机构采购</td>
      <td >&nbsp;公开招标</td>
      <td >&nbsp;货物</td>
    </tr>
  </table>
  <table width="95%" height="25" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td><font color="#FF0000">注：灰色背景列只用于原型展示，实际开发软件中不显示。</font></td>
    </tr>
  </table>
  <table width="80%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#426199">
    <tr align="center" bgcolor="#6699CC"> 
      <th height="25" colspan="4"><strong><font color="#FFFFFF">查询条件</font></strong></th>
    </tr>
    <tr> 
      <td width="10%" height="25" align="left" bgcolor="#A6D0F2"><strong>凭证号</strong></td>
      <td width="40%" align="left" bgcolor="EEF4FF"><input name="cred_code" type="text" class="txt1" id="cred_code" style="width:98%"></td>
      <td width="10%" align="left" bgcolor="#A6D0F2"><strong>日期</strong></td>
      <td width="40%" align="left" bgcolor="EEF4FF">
<input name="cred_date" type="text" class="txt1" id="cred_date" style="width:35%" readonly> 
        <img src="../images/calendar.gif" border="0" style="cursor:hand" onClick="_getDate(cred_date)">&nbsp;～&nbsp;<input name="cred_date1" type="text" class="txt1" id="cred_date1" style="width:35%" readonly> 
        <img src="../images/calendar.gif" border="0" style="cursor:hand" onClick="_getDate(cred_date1)"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="left" bgcolor="#A6D0F2"><strong>摘要</strong></td>
      <td align="left" bgcolor="EEF4FF"><input name="summary" type="text" class="txt1" id="summary2" style="width:98%"></td>
      <td align="left" bgcolor="#A6D0F2"><strong>会计科目</strong></td>
      <td align="left" bgcolor="EEF4FF"><select name="accountsubject" id="select" style="width:98%">
          <option>----</option>
          <option>银行存款</option>
          <option>建筑安装投资</option>
          <option>设备投资</option>
          <option>待摊投资</option>
          <option>其他投资</option>
          <option>应付款</option>
          <option>基建拨款</option>
          <option>交付使用资产</option>
          <option>在建工程</option>
        </select></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="left" bgcolor="#A6D0F2"><strong>借方金额</strong></td>
      <td align="left" bgcolor="EEF4FF"><input name="borrow" type="text" class="txt1" id="borrow2" style="width:98%"></td>
      <td align="left" bgcolor="#A6D0F2"><strong>贷方金额</strong></td>
      <td align="left" bgcolor="EEF4FF"><input name="lend" type="text" class="txt1" id="lend2" style="width:98%"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="left" bgcolor="#A6D0F2"><strong>余款</strong></td>
      <td align="left" bgcolor="EEF4FF"><input name="remain" type="text" class="txt1" id="remain2" style="width:98%"></td>
      <td align="left" bgcolor="#A6D0F2"><strong>支付方式</strong></td>
      <td align="left" bgcolor="EEF4FF"><select name="paymode" id="select2" style="width:98%">
          <option>----</option>
          <option>财政直接支付</option>
          <option>财政授权支付</option>
          <option>实拨资金</option>
        </select></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="left" bgcolor="#A6D0F2"><strong>采购形式</strong></td>
      <td align="left" bgcolor="EEF4FF"><select name="stockorg" id="select3" style="width:98%">
          <option>----</option>
          <option>自行组织集中采购机构采购</option>
          <option>委托组织集中采购机构采购</option>
          <option>自行组织部门集中采购</option>
          <option>委托组织部门集中采购</option>
          <option>自行组织分散采购</option>
          <option>委托组织分散采购</option>
        </select></td>
      <td align="left" bgcolor="#A6D0F2"><strong>采购方式</strong></td>
      <td align="left" bgcolor="EEF4FF"><select name="stockmode" id="select4" style="width:98%">
          <option>----</option>
          <option>公开招标</option>
          <option>邀请招标</option>
          <option>竞争性谈判</option>
          <option>询价</option>
          <option>单一来源</option>
          <option>其他</option>
        </select></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td height="25" align="left" bgcolor="#A6D0F2"><strong>项目分类</strong></td>
      <td colspan="3" align="left" bgcolor="EEF4FF"><select name="stocksubject" id="stocksubject" style="width:99%">
          <option>----</option>
          <option>货物</option>
          <option>工程</option>
          <option>服务</option>
        </select></td>
    </tr>
  </table>
  <br>
  <table width="300" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td align="center"><img src="../images/find.gif" width="66" height="21" style="cursor:hand;"></td>
    </tr>
  </table>
</form>
</body>
</html>

