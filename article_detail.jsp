<%@page pageEncoding="gb18030" %>
<%@page import="java.sql.*,java.io.*,com.guo.bbs.*,java.util.*" %>

<%
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
	
%>
	你寻找的帖子不存在！
<%
	return;
	}
%>
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
<!--<script src="/include/javascript/vvv.js" type="text/javascript"></script>-->
<!--
<div class="nav">
  <div style="float:left; padding-left:17px; width:80%; white-space:nowrap; overflow:hidden; text-overflow:ellipsis;">
    <a href="https://bbs.bccn.net/">编程论坛</a> → <a href="http://bbs.bccn.net/?gid=119">开发语言</a> → <a href="http://bbs.bccn.net/forum-8-1.html">『 JAVA论坛 』</a> → 做个网站  </div>
  <div style="float:right; padding-right:8px;"><a href="http://bbs.bccn.net/thread-493382-1-1.html###" onclick="pmwin(&#39;open&#39;)">我的收件箱(0)</a></div>
</div>
  -->
<!--<script language="JavaScript">
	$("usernameid").focus();
</script>-->

<div style="height:90px; width:970px; margin:0 auto 20px; padding-top:5px; display:none;">
  <!--<iframe border="0" marginwidth="0" src="/aaa/ad_to_guest.php" frameborder="0" width="970" scrolling="no" height="90" sandbox="allow-scripts"></iframe>-->
</div>

<!--<div style="width:1000px; margin:0 auto 20px; padding-top:5px;">
  <a href="http://t.unitytrain.cn/index.php?user=11" target="_blank">
    <img src="/aaa/manniu_1000x80.jpg" style="border:none;">
  </a>
</div>-->

<div style="width:98%; max-width:1920px; min-width:760px; height:28px; overflow:hidden; margin:10px auto 0px auto;">
  <div style="float:left;">
	<a href="article.jsp">返回主题列表<!-- <img src="./images_detail/postnew1.gif"> --></a>
	<!--  <a href="https://bbs.bccn.net/post.php?action=newthread&amp;fid=8&amp;extra=page%3D1"><img src="./images_detail/postnew1.gif"></a>
        -->
<!-- huifutiezi -->	<a href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootId() %>">回复本主题<!-- <img src="./images_detail/mreply1.gif"> --></a>  </div>
  <div style="float:right; margin-top:9px; white-space:nowrap;">共有 <b>406</b> 人关注过本帖</div>
</div>
<div class="div_top">
  <div style="float:left;"><b><span style="margin-right:12px;">  标题：</span><span><%=a.getTitle() %>  </span></b></div>  <!-- 帖子主题 -->
  <div style="float:right; padding-right:10px;">
          <a href="http://bbs.bccn.net/viewthread.php?tid=493382&amp;authorid=952963">只看楼主</a>
  	<a href="http://bbs.bccn.net/my.php?item=favorites&amp;tid=493382" style="margin-left:7px;">加入收藏</a>
	  </div>
</div>

<%--
  <a name="pid2696579"></a>
<div style="border-top:1px #a9d46d solid;" class="div1">
  <div class="userinfo"> </div>
