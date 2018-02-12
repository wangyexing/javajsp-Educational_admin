<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/27
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <title>ScenJSP基于SSH2教务选课成绩管理系统-首页</title>
    <link href="<%=basePath %>css/index.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
  <div id="container">
    <div id="banner"><img src="<%=basePath %>images/logo.jpg" /></div>
    <div id="globallink">
      <ul>
        <li><a href="<%=basePath %>index.jsp">首页</a></li>
        <li><a href="<%=basePath %>CollegeInfo/CollegeInfo_FrontQueryCollegeInfo.action" target="OfficeMain">学院信息</a></li>
        <li><a href="<%=basePath %>SpecialFieldInfo/SpecialFieldInfo_FrontQuerySpecialFieldInfo.action" target="OfficeMain">专业信息</a></li>
        <li><a href="<%=basePath %>ClassInfo/ClassInfo_FrontQueryClassInfo.action" target="OfficeMain">班级信息</a></li>
        <li><a href="<%=basePath %>Student/Student_FrontQueryStudent.action" target="OfficeMain">学生信息</a></li>
        <li><a href="<%=basePath %>Teacher/Teacher_FrontQueryTeacher.action" target="OfficeMain">教师信息</a></li>
        <li><a href="<%=basePath %>CourseInfo/CourseInfo_FrontQueryCourseInfo.action" target="OfficeMain">课程信息</a></li>
        <li><a href="<%=basePath %>StudentSelectCourseInfo/StudentSelectCourseInfo_FrontQueryStudentSelectCourseInfo.action" target="OfficeMain">选课信息</a></li>
        <li><a href="<%=basePath %>ScoreInfo/ScoreInfo_FrontQueryScoreInfo.action" target="OfficeMain">成绩信息</a></li>
        <li><a href="<%=basePath %>News/News_FrontQueryNews.action" target="OfficeMain">新闻信息</a></li>
      </ul>
      <br />
    </div>
    <div id="main">
      <iframe id="frame1" src="<%=basePath %>desk.jsp" name="OfficeMain" width="100%" height="100%" scrolling="yes" marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
      </iframe>
    </div>
    <div id="footer">
      <p>张世林设计 学号:201625515  &copy;版权所有 &nbsp;&nbsp;<a href="<%=basePath%>login/login_view.action"><font color=red>后台登陆</font></a></p>
    </div>
  </div>
  </body>
</html>
