<%@page pageEncoding="gb18030" %>
<%@page import="java.sql.*,java.io.*,com.guo.bbs.*,java.util.*" %>

<%

int id = Integer.parseInt(request.getParameter("id"));
int rootId = Integer.parseInt(request.getParameter("rootId"));
	
%>


<!--

String StrId = request.getParameter("id");
	if(StrId == null || StrId.trim().equals("")){
		out.println("Error Id");
		return;
	}
	
	int id  = 0;
	try{
		id = Integer.parseInt(StrId);
		}catch(NumberFormatException e){
		out.println("Error Id Again");
		return;
	}
	
	
	Article a =null;

	Connection conn = DB.getConn();
	String sql = "select * from article where id = "+ id;
	Statement stmt = DB.createstmt(conn);
	ResultSet rs = DB.executeQuery(conn, stmt, sql);
	if(rs.next()){
		a = new Article();
		a.initFromRs(rs);
	}
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);	
	
	
	if(a == null){
	

	你寻找的帖子不存在！

	return;
	}
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0042)http://bbs.bccn.net/thread-493382-1-1.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

  <title>images</title>
  <link rel="shortcut icon" href="http://bbs.bccn.net/favicon.ico" type="image/x-icon">
  		<link rel="stylesheet" type="text/css" href="./images_detail/skin1_thread.php">

	<script src="./images_detail/19820963.js.下载"></script><script type="text/javascript">
		var page_json = {
			user: {
				id: '0',
				name: '',
				groupid: '7',
				my_posts: '',
				zhuanjiafen: '0'
			},
			forum: {
				id: '8'
			}
		}
	</script>

	<script src="./images_detail/main.php" type="text/javascript"></script>
	</head>

<body>
  	<div class="top_channel">
	  | <a href="https://www.bccn.net/" target="_blank">网站首页</a> |
	  <a href="https://www.bccn.net/news/" target="_blank">业界新闻</a> |
      <a href="https://www.bccn.net/group/all_topics/" target="_blank">群组</a> |
      <a href="https://www.bccn.net/project/" target="_blank">交易</a> |
      <a href="https://www.bccn.net/job/" target="_blank">人才</a> |
	  <a href="https://down.bccn.net/" target="_blank">下载频道</a> |
	  <a href="https://blog.bccn.net/" target="_blank">博客</a> |
	  <a href="https://www.bccn.net/paste/" target="_blank">代码贴</a> |
	  <a href="https://www.bccn.net/run/" target="_blank">在线编程</a> |
	  <a href="https://bbs.bccn.net/">编程论坛</a> |&nbsp;
	</div>
	<div class="header">
	  <div class="logo"><a href="https://bbs.bccn.net/"><img src="./images_detail/logo.gif" alt="编程论坛" border="0"></a></div>
          <div class="quanzhandingbu"><div style="padding:5px 30px 0 0"><a href="https://www.luffycity.com/home/time-limit-welfare?=bccn" target="_blank"></a></div></div>
										    	</div>
	<div class="topbar_bottom"></div>


<div style="height:90px; width:970px; margin:0 auto 20px; padding-top:5px; display:none;">
  <!--<iframe border="0" marginwidth="0" src="/aaa/ad_to_guest.php" frameborder="0" width="970" scrolling="no" height="90" sandbox="allow-scripts"></iframe>-->
</div>



<div style="width:98%; max-width:1920px; min-width:760px; height:28px; overflow:hidden; margin:10px auto 0px auto;">
  <div style="float:left;">
	<a href="article.jsp">返回主题列表<!-- <img src="./images_detail/postnew1.gif"> --></a>
<!-- huifutiezi -->	<a href="reply.jsp %>"><!--<img src="./images_detail/mreply1.gif">  --></a> </div>
  <div style="float:right; margin-top:9px; white-space:nowrap;">共有 <b>406</b> 人关注过本帖</div>
</div>

<div class="div_top">
  <div style="float:left;"><b><span style="margin-right:12px;">  标题：</span><span>回复reply </span></b><br/> </div>  <!-- 帖子主题 -->
  <!--  
  <div style="float:right; padding-right:10px;">
          <a href="http://bbs.bccn.net/viewthread.php?tid=493382&amp;authorid=952963">只看楼主</a>
  	<a href="http://bbs.bccn.net/my.php?item=favorites&amp;tid=493382" style="margin-left:7px;">加入收藏</a>
	  </div>
	  -->
	  
