<%@page pageEncoding="gb18030" %>
<%@page import="java.sql.*,java.io.*,com.guo.bbs.*,java.util.*" %>

<%!
private void tree(List<Article> articles, Connection conn, int id, int grade) {
	String sql = "select * from article where pid ="+id;
	Statement stmt = DB.createstmt(conn);
	ResultSet rs = DB.executeQuery(conn, stmt, sql);
	try{
		while(rs.next()){
			Article a = new Article();
			a.initFromRs(rs);
			a.setGrade(grade);
			articles.add(a);
			
			if(!a.isIsleaf()){
				tree(articles,conn,a.getId(),grade+1);
			}	
		}
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
	DB.close(rs);
	DB.close(stmt);
	}
	
}
%>

<%
List<Article> articles = new ArrayList<Article>();
Connection conn = DB.getConn();
tree(articles,conn,0,0);
DB.close(conn);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0034)http://bbs.bccn.net/forum-8-1.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">

  <title>JAVA论坛 - 编程论坛</title>
  <link rel="shortcut icon" href="http://bbs.bccn.net/favicon.ico" type="image/x-icon">
	<link rel="alternate" type="application/rss+xml" title="订阅『 JAVA论坛 』最新贴" href="http://bbs.bccn.net/rss.php?fid=8&amp;auth=0">
    	<link rel="stylesheet" type="text/css" href="./image/skin1_forum.php">
  
	<script src="./image/19820963.js.下载"></script><script type="text/javascript">
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

	<script src="./image/main.php" type="text/javascript"></script>
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
	  <div class="logo"><a href="https://bbs.bccn.net/"><img src="./image/logo.gif" alt="编程论坛" border="0"></a></div>
          <div class="quanzhandingbu"><div style="padding:5px 30px 0 0"><a href="https://www.luffycity.com/home/time-limit-welfare?=bccn" target="_blank"></a></div></div>
			    	</div>
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

	
	<div class="div1">
	  <table class="table1" cellspacing="0" cellpadding="0" border="0">
</table>
			</div>
<div id="showstr" style="display:none;"></div>

<div style="width:98%; max-width:1920px; min-width:760px; margin:7px auto 7px auto; height:25px; overflow:hidden;">
  <div style="float:left; padding-left:2px;">
    <a href="articleFlat.jsp">返回主题列表<!-- <img src="./images_detail/postnew1.gif"> --></a>
	<!--  <a href="https://bbs.bccn.net/post.php?action=newthread&amp;fid=8&amp;extra=page%3D1"><img src="./image/postnew1.gif"></a>
	  -->
	  </div>
</div>
<div style="text-align:center; text-indent:0;" class="div_top">
  <table width="100%;" cellspacing="0" cellpadding="0" border="0">
	<tbody><tr>
	  <td class="l_zt">状态</td>
	  <td style="text-indent:0px;" class="title">主 题<!--  （点 <img src="/skin/img/plus.gif" style="margin:0 0 -3px 0;"> 即可展开贴子列表）--></td>
	  	  <td style="text-indent:0px;" class="l_au">发 表</td>
	  <td style="text-indent:0px;" class="l_re">回复</td>
	  <td style="text-indent:0px;" class="l_re">人气</td>
	  <td class="l_last">最后更新</td>
	</tr>
  </tbody></table>
</div>
<script>
	function f_loadtree(tid){
		if($("followimg"+tid).src.indexOf('plus')>0){
			$('z_map').contentWindow.location.href = "zzz/forum_loadtree.php?tid="+tid+"";
			$("followimg"+tid).src = 'skin/img/nofollow.gif';
			$("followid"+tid).className = 'f_show';
			$("followid"+tid).innerHTML = '<div style="width:240px;margin-left:18px;border:1px solid black;background-color:lightyellow;padding:2px">正在读取关于本主题的跟贴，请稍侯……</div>';
		}else{
			$("followimg"+tid).src = 'skin/img/plus.gif';
			$("followid"+tid).className = 'f_hide';
			$('z_map').contentWindow.location.href = "skin/img/plus.gif";
		}
	}
</script>
  	<div class="div_l">
  	<%-- 
	  <table class="table_l" cellspacing="0" cellpadding="0" border="0">
		<tbody><tr>
		  <td class="l_zt">
						  <a href="http://bbs.bccn.net/thread-30911-1-1.html" target="_blank">
							  <img src="./image/folder_top1.gif">
			  </a>
		  </td>
		  <td class="title">
			<img align="absmiddle" style="cursor:pointer" src="./image/plus.gif" id="followimg30911" onclick="f_loadtree(&#39;30911&#39;)"><a href="http://bbs.bccn.net/thread-30911-1-1.html" title="发帖时间：2005-10-21 19:33
