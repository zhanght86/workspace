
if(!window.QZONE){QZONE={};}
QZONE.TC={orderedUinList:[],data:null,btnStyle:2,LIKE_TEXT:"关注",dataCache:{portrait:null,remark:null},G_Param:{},isLiked:false,bootstrap:function(){this.init();if(ua.ie&&ua.ie==6){try{document.execCommand("BackgroundImageCache",false,true);}
catch(e){}}},init:function(){this.initParam();this.initView();},initParam:function(){this.G_Param=QZFL.util.splitHttpParamString(location.search.substring(1));if(this.G_Param.test){this.data={"ret":0,"friendList":[88158622,89687013,195298056,12425110],"LikeObj":{"fan_count":232}}
this.G_Param.url="i.qq.com";}else if(typeof(g_likeData)!="undefined"&&typeof(g_likeData.LikeObj)!="undefined"){QZONE.TC.data=g_likeData;}
if(!this.G_Param.btn_style){this.G_Param.btn_style=0;}
if(this.G_Param.btn_type=="follow"){QZONE.TC.LIKE_TEXT="关注";}
if(this.G_Param.btn_style==2&&!this.G_Param.style){this.G_Param.style=1;}else if(!this.G_Param.style){this.G_Param.style=2;}
this.btnStyle=this.G_Param.style;this.G_Param.url=decodeURIComponent(this.G_Param.url);var d=$("mainContainer");if(d){QZFL.css.addClassName(d,"style_"+this.btnStyle);}},initView:function(){this.showUserArea();this.setLikeBtn();},setLikeBtn:function(){var d=$("qzLikeBtn");if(d){d.className="qz_liked_bt";}},showUserArea:function(){this.User.init();},Like:{init:function(){},doCare:function(isUnlike){var fs=new QZFL.FormSender("http://open.qzone.qq.com/"+(isUnlike?"unlike":"dolike"),"post",{refer:window.document.referrer,url:decodeURIComponent(QZONE.TC.G_Param.url),from:"like_plugin",uin:QZONE.TC.Login.checkLogin()},"UTF-8");fs.onSuccess=function(r){if(r&&r.ret==0||r.ret==-10){window.location.reload();}else if(r&&r.ret==-2){QZONE.TC.Login.open(isUnlike);}else{if(r.msg){alert(r.msg);}}};fs.onError=QZFL.emptyFun;fs.send();},cancelCare:function(){this.doCare(true);},clickLikeBtn:function(){QZONE.TC.Like.send(QZONE.TC.isLiked);},send:function(isUnlike){var TC=QZONE.TC;var uin=TC.Login.checkLogin();if(uin>10000){if(TC.isLiked){TC.Like.cancelCare();}else{TC.Like.doCare();}}else{QZONE.TC.Login.open(isUnlike);}},update:function(type){location.reload();},changeBTN:function(isUnlike){var d=$("likeBTN");if(d){d.title=isUnlike?("点击"+QZONE.TC.LIKE_TEXT+"后，在QQ空间可收取该网站的空间动态"):("点击取消"+QZONE.TC.LIKE_TEXT);QZONE.TC.isLiked=!isUnlike;}}},PV:{_imglist:{},sendAct:function(key){var _a=[];_a.push("http://open.qzone.qq.com/click_stat?refer="+encodeURIComponent(document.referrer));_a.push("&from=like_plugin");_a.push("&key="+key);_a.push("&url="+encodeURIComponent(QZONE.TC.G_Param.url));_a.push("&grz="+Math.random());QZONE.TC.PV._send(_a.join(""));},_send:function(url){var _self=QZONE.TC.PV;var t=new Image();t.id="_g_"+((new Date()).getTime());_self._imglist[t.id]=t;t.src=url;t.onload=t.onerror=(function(o){return function(){_self._clear(o);};})(t);},_clear:function(imgObj){var _self=QZONE.TC.PV;delete _self._imglist[imgObj.id];}},Login:{open:function(isUnlike){QZONE.TC.PV.sendAct(isUnlike?"click_unlike":"click_like");window.open("http://qzs.qq.com/qzone/v5/tc/like_login.html?hasqz="+QZONE.TC.data.hasqz+"&btnType="+encodeURIComponent(QZONE.TC.LIKE_TEXT)+"&isUnlike="+(isUnlike?1:0)+"&url="+QZONE.TC.G_Param.url+"&name="+encodeURIComponent(QZONE.TC.data.LikeObj.name)+"&qq="+QZONE.TC.data.LikeObj.qq+"&isLiked="+QZONE.TC.data.isLiked+"&friendList="+QZONE.TC.data.friendList.join("_"),"_blank","height=320,width=560,resizable=true,left="+(window.screen.width-400)/2+",top=200");},checkLogin:function(){if(QZONE.TC.G_Param.test){return 8888888;}
var g=QZFL.cookie.get,u,uin;window.g_iLoginUin=uin=((u=g('uin').replace(/\D/g,'')-0)&&g('skey')&&u>10000&&u||0);!uin&&QZONE.TC.Login.clearSession();return uin;},clearSession:function(){QZFL.object.each(['zzpaneluin','zzpanelkey','uin','skey'],function(ck){QZFL.cookie.del(ck)});},getPURL:function(uin,size){if(typeof(size)!="number"){size=50;}else if(size>50){size=100;}else if(size<=30){size=30;}else{size=50;}
return"http://qlogo"+((uin%4)+1)+".store.qq.com/qzone/"+uin+"/"+uin+"/"+size;}},User:{finish:false,data:null,tmp:{begin:'<div class="qz_like_op">',begin_liked:'<div class="qz_liked_op{_tx3}">',likeBtn:'<a href="javascript:;" class="qz_like_bt" title="关注后，您的QQ空间动态里会显示该网站的空间动态" id="likeBTN" onclick="QZONE.TC.Like.clickLikeBtn();" style="cursor:pointer"><span>{has}关注</span></a>',cnt:'<strong class="qz_like_stat"><span id="likeCnt" style="display:none;"><a href="{url}" title="{title}" target="_blank" style="cursor:pointer;">{cnt}</a></span></strong>',cnt_noBubble:'<span class="qz_like_text" id="likeCnt" style="display:none">{cnt}</span>',userName:'<span class="qz_like_text" id="userName" style="display:none"></span>',userName_liked:'<a class="qz_like_bt" href="javascript:;" onclick="QZONE.TC.Like.clickLikeBtn();return false;"><span>已关注</span></a><span class="qz_like_text" id="userName" style="display:none"></span>',end:'</div>',user:'<div class="qz_like_user" id="qzLikeUser" style="display:none;"><ol id="qzLikeUserContainer"></ol></div>'},init:function(){this.getData();},getData:function(){if(trim(QZONE.TC.G_Param.url)==""){return;}
function _cb(o){QZONE.TC.isLiked=o.isLiked;var _h,_p=QZONE.TC.User.tmp,_a=[],_arr=[],style=QZONE.TC.G_Param.style,type=QZONE.TC.G_Param.type;if(!QZONE.TC.isLiked){_a.push(_p.begin);}else{_a.push(format(_p.begin_liked,{_tx3:(style==2||style==3)&&type!="button_num"?"_tx3":""}));}
if(!o.isLiked||QZONE.TC.G_Param.type!="button_num_user"){_a.push(format(_p.likeBtn,{'has':(o.isLiked&&QZONE.TC.G_Param.style!=1)?"已":""}));}
if(o.ret==0){QZONE.TC.data=o;if(QZONE.TC.G_Param.type!="button"){_a.push(format(((QZONE.TC.G_Param.type=="button_num_user")?_p.cnt_noBubble:_p.cnt),{'cnt':((QZONE.TC.G_Param.type=="button_num_user")?QZONE.TC.User.processNum(o.LikeObj.fan_count)+("人"+QZONE.TC.LIKE_TEXT):QZONE.TC.User.processNum(o.LikeObj.fan_count)),'url':QZONE.TC.G_Param.url,'title':"查看"+g_likeData.LikeObj.title+"的QQ空间主页"}));if(QZONE.TC.G_Param.type=="button_num_user"&&QZONE.TC.isLiked){_a.push(_p.userName_liked);}else{_a.push(_p.userName);}}
_a.push(_p.end);if(o.friendList&&o.friendList.length>0&&QZONE.TC.G_Param.type=="button_num_user"){_a.push(_p.user);if(QZONE.TC.Login.checkLogin()>10000){for(var i=0,len=o.friendList.length;i<len;i++){_arr[i]=o.friendList[i];}
setTimeout(function(){QZONE.TC.User.getNick(_arr);},1000);}}
var d=$("mainContainer");if(d){d.innerHTML=_a.join("").replace(/关注/g,QZONE.TC.LIKE_TEXT);}
if((o.friendList&&o.friendList.length==0)||(QZONE.TC.G_Param.type=="button_num")){d=$("likeCnt");if(d){d.style.display="";}}
QZONE.TC.Like.changeBTN(!o.isLiked);if(QZONE.TC.G_Param.test){d=$("likeBTN");if(d){d.disabled=true;}}}else{}}
if(QZONE.TC.data){_cb(QZONE.TC.data);return;}
var dest="http://open.qzone.qq.com/get",data={url:decodeURIComponent(QZONE.TC.G_Param.url),uin:QZONE.TC.Login.checkLogin()},t=new QZFL.JSONGetter(dest,"getLikeInfo",data,'UTF-8');t.onSuccess=function(o){_cb(o);};t.onError=function(o){window.location.reload();};t.send("_Callback");},processNum:function(num){if(typeof num!='number'){num=Number(num);}
var temp=num/10000,re;if(temp>=1&&temp<1000){re=Math.round(num/1000)/10+'万';}else if(temp>=1000&&temp<10000){re=Math.round(temp)+'万';}else if(temp>10000){re=9999+'万';}else{re=num;}
return re;},renderFriendList:function(friendList){if(!friendList||friendList.length==0){return;}
var _a=[],_max=5,_ol=QZONE.TC.orderedUinList,o,_h='<li><a href="http://user.qzone.qq.com/{uin}" target="_blank"><img src="{purl}" alt="{nick}" title="{nick}" /></a></li>';for(var i=0,len=Math.min(_ol.length,_max);i<len;i++){o={uin:_ol[i],nick:friendList[_ol[i]],purl:QZONE.TC.Login.getPURL(_ol[i],40)}
_a.push(format(_h,o));}
var d=$("qzLikeUserContainer");if(d){d.innerHTML=_a.join("").replace(/关注/g,QZONE.TC.LIKE_TEXT);}
QZONE.TC.User.show();},renderFriendNames:function(friendList){if(!friendList||friendList.length==0){return;}
var _c=0,_n=0,_max=2,_ol=QZONE.TC.orderedUinList,_fl=_ol.length,_a=[],_h='<a href="http://user.qzone.qq.com/{uin}" target="_blank">{nick}</a>';if(QZONE.TC.data&&QZONE.TC.data.LikeObj&&QZONE.TC.data.LikeObj.fan_count){_c=QZONE.TC.data.LikeObj.fan_count;}
for(var i=0;i<_fl;i++){_a.push(format(_h,{uin:_ol[i],nick:_ol[i]==window.g_iLoginUin?"我":cut(friendList[_ol[i]],8,'..')}));_n++;if((_fl==_n)||(_n==_max)){if(_c>_n){_a.push("和其他"+QZONE.TC.User.processNum(_c-_n)+((QZONE.TC.G_Param.type=="button_num_user")?("人"+QZONE.TC.LIKE_TEXT):""));}else{_a.push(QZONE.TC.LIKE_TEXT);}
break;}else{_a.push("、");}}
var d=$("userName");if(d){d.innerHTML=_a.join("");d.style.display="";}
d=$("likeCnt");if(d){d.style.display="none";}},getNick:function(uinList){var obj={},i,uin,orderedUinList=[];if(QZONE.TC.G_Param.test){obj={"184868454":"JINJING","88158622":"GRZ","89687013":"Pufen","195298056":"Bruse","12425110":"Aimee"}
QZONE.TC.orderedUinList=[184868454,88158622,195298056];QZONE.TC.User.renderFriendList(obj);QZONE.TC.User.renderFriendNames(obj);return;}
function _cb(uinList,o,rmk){for(i=uinList.length;i--;){uin=uinList[i];obj[uin]=rmk[uin]?escHTML(rmk[uin]):(o[uin]&&o[uin][6]?o[uin][6]:uin);if(uin==g_iLoginUin){orderedUinList.unshift(uin);uinList.splice(i,1);}else if(rmk[uin]){orderedUinList.push(uin);uinList.splice(i,1);}}
QZONE.TC.orderedUinList=orderedUinList.concat(uinList);QZONE.TC.User.renderFriendList(obj);QZONE.TC.User.renderFriendNames(obj);}
if(QZONE.TC.dataCache.portrait&&QZONE.TC.dataCache.portrait[uinList[0]]){_cb(uinList,QZONE.TC.dataCache.portrait,QZONE.TC.dataCache.remark);}else{QZONE.FrontPage.getPortraitList(uinList,function(o){QZONE.FrontPage.getRemarkList(function(rmk){QZONE.TC.dataCache.portrait=o;QZONE.TC.dataCache.remark=rmk;_cb(uinList,o,rmk);});});}},show:function(){var d=$("qzLikeUser");if(d){d.style.display="";}}}};QZONE.TC.bootstrap();/*  |xGv00|510858f24532f19ca2e10f7de9c942ff */