var PvTrack;
this.PvTrack||(PvTrack=function(){function D(a,c,b,d){if(a.addEventListener){a.addEventListener(c,b,d);return true}else if(a.attachEvent)return a.attachEvent("on"+c,b);a["on"+c]=b}function k(a,c,b,d,x,g){var m;if(b){m=new Date;m.setTime(m.getTime()+b*6E4)}e.cookie=a+"="+r(c)+(b?";expires="+m.toGMTString():"")+";path="+(d?d:"/")+(x?";domain="+x:"")+(g?";secure":"")}function n(a){return(a=RegExp("(^|;)[ ]*"+a+"=([^;]*)").exec(e.cookie))?E(a[2]):""}function O(){var a=n(y);if(a!=""){a=a.split(".");if(a.length==
5){o=parseInt(a[0]);s=parseInt(a[1]);p=parseInt(a[2]);q=parseInt(a[3]);l=parseInt(a[4]);a=n(t);if(a!="")h=parseInt(a);z=n(A)}}}function P(){var a;F=a=Math.round((new Date).getTime()/1E3);if(o==0){o=B();p=s=a}else p=q;q=a;if(z==""){h=B();l=1}else if(n(t)==""){h=B();l=1}else{h=parseInt(z);l+=1}a=o+"."+s+"."+p+"."+q+"."+l;if(i==""){k(y,a,G);k(t,h,H);k(A,h)}else{k(y,a,G,"/",i);k(t,h,H,"/",i);k(A,h,"","/",i)}}function B(){return Math.round(Math.random()*2147483647)}function Q(a){var c=new Image(1,1);c.onLoad=
function(){};c.src=a}function I(){if(u=="")return false;if(i=="")return false;if(v=="")return false;return true}function R(){var a=n(v);return E(a)}function J(){K=true}this.channel=this.pageType=this.type=this.p4=this.p3=this.p2=this.p1=0;var u=this.location=this.referrer="",i="",v="",e=document,j=navigator,L=screen,w=window,M=w.location.hostname,r=w.encodeURIComponent||escape,E=w.decodeURIComponent||unescape,y="__pta",G=1051200,o=0,s=0,p=0,q=0,l=1,F=0,t="__pts",h=0,H=20,A="__ptb",z,S=j.cookieEnabled?
1:0,T=j.javaEnabled()?1:0,C=false,N="",K=false,f=this;this.track=function(){if(K){if(I()&&C){var a=u+"?v=3.6",c="&p1="+f.p1+"&p2="+f.p2+"&p3="+f.p3+"&p4="+f.p4+"&t="+f.type+"&cl="+f.channel+"&pt="+f.pageType+"&res="+L.width+"x"+L.height+"&sid="+h+"&cvt="+F+"&vid="+o+"&vtf="+s+"&vtl="+p+"&vtc="+q+"&vc="+l+"&b=&d=&e=&c=&f="+S+"&g="+T+"&h=",b="-";if(j.plugins&&j.plugins.length)for(var d=0;d<j.plugins.length;d++){if(j.plugins[d].name.indexOf("Shockwave Flash")!=-1){b=j.plugins[d].description.split("Shockwave Flash ")[1];
break}}else if(w.ActiveXObject)for(d=10;d>=2;d--)try{if(eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash."+d+"');")){b=d+".0";break}}catch(x){}d=r;var g;if(f.referrer!="")g=f.referrer;else{g="";try{g=top.document.referrer}catch(m){if(parent)try{g=parent.document.referrer}catch(U){g=""}}if(g==="")g=e.referrer}a+=c+b+"&i="+d(g)+"&k="+r(f.location!=""?f.location:e.location.href)+"&uid="+r(N)+"&rand="+Math.random();Q(a)}}else setTimeout(arguments.callee,0)};(function(){for(var a=["pcpop.com","guomii.com"],
c=["it168.com","qudao168.com","chinaunix.com","chinaunix.net","itpub.net","ixpub.net","igeek.com.cn","afjk.com","app111.com","mobpub.net","jimi168.com","feng91.com"],b=0;b<a.length;b++)if(M.indexOf(a[b])>-1){i=a[b];u="http://count.pcpop.com/count.ashx";v="pop_userid";return}for(b=0;b<c.length;b++)if(M.indexOf(c[b])>-1){i=c[b];u="http://stat.it168.com/count.ashx";v="sso_username_utf8";break}})();D(e,"mouseover",J,false);D(e,"mousemove",J,false);C=function(){var a,c;if(e.body){a=e.body.clientWidth|
e.documentElement.clientWidth;c=e.body.clientHeight|e.documentElement.clientHeight}else{a=e.documentElement.clientWidth;c=e.documentElement.clientHeight}if(a>300&&c>300)return true;return false}();if(I()&&C)try{O();P();N=R()}catch(V){}});
