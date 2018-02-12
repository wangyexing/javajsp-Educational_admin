<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/27
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>管理系统主界面</title>
</head>
<frameset rows="98,*,25" frameborder="no" border="0" framespacing="0">
    <frame src="<%=basePath %>top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" />
    <frame src="<%=basePath %>center.html" name="mainFrame" id="mainFrame" />
    <frame src="<%=basePath %>down.html" name="bottomFrame" scrolling="no" noresize="noresize" id="bottomFrame" />
</frameset>
<noframes>
<body>

</body>
</noframes>
</html>
