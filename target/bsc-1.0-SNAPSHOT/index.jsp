<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>bsc</title>
    <script type="text/javascript" charset="utf-8" src="/tool/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/tool/ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="/tool/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<h2><font size="8"></font> welcome to bsc_home</h2>
<a href="${pageContext.request.contextPath}/yangrui">杨芮</a><Br/>
<a href="${pageContext.request.contextPath}/huke">胡珂</a><Br/>
<a href="${pageContext.request.contextPath}/yuying">于颖</a><Br/>
<a href="${pageContext.request.contextPath}/zhumeijuan">朱美娟</a><br/>
<a href="${pageContext.request.contextPath}/wangxiya">王希雅</a><br/>
<h3>数据库查询表：</h3>
<a href="${pageContext.request.contextPath}/section">Section</a>
<a href="${pageContext.request.contextPath}/post">Post</a>
<a href="${pageContext.request.contextPath}/topic">Topic</a>
<a href="${pageContext.request.contextPath}/interaction">Interaction</a>
<a href="${pageContext.request.contextPath}/trade">Trade</a>
<div id="editor" style="height:360px">
    <script type="text/javascript" charset="utf-8">
        UE.getEditor('editor');      </script>
</div>
</body>
</html>