<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/27
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>信息管理系统 - 桌面</title>
    <link href="<%=basePath %>css/desk.css" rel="stylesheet" type="text/css">
</head>
<body>
<table align=center width="90%" border="0" cellspacing="0" cellpadding="0" height="100%">
    <tr>
        <td valign="top"><font color="#336666">
            <font color='red'><br/><br/>

                欢迎使用本系统

                系统开发环境: IntelliJ IDEA 2017.1.2 + Tomcat8.5+ mysql5.7 <br/><br/>
                系统采用技术: struts 2 + Spring + Hibernate (SSH2)   <br/><br/>

            </font><font color=blue>本系统开发时间: 2017年</font>
        </td>
    </tr>
</table>
</body>
</html>