问题点数：0
最后回复：kaosaier">JAVA论坛历届版主名录</a>
															      		  </td>
		  		  <td class="l_au">
		  					<a href="http://bbs.bccn.net/space-uid-2.html">静夜思</a><br><span class="l_au_t">2005-10-21</span></td>
							<td class="l_re">1</td><td class="l_re">27082</td>
					  <td class="l_last">
	        	          <a href="http://bbs.bccn.net/space-username-kaosaier.html">kaosaier</a>
	        <br>
				            <span class="l_last_t"><a href="http://bbs.bccn.net/redirect.php?tid=30911&amp;goto=lastpost#lastpost">2017-01-01 00:40</a></span>
				      </td>
		</tr>
	  </tbody></table>
	  
	  
	</div>
	<div id="followid30911" class="f_hide"></div>
  	  <div style="border-bottom:1px #a9d46d solid; line-height:1px; font-size:1px;" class="div_l">&nbsp;</div>
		<div class="div_l">
	  <table class="table_l" cellspacing="0" cellpadding="0" border="0">
		<tbody><tr>
		  <td class="l_zt">
						  <a href="http://bbs.bccn.net/thread-493744-1-1.html" target="_blank">
							  <img src="./image/folder_common.gif">
			  </a>
		  </td>
		  <td class="title">
			<img align="absmiddle" src="./image/nofollow.gif"><a href="http://bbs.bccn.net/thread-493744-1-1.html" title="发帖时间：2019-03-23 16:09
问题点数：20
最后回复：Gband">b树的分裂思部分的代码谁会</a>
															                    		  </td>
		  		  <td class="l_au">
		  					<a href="http://bbs.bccn.net/space-uid-914842.html">Gband</a><br><span class="l_au_t">2019-03-23</span></td>
							<td class="l_re">0</td><td class="l_re">11</td>
					  <td class="l_last">
	        	          <a href="http://bbs.bccn.net/space-username-Gband.html">Gband</a>
	        <br>
				            <span class="l_last_t"><a href="http://bbs.bccn.net/redirect.php?tid=493744&amp;goto=lastpost#lastpost">1 小时前</a></span>
				      </td>
		</tr>
	  </tbody></table>
	  
	  
	</div>
	<div id="followid493744" class="f_hide"></div>
  	<div class="div_l">
	  <table class="table_l" cellspacing="0" cellpadding="0" border="0">
		<tbody><tr>
		  <td class="l_zt">
						  <a href="http://bbs.bccn.net/thread-493741-1-1.html" target="_blank">
							  <img src="./image/folder_common.gif">
			  </a>
		  </td>
		  <td class="title">
			<img align="absmiddle" src="./image/nofollow.gif"><a href="http://bbs.bccn.net/thread-493741-1-1.html" title="发帖时间：2019-03-23 14:35
问题点数：20
最后回复：fanpengyue">maven 构建web项目  无法启动</a>
													<img align="absmiddle" src="./image/common.gif" title="本帖含有附件">
									                    		  </td>
		  		  <td class="l_au">
		  					<a href="http://bbs.bccn.net/space-uid-954349.html">fanpengyue</a><br><span class="l_au_t">2019-03-23</span></td>
							<td class="l_re">0</td><td class="l_re">24</td>
					  <td class="l_last">
	        	          <a href="http://bbs.bccn.net/space-username-fanpengyue.html">fanpengyue</a>
	        <br>
				            <span class="l_last_t"><a href="http://bbs.bccn.net/redirect.php?tid=493741&amp;goto=lastpost#lastpost">2 小时前</a></span>
				      </td>
		</tr>
	  </tbody></table>
	</div>
	--%>
	
	<%
	for(Iterator<Article> it = articles.iterator();it.hasNext();){
		Article a = it.next();
		String preStr = "";
		for(int i = 0;i<a.getGrade();i++){
			preStr+="- - -";
		}
	%>
	
	<div id="followid493741" class="f_hide"></div>
  	<div class="div_l">
	  <table class="table_l" cellspacing="0" cellpadding="0" border="0">
		<tbody><tr>
	<!-- shanchutiezi -->	
		  <td class="l_zt">
				<a href="delete.jsp?id=<%=a.getId() %>&isLeaf=<%=a.isIsleaf()%>&pid=<%=a.getPid() %>" target="_blank">
							 DEL   <!--  <img src="./image/folder_common.gif" -->
			  </a>
		  </td>
		  
		  <td class="title">
			<img align="absmiddle" style="cursor:pointer" src="./image/plus.gif" id="followimg493732" onclick="f_loadtree(&#39;493732&#39;)"><a href="article_detail.jsp?id=<%=a.getId() %>" title="发帖时间：2019-03-22 20:54
问题点数：20
最后回复：疯狂的小a">  <%=preStr+a.getTitle() %>  </a>
													<img align="absmiddle" src="./image/common.gif" title="本帖含有附件">
									                    		  </td>
		  		  <td class="l_au">
		  					<a href="http://bbs.bccn.net/space-uid-938058.html">   guoguoguo  </a><br><span class="l_au_t">2019-03-22</span></td>
							<td class="l_re">10000</td><td class="l_re">0</td>
					  <td class="l_last">
	        	          <a href="http://bbs.bccn.net/space-username-%B7%E8%BF%F1%B5%C4%D0%A1a.html">  hahaha  </a>
	        <br>
				            <span class="l_last_t"><a href="http://bbs.bccn.net/redirect.php?tid=493732&amp;goto=lastpost#lastpost">  <%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(a.getPdate()) %>  </a></span>
				      </td>
		</tr>
	 <%
	 	}
	 %>
	 
	  </tbody></table>
	</div>
	<div id="followid492947" class="f_hide"></div>
  
