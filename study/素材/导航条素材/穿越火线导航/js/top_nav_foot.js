document.domain="qq.com";
function $(){var elements = new Array();for (var i = 0; i < arguments.length; i++){var element = arguments[i];if (typeof element == "string"){element = document.getElementById(element);}if (arguments.length == 1){return element;}elements.push(element);}return elements;}
function addLoadEvent(func){var oldonload = window.onload;if(typeof window.onload != 'function'){window.onload = func;}else{window.onload = function(){oldonload();func();}}}
(function(){if($('top')){$('top').innerHTML='<dl id="nav"><dt id="one-ddheader"><a href="http://cf.qq.com/main.shtml" id="one_home" title="首页"></a><a href="http://cf.qq.com/webplat/info/36/88/list_1.shtml" id="one_news" title="火线报道"></a><a href="http://cf.qq.com/web200905/info/new_install.htm" id="one_gameinfo" title="游戏指南"></a><a href="http://cf.qq.com/web200905/info/dl_game.htm" id="one_download" title="下载中心"></a><a href="#" id="one_shortcut" title="快速通道"></a><a href="http://app.cf.qq.com/cgi-bin/CommAction/showaction.cgi?iPdName=14&iType=2" id="one_cfarea" title="火线专区"></a><a href="http://cf.qq.com/act/a20081010team/" id="one_traitsys" title="特色系统" target="_blank"></a><a href="http://games.qq.com/tencent/qqcf/" id="one_playerconcur" target="_blank" title="玩家互动"></a><a href="http://service.qq.com/category/cf.html" id="one_customser" title="腾讯客服" target="_blank"></a><a href="http://cf.gamebbs.qq.com/" id="one_bbs" title="论坛" target="_blank"></a> </dt><dd id="one-ddcontent" class="c"><ul id="two_home"></ul><ul id="two_news"><li><a href="http://cf.qq.com/webplat/info/36/88/188/list_1.shtml">新闻</a></li><li><a href="http://cf.qq.com/webplat/info/36/88/199/list_1.shtml">公告</a></li><li><a href="http://cf.qq.com/webplat/info/36/88/209/list_1.shtml">活动</a></li><li><a href="http://cf.qq.com/webplat/info/36/88/208/list_1.shtml">赛事</a></li></ul><ul id="two_gameinfo"><li><a href="http://cf.qq.com/web200905/info/new_install.htm">新兵上路</a></li><li><a href="http://cf.qq.com/web200905/info/gmi_story.htm">游戏资料</a></li><li><a href="http://cf.qq.com/web200905/info/faq_version.htm">常见问题</a></li></ul><ul id="two_download"><li><a href="http://cf.qq.com/web200905/info/dl_game.htm">游戏下载</a></li><li><a href="http://cf.qq.com/web200905/info/dl_wallpaper.htm">精美壁纸</a></li><li><a href="http://cf.qq.com/web200905/info/dl_song.htm">主题歌曲</a></li><li><a href="http://cf.qq.com/web200905/info/dl_magazine.htm">火线杂志</a></li><li><a href="http://cf.qq.com/web200905/info/dl_story.htm">连载小说</a></li></ul><ul id="two_shortcut"><li><a href="http://cf.qq.com/act/a20101020tyf/" target="_blank">体验服</a></li><li><a href="http://cf.qq.com/act/a20090409forceout/index.htm" target="_blank">封号查询</a></li><li><a href="http://QQCFyj.gamebbs.qq.com" target="_blank">BUG提交</a></li><li><a href="http://gamesafe.qq.com/" target="_blank">游戏安全</a></li><li><a href="http://fcm.qq.com/" target="_blank">防沉迷</a></li><li><a href="http://cf.qq.com/act/a20090907tenprotect/index.htm" target="_blank">反外挂专题</a></li></ul><ul id="two_cfarea"><li><a href="http://app.cf.qq.com/cgi-bin/CommAction/showaction.cgi?iPdName=14&iType=2">活动专区</a></li><li><a href="http://app.cf.qq.com/cgi-bin/CommAction/showaction.cgi?iPdName=14&iType=1">版本专区</a></li><li><a href="http://cf.qq.com/web200905/info/games_list.htm">大赛专区</a></li><li><a  target="_blank" href="http://live.qq.com/zt/gzone/002.html">视频专区</a></li><li><a href="http://act.vip.qq.com/privilege/templates/10200/" target="_blank">QQ会员专区</a></li><li><a href="http://app.cf.qq.com/web200905/info/cdkey.htm">CDKEY专区</a></li></ul><ul id="two_traitsys"><li><a href="http://cf.qq.com/act/a20081010team/" target="_blank">战队系统</a></li><li><a href="http://cf.qq.com/act/a20080415honor/index.htm" target="_blank">荣誉系统</a></li></ul><ul id="two_playerconcur"><li><a href="http://games.qq.com/tencent/qqcf/" target="_blank">战术攻略</a></li><li><a href="http://act3.games.qq.com/2667/work/list.do?field3=1" target="_blank">玩家相册</a></li><li><a href="http://games.qq.com/tencent/qqcf/video/" target="_blank">玩家视频</a></li><li><a href="http://act3.games.qq.com/2667/work/list.do?field3=2" target="_blank">玩家截图</a></li> <li><a href="http://cf.qzone.qq.com/" target="_blank">官方博客</a></li><li><a href="http://t.qq.com/crossfire" target="_blank">官方微博</a></li></ul><ul id="two_customser"><li><a href="http://service.qq.com/category/cf.html" target="_blank">客户服务</a></li><li><a href="/web200905/info/agreement.htm" target="_blank">用户协议</a></li><li><a href="/web200905/info/player_rule.htm" target="_blank">玩家条例</a></li><li><a href="http://wenwen.soso.com/z/c18048256.htm?ch=fl.fl" target="_blank">网友互助</a></li></ul><ul id="two_bbs"><li><a href="http://cf.gamebbs.qq.com/" target="_blank">论坛</a></li><li><a href="http://post.soso.com/穿越火线" target="_blank">搜吧</a></li></ul></dd></dl><div id="banner"><a target="_blank" href="http://cf.qq.com/act/a20101021halloween/"></a></div>'}})();
document.write('<div id="loginbox"><div id="unlogin"><a href="javascript:OpenLoginDiv();" onfocus="this.blur();" title="用户登录" onclick=\'pgvSendClick({hottag:\"main.link.login\"});\'>用户登录</a><span id="loginfl"></span></div><div id="logined" style="display:none;"> <p class="c"><a href="http://cf.qq.com/web200905/info/gameinfo.htm" target="_blank" title="查看游戏资料">游戏资料</a> <a href="http://cf.qq.com/act/a20080306team/" target="_blank" title="进入战队系统">战队系统</a> <a href="http://igame.qq.com/index.htm?gtype=2&page=1" target="_blank" title="进入游戏人生">游戏人生</a> <a href="javascript:LogoutPage();" title="注销" class="logout">注销</a></p></div></div><div id="leftbar"><h2 title="导航"></h2><ul><li><a id="l_dl" href="http://cf.qq.com/web200905/info/dl_game.htm" onclick="pgvSendClick({hottag:\'main.downbtn.yxxz\'});" title="游戏下载">游戏下载</a></li><li><a id="l_ct" href="http://cf.qq.com/comm-htdocs/pay/?t=cf" onclick="pgvSendClick({hottag:\'main.sidebar.zhcz\'});" title="帐户充值" target="_blank">帐户充值</a></li><li><a id="l_ts" href="http://app.cf.qq.com/market/index.shtml" onclick="pgvSendClick({hottag:\'main.sidebar.djsc\'});" target="_blank" title="道具商城">道具商城</a></li><li><a id="l_vp" href="http://cf.qq.com/vip/" target="_blank" onclick="pgvSendClick({hottag:\'main.sidebar.cfhy\'});" title="CF会员">CF会员</a></li><li><a id="l_lk" href="http://app.cf.qq.com/act/a20080723cj/" target="_blank" onclick="pgvSendClick({hottag:\'main.sidebar.xylb\'});" title="幸运礼包">幸运礼包</a></li><li><a id="l_li" href="http://cf.qq.com/act/a20080415honor/index.htm" title="点亮图标" target="_blank">点亮图标</a></li><li><a id="l_cy" href="http://app.cf.qq.com/web200905/info/cdkey.htm" target="_blank" onclick=\'pgvSendClick({hottag:"main.sidebar.cdkey"});\' title="CDKEY专区">CDKEY专区</a></li><li><a id="l_qq" href="http://act.vip.qq.com/privilege/templates/10200/" target="_blank" onclick=\'pgvSendClick({hottag:"main.sidebar.qqhy"});\' title="QQ会员专区">QQ会员专区</a></li><li><a id="l_bq" href="http://qqgame.qq.com/act/a20100819cf/index.html" target="_blank" onclick=\'pgvSendClick({hottag:"main.sidebar.lzhz"});\' title="蓝钻合作专区">蓝钻合作专区</a></li></ul><div class="left_gg_box"><a id="h180" target="_blank"><img  border="0" width="165" id="i180" /></a></div><div class="left_gg_box"><a id="h181" target="_blank"><img  border="0"  width="165" id="i181" /></a></div></div>');
addLoadEvent(function(){if($('foot')){$('foot').innerHTML = '<div class="center"><div class="container" style="color:#B6B1A6;">网络文化经营许可证 <a href="http://cf.qq.com/web200905/info/game_rule.htm" target="_blank">文网测字[2008]6号</a> 互联网出版经营许可证 新出音〔2008〕714号</div></div><div id="footlogo" class="container"><p> Copyright &copy; 1998-2010 Tencent Inc. All Rights Reserved. <br />Copyright &copy; NEOWIZ GAMES.All Rights Reserved. <br />Copyright &copy; 2002-2010 Smilegate Inc. All rights reserved. <br /></p></div>';}});
(function(){ $('loginfl').style.display="none"; addLoadEvent(function(){insertFlash('loginfl', 'f', 'http://ossweb-img.qq.com/images/cf/web200905/fl_login.swf', 320, 180); $('loginfl').style.display="block";setTimeout(function(){$('unlogin').style.backgroundPosition="-1000px -1000px";},100);});})();
/*  |xGv00|18d2a7c09a78876801f2027ff70e8e6e */