</div>
<div class="div1"> </div>  <a name="pid2696586"></a>
<div style="border-top:1px #a9d46d solid;" class="div0"> </div>
<div class="div0"> </div>  <a name="pid2696587"></a>
<div style="border-top:1px #a9d46d solid;" class="div1">
  <div class="userinfo">
						<div class="name_hy">chenming0300</div>
				<div class="online_sex">
														<img src="./images_detail/user_male_offline.gif" border="0" title="帅哥哟，离线，有人找我吗？">
	</div>
					<div class="avatar"><a href="http://bbs.bccn.net/space-uid-952963.html" target="_blank"><img src="./images_detail/noavatar_middle.gif"></a></div>				<div class="umenu">
		  <img src="./images_detail/star_level1.gif" alt="Rank: 1"><br>
		  		  等　级：新手上路<br>
		  		  帖　子：5<br>
		  专家分：0<br>
		  注　册：2019-3-2<br>
		  		  		</div>
  </div>
  <div class="post">
    <div class="otherinfo">
	  <div class="floor"><a href="http://bbs.bccn.net/thread-493382-1-1.html###" title="复制本楼链接到剪贴板" onclick="setcopy(&#39;https://bbs.bccn.net/viewthread.php?tid=493382&amp;page=1#pid2696587&#39;, &#39;本楼链接已经复制到剪贴板&#39;)">第 <b>3</b> 楼</a>
	  </div>
	 	  <div style="float:right; margin-top:3px; white-space:nowrap;">
		&nbsp;&nbsp;<font color="#555555">得分:0</font>&nbsp;	  </div>
	 		<a href="http://bbs.bccn.net/thread-493382-1-1.html###" onclick="pmwin(&#39;open&#39;, &#39;952963&#39;)" title="发短消息"><img height="18" src="./images_detail/message.gif"></a>
		<a href="http://bbs.bccn.net/my.php?item=buddylist&amp;newbuddyid=952963&amp;buddysubmit=yes" target="_blank" title="加为好友"><img height="18" src="./images_detail/friend.gif"></a>
		<a href="http://bbs.bccn.net/space-uid-952963.html" target="_blank" title="详细资料"><img height="18" src="./images_detail/profile.gif"></a>
	  <a href="https://blog.bccn.net/chenming0300" target="_blank" title="chenming0300的博客"><img height="18" src="./images_detail/boke.gif"></a>
	</div>
	<div class="content">
				
					<div style="font-weight:bold; margin-bottom:8px;">回复 2楼 林月儿</div>
											谢谢<br>
													<div id="post_rate_div_2696587"></div>
					
	</div>
  </div>
</div>


<div class="div1">
  <div class="userinfo u_b">
			<img align="absmiddle" src="./images_detail/ip.gif" title="发帖时间">
	    <span style="cursor:default;" title="2019-03-02 21:32:48">2019-03-02 21:32</span>
  </div>
  <div class="p_b">
			<a href="https://bbs.bccn.net/post.php?action=reply&amp;fid=8&amp;tid=493382&amp;repquote=2696587&amp;extra=page%3D1&amp;page=1"><img src="./images_detail/reply.gif"></a>
				<a href="https://bbs.bccn.net/post.php?action=reply&amp;fid=8&amp;tid=493382&amp;reply=2696587&amp;floor=3&amp;extra=page%3D1&amp;page=1"><img src="./images_detail/reply_a.gif"></a>
		
	  <div style="float:right; text-align:left; margin:-19px 100px 0px 0px; _margin-right:50px;">
		<div id="t_m_2696587" class="menu_popup_t" onmouseover="ShowMenu(&#39;t_m_2696587&#39;)" onmouseout="HideMenu(&#39;t_m_2696587&#39;)">
							<a href="http://bbs.bccn.net/misc.php?action=report&amp;fid=8&amp;tid=493382&amp;pid=2696587&amp;page=1">举报帖子</a><br>
										<a href="http://bbs.bccn.net/magic.php?action=user&amp;pid=2696587" target="_blank">使用道具</a><br>
   		</div>
	  </div>
		<img style="cursor:pointer;" src="./images_detail/topicmanage.gif" onmouseover="ShowMenu(&#39;t_m_2696587&#39;)" onmouseout="HideMenu(&#39;t_m_2696587&#39;)">


	<a href="http://bbs.bccn.net/thread-493382-1-1.html#"><img src="./images_detail/p_up.gif"></a></div>
</div> 
--%>

