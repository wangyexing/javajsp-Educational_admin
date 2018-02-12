<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/4/27
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>
<%@ page import="com.scen.entity.News" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    News news = (News)request.getAttribute("news");

    String username=(String)session.getAttribute("username");
    if(username==null){
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    }
%>
<html>
<head>
    <title>修改新闻信息</title>
    <STYLE type=text/css>
        BODY {
            MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
        }
        .STYLE1 {color: #ECE9D8}
        .label {font-style:italic; }
        .errorLabel {font-style:italic;  color:red; }
        .errorMessage {font-weight:bold; color:red; }
    </STYLE>
    <script src="<%=basePath %>calendar.js"></script>
    <script language="javascript">
        /*验证表单*/
        function checkForm() {
            var newsTitle = document.getElementById("news.newsTitle").value;
            if(newsTitle=="") {
                alert('请输入新闻标题!');
                return false;
            }
            var newsContent = document.getElementById("news.newsContent").value;
            if(newsContent=="") {
                alert('请输入新闻内容!');
                return false;
            }
            return true;
        }
    </script>
</head>
<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />
<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
    <TBODY>
    <TR>
        <TD align="left" vAlign=top ><s:form action="News/News_ModifyNews.action" method="post" onsubmit="return checkForm();" enctype="multipart/form-data" name="form1">
            <table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">
                <tr>
                    <td width=30%>记录编号:</td>
                    <td width=70%><input id="news.newsId" name="news.newsId" type="text" value="<%=news.getNewsId() %>" readOnly /></td>
                </tr>

                <tr>
                    <td width=30%>新闻标题:</td>
                    <td width=70%><input id="news.newsTitle" name="news.newsTitle" type="text" size="50" value='<%=news.getNewsTitle() %>'/></td>
                </tr>

                <tr>
                    <td width=30%>新闻内容:</td>
                    <td width=70%><textarea id="news.newsContent" name="news.newsContent" rows="6" cols="80"><%=news.getNewsContent() %></textarea></td>
                </tr>

                <tr>
                    <td width=30%>发布日期:</td>
                    <td width=70%><input type="text" readonly  id="news.newsDate"  name="news.newsDate" onclick="setDay(this);" value='<%=news.getNewsDate() %>'/></td>
                </tr>

                <tr>
                    <td width=30%>新闻图片:</td>
                    <td width=70%><img src="<%=basePath %><%=news.getNewsPhoto() %>" width="200px" border="0px"/><br/>
                        <input type="hidden" name="news.newsPhoto" value="<%=news.getNewsPhoto() %>" />
                        <input id="newsPhotoFile" name="newsPhotoFile" type="file" size="50" /></td>
                </tr>
                <tr bgcolor='#FFFFFF'>
                    <td colspan="4" align="center">
                        <input type='submit' name='button' value='保存' >
                        &nbsp;&nbsp;
                        <input type="reset" value='重写' />
                    </td>
                </tr>

            </table>
        </s:form>
        </TD></TR>
    </TBODY>


</body>
</html>