<div style="width:98%; max-width:1920px; min-width:760px; height:43px; margin:10px auto 0px auto;">
	<ul class="pages"><form action="http://bbs.bccn.net/forumdisplay.php?fid=8&amp;" method="get"><li title="主题数" style="border-left:1px #d6e0ef solid;"><span>17272</span></li><li title="本页主题"><span>52</span></li><li><span>1/346页</span></li><li><em><img src="./image/first.gif"></em></li><li><b>1</b></li><li><a href="http://bbs.bccn.net/forum-8-2.html">2</a></li><li><a href="http://bbs.bccn.net/forum-8-3.html">3</a></li><li><a href="http://bbs.bccn.net/forum-8-4.html">4</a></li><li><a href="http://bbs.bccn.net/forum-8-5.html">5</a></li><li><a href="http://bbs.bccn.net/forum-8-6.html">6</a></li><li><a href="http://bbs.bccn.net/forum-8-7.html">7</a></li><li><a href="http://bbs.bccn.net/forum-8-8.html">8</a></li><li><a href="http://bbs.bccn.net/forum-8-9.html">9</a></li><li><a href="http://bbs.bccn.net/forum-8-10.html">10</a></li><li><a href="http://bbs.bccn.net/forum-8-11.html">11</a></li><li><a href="http://bbs.bccn.net/forum-8-12.html">12</a></li><li><a href="http://bbs.bccn.net/forum-8-13.html">13</a></li><li><a href="http://bbs.bccn.net/forum-8-14.html">14</a></li><li><a href="http://bbs.bccn.net/forum-8-15.html">15</a></li><li><a href="http://bbs.bccn.net/forum-8-11.html" title="下十页"><img src="./image/next.gif"></a></li><li><a href="http://bbs.bccn.net/forum-8-346.html" class="last" title="尾页"><img src="./image/last.gif"></a></li><li><input type="hidden" name="fid" value="8"><input type="text" name="page" size="1" class="pages_text"><input type="submit" value="GO" class="pages_submit"></li></form></ul></div>
<div class="div_l">
  <table style="text-align:center; padding-top:10px;" class="table_l" cellspacing="0" cellpadding="0" border="0">
	<tbody>
</tbody></table>
</div>



<script type="text/javascript">
var maxpage = 346;
if(maxpage > 1) {
	document.onkeyup = function(e){
		e = e ? e : window.event;
		var tagname = false ? e.srcElement.tagName : e.target.tagName;
		if(tagname == 'INPUT' || tagname == 'TEXTAREA') return;
		actualCode = e.keyCode ? e.keyCode : e.charCode;
				if(actualCode == 39) {
			window.location = 'forumdisplay.php?fid=8&page=2';
		}
					}
}
</script>				

<div style="clear:both; width:98%; max-width:1920px; min-width:760px; margin:24px auto 0px auto; padding:4px 0px 30px 0px; line-height:16px; text-align:center;">
  <a href="http://www.bccn.net/aboutus" target="_blank">关于我们</a> |
  <a href="http://www.bccn.net/adservice" target="_blank">广告合作</a> |
  <a href="https://www.bccn.net/" target="_blank">编程中国</a> |
  <a href="http://bbs.bccn.net/member.php?action=clearcookies&amp;formhash=d80ef7df">清除Cookies</a> |
      <a href="http://bbs.bccn.net/forum-8-1.html#">TOP</a> |
  <a href="http://bbs.bccn.net/set_device.php?action=mobi">手机版</a>
  <br><br>
  <a href="https://www.bccn.net/" target="_blank"><b>编程中国</b></a> 版权所有，并保留所有权利。
  <div style="font:7pt verdana,sans-serif;">
		    			Powered by <a href="http://www.discuz.net/" target="_blank">Discuz</a>, Processed in 0.014130 second(s), 6 queries.<br>
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
<div id="qb-sougou-search" style="display: none; opacity: 0;"><p>搜索</p><p class="last-btn">复制</p><iframe src="./image/saved_resource(1).html"></iframe></div></body></html>