</div>

<div style="clear:both; width:98%; max-width:1920px; min-width:760px; margin:24px auto 0px auto; padding:4px 0px 30px 0px; line-height:16px; text-align:left;">
<div style="float:left;"><b><span style="margin-right:12px;">
	<form action="replyDeal.jsp" method="post">
		<input type="hidden" name="pid" value = "<%=id %>"/>
		<input type="hidden" name="rootId" value = "<%=rootId %>"/>
		标题：<input type="text" name = "title" /><br/>
		内容：<textarea name = "cont" rows="15" cols="80"></textarea><br/>
		<input type="submit" value = "submit"/><br/>
	</form>

</div>
</div>
 <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br>

<!-- 

<div class="div1"> </div>  <a name="pid2696802"></a>
<div style="border-top:1px #a9d46d solid;" class="div0"> </div>
<div class="div0"> </div>  <a name="pid2696819"></a>

<div class="div1"> </div>  <a name="pid2696915"></a>
<div style="border-top:1px #a9d46d solid;" class="div0"> </div>
<div class="div0"> </div> <a name="lastpost"></a> <a name="pid2697940"></a>
<div style="border-top:1px #a9d46d solid;" class="div1"> </div>
<div class="div1"> </div><div style="width:98%; max-width:1920px; min-width:760px; height:38px; overflow:hidden; margin:2px auto 0px auto;">
  -->
  
   <div style="margin-top:12px;">
	<ul class="pages"><form action="http://bbs.bccn.net/viewthread.php?tid=493382&amp;extra=page%3D1&amp;" method="get"><li title="回复数" style="border-left:1px #d6e0ef solid;"><span>9</span></li><li><span>1/1页</span></li><li><em><img src="./images_detail/first.gif"></em></li><li><b>1</b></li><li><em><img src="./images_detail/last.gif"></em></li></form></ul>  </div>
</div>

  <br><br><br><br>
<br><br><br>


<script type="text/javascript">
var maxpage = 1;
if(maxpage > 1) {
	document.onkeyup = function(e){
		e = e ? e : window.event;
		var tagname = false ? e.srcElement.tagName : e.target.tagName;
		if(tagname == 'INPUT' || tagname == 'TEXTAREA') return;
		actualCode = e.keyCode ? e.keyCode : e.charCode;
					}
}
</script>

							

<div style="clear:both; width:98%; max-width:1920px; min-width:760px; margin:24px auto 0px auto; padding:4px 0px 30px 0px; line-height:16px; text-align:center;">
  <a href="http://www.bccn.net/aboutus" target="_blank">关于我们</a> |
  <a href="http://www.bccn.net/adservice" target="_blank">广告合作</a> |
  <a href="https://www.bccn.net/" target="_blank">编程中国</a> |
  <a href="http://bbs.bccn.net/member.php?action=clearcookies&amp;formhash=d80ef7df">清除Cookies</a> |
      <a href="http://bbs.bccn.net/thread-493382-1-1.html#">TOP</a> |
  <a href="http://bbs.bccn.net/set_device.php?action=mobi">手机版</a>
  <br><br>
  <a href="https://www.bccn.net/" target="_blank"><b>编程中国</b></a> 版权所有，并保留所有权利。
  <div style="font:7pt verdana,sans-serif;">
		    			Powered by <a href="http://www.discuz.net/" target="_blank">Discuz</a>, Processed in 0.017876 second(s), 8 queries.<br>
		Copyright&#169;2004-2019, BCCN.NET, All Rights Reserved
  </div>
</div>
<div style="display:none;">
<script type="text/javascript">
var _url = window.location.href;
if(_url.indexOf("#pid")<0 && _url.indexOf("#lastpost")<0){
  //var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255590163'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D1255590163' type='text/javascript'%3E%3C/script%3E"));
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		//hm.src = "https://hm.baidu.com/hm.js?f8d418c6b1c41368e6178f76d1276e53";
		hm.src = "https://js.users.51.la/19820963.js";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
}
</script>
</div>
<div id="qb-sougou-search" style="display: none; opacity: 0;"><p>搜索</p><p class="last-btn">复制</p><iframe src="./images_detail/saved_resource(1).html"></iframe></div></body></html>