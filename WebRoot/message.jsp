<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/27
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" errorPage=""%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String message=java.net.URLDecoder.decode((String)request.getAttribute("message"));

%>
<html>
<head>
    <title>错误提示</title>
    <link href="CSS/style.css" rel="stylesheet">

</head>
<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center"><table width="419" height="226" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="center" background="<%=basePath %>images/error.jpg"><table width="388" height="194" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center"><img src="<%=basePath %>images/error_b.gif" width="31" height="31">&nbsp;&nbsp; <%=message%> <br>
                            <br>
                            <input name="Submit" type="submit" class="btn_grey" value="返回" onClick="history.back(-1)"></td>
                    </tr>
                </table></td>
            </tr>
        </table></td>
    </tr>
</table>
<center>
</center>
</body>
</html>
