<%@page pageEncoding="gb18030" %>
<%@page import="java.sql.*,java.io.*,com.guo.bbs.*,java.util.*" %>

<%@ include file = "_SessionCheck.jsp" %>


<%!

private void delete(Connection conn, int id,boolean isLeaf) {
	 //delete all the children
	 //delelte(conn,childs)
	if(!isLeaf){
		String sql = "select * from article where pid ="+id;
		Statement stmt = DB.createstmt(conn);
		ResultSet rs = DB.executeQuery(conn, stmt, sql);
		try{
			while(rs.next()){
				delete(conn,rs.getInt("id"),rs.getInt("isLeaf")==0);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
		DB.close(rs);
		DB.close(stmt);
		}
	}
	
	//delete self
	DB.executeUpdate(conn,"delete from article where id = "+ id);
}	

%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	boolean isLeaf =Boolean.parseBoolean(request.getParameter("isLeaf"));
	int pid = Integer.parseInt(request.getParameter("pid"));
    Connection conn = null;
 	boolean autoCommit = true;
 	Statement stmt = null;
 	ResultSet rs = null;
try{
	//这里有一点问题，引用值有可能是空值
	
	conn = DB.getConn();
	autoCommit = conn.getAutoCommit();
	conn.setAutoCommit(false);
	delete(conn,id,isLeaf);
	
	stmt = DB.createstmt(conn);
	 rs = DB.executeQuery(stmt, "select count(*) from article where pid = "+pid);
	rs.next();
	int count = rs.getInt(1);
	
	if(count <= 0){
		DB.executeUpdate(conn, "update article set isleaf = 0 where id = "+ pid);
	}
	conn.commit();
}finally{
	conn.setAutoCommit(autoCommit);
	DB.close(rs);
	DB.close(stmt);
	DB.close(conn);
}
//response.sendRedirect("article.jsp");
%>

congratulations!

<span id="time" style="background:blue">5</span>秒钟后自动跳转，如果不跳转，请点击下面链接

<script language="JavaScript1.2" type="text/javascript">
<!--
//  Place this in the 'head' section of your page.  

function delayURL(url) {
	var delay = document.getElementById("time").innerHTML;
	if(delay>0){
		delay--;
		document.getElementById("time").innerHTML = delay;
	}else{
		window.top.location.href = url ;
	}
	setTimeout("delayURL('" + url + "')", 1000);
   
}

//-->

</script>

<a href = "article.jsp">主题列表</a>
<script type="text/javascript">
delayURL("article.jsp");
</script>