<a name="pid2696719"></a>
<div style="border-top:1px #a9d46d solid;" class="div0">
  <div class="userinfo">
						<div class="name_bz">疯狂的小a</div>
				<div class="online_sex">
														<img src="./images_detail/user_male_online.gif" border="0" title="帅哥哟，在线，有人找我吗？">
											</div>
					<div class="avatar"><a href="http://bbs.bccn.net/space-uid-924464.html" target="_blank"><img src="./images_detail/64_avatar_middle.jpg"></a></div>				<div class="umenu">
		  <img src="./images_detail/star_level3.gif" alt="Rank: 20"><img src="./images_detail/star_level3.gif" alt="Rank: 20"><img src="./images_detail/star_level3.gif" alt="Rank: 20"><img src="./images_detail/star_level3.gif" alt="Rank: 20"><img src="./images_detail/star_level3.gif" alt="Rank: 20"><br>
		  		  等　级：版主<br>
		  			威　望：<font color="red"><b>32</b></font><br>
		  		  帖　子：409<br>
		  专家分：1797<br>
		  注　册：2018-2-6<br>
		  		  		</div>
	  </div>
  <div class="post">
    <div class="otherinfo">
	  <div class="floor"><a href="http://bbs.bccn.net/thread-493382-1-1.html###" title="复制本楼链接到剪贴板" onclick="setcopy(&#39;https://bbs.bccn.net/viewthread.php?tid=493382&amp;page=1#pid2696719&#39;, &#39;本楼链接已经复制到剪贴板&#39;)">第 <b>4</b> 楼</a>
		</div>
	 	  <div style="float:right; margin-top:3px; white-space:nowrap;">
		&nbsp;&nbsp;<font color="#555555">得分:0</font>&nbsp;	  </div>
	 		<a href="http://bbs.bccn.net/thread-493382-1-1.html###" onclick="pmwin(&#39;open&#39;, &#39;924464&#39;)" title="发短消息"><img height="18" src="./images_detail/message.gif"></a>
		<a href="http://bbs.bccn.net/my.php?item=buddylist&amp;newbuddyid=924464&amp;buddysubmit=yes" target="_blank" title="加为好友"><img height="18" src="./images_detail/friend.gif"></a>
		<a href="http://bbs.bccn.net/space-uid-924464.html" target="_blank" title="详细资料"><img height="18" src="./images_detail/profile.gif"></a>
	  <a href="https://blog.bccn.net/%E7%96%AF%E7%8B%82%E7%9A%84%E5%B0%8Fa" target="_blank" title="疯狂的小a的博客"><img height="18" src="./images_detail/boke.gif"></a>
	</div>
	<div class="content">
				
	<!-- neirong -->										<%=a.getCont() %>   <!-- <img src="./images_detail/em05.gif" smilieid="88" border="0" alt="">我觉得我可以<img src="./images_detail/em05.gif" smilieid="88" border="0" alt="">		-->											<div id="post_rate_div_2696719"></div>
					
	</div>

	
			<div class="sign">
		  <img src="./images_detail/sigline.gif"><br>
		  假如人生没有梦想,和咸鱼有什么区别!		</div>
	      </div>
</div>
<div class="div0">
  <div class="userinfo u_b">
			<img align="absmiddle" src="./images_detail/ip.gif" title="发帖时间">
	    <span style="cursor:default;" title="2019-03-04 20:38:17">2019-03-04 20:38</span>
  </div>
  <div class="p_b">
			<a href="https://bbs.bccn.net/post.php?action=reply&amp;fid=8&amp;tid=493382&amp;repquote=2696719&amp;extra=page%3D1&amp;page=1"><img src="./images_detail/reply.gif"></a>
				<a href="reply.jsp?id=<%=a.getId()%>&rootId=<%=a.getRootId() %>"><img src="./images_detail/reply_a.gif"></a>
		
	  <div style="float:right; text-align:left; margin:-19px 100px 0px 0px; _margin-right:50px;">
		<div id="t_m_2696719" class="menu_popup_t" onmouseover="ShowMenu(&#39;t_m_2696719&#39;)" onmouseout="HideMenu(&#39;t_m_2696719&#39;)">
							<a href="http://bbs.bccn.net/misc.php?action=report&amp;fid=8&amp;tid=493382&amp;pid=2696719&amp;page=1">举报帖子</a><br>
										<a href="http://bbs.bccn.net/magic.php?action=user&amp;pid=2696719" target="_blank">使用道具</a><br>
												      		</div>
	  </div>
		<img style="cursor:pointer;" src="./images_detail/topicmanage.gif" onmouseover="ShowMenu(&#39;t_m_2696719&#39;)" onmouseout="HideMenu(&#39;t_m_2696719&#39;)">


	<a href="http://bbs.bccn.net/thread-493382-1-1.html#"><img src="./images_detail/p_up.gif"></a></div>
</div>  <a name="pid2696781"></a>
<div style="border-top:1px #a9d46d solid;" class="div1"> </div>
<div class="div1"> </div>  <a name="pid2696802"></a>
<div style="border-top:1px #a9d46d solid;" class="div0"> </div>
<div class="div0"> </div>  <a name="pid2696819"></a>

<div class="div1"> </div>  <a name="pid2696915"></a>
<div style="border-top:1px #a9d46d solid;" class="div0"> </div>
<div class="div0"> </div> <a name="lastpost"></a> <a name="pid2697940"></a>
<div style="border-top:1px #a9d46d solid;" class="div1"> </div>
<div class="div1"> </div><div style="width:98%; max-width:1920px; min-width:760px; height:38px; overflow:hidden; margin:2px auto 0px auto;">
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