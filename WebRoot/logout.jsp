<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/27
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" errorPage=""%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    session.removeAttribute("username");	//移除保存在session中的username属性
    session.invalidate();
    out.println("<script>top.location='" + basePath +"login/login_view.action';</script>");
%>