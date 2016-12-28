<%@page import="com.jkxy.entity.Poets"%>
<%@page import="com.jkxy.common.PageParam"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示诗词信息</title>
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/Tangmvc/css/style.css" />
</head>
<body>
	<div class="content">
		<a href="main.html"> <img alt="图片"
				src="http://localhost:8080/Tangmvc/image/main_top_bg.png">
			</a>
		<div class="context">
			<h1>查询内容</h1>
			<center>
				<table>
					<tr style="background: #ccccca">
						<td style="width: 80px; text-align: center;">诗人名</td>
						<td style="width: 180px; text-align: center;">诗词名称</td>
						<!-- <td style="width: 500px; text-align: center;">诗词内容</td> -->
					</tr>
					<c:forEach items="${poets}" var="item">
						<c:forEach items="${item.poetries}" var="subItem">
							<tr style="background: #f0f8ff">
								<td style="text-align: center;">${item.name}</td>
								<td style="text-align: center;"><<${subItem.title }>><br /></td>
							</tr>
						</c:forEach>
					</c:forEach>
				</table>

				 <span>第</span>
						<%
							PageParam pageParam = (PageParam)request.getAttribute("pageParam");
							String query_context=request.getParameter("query_context");
							//query_context=new String(query_context.getBytes("iso8859-1"),"utf-8");
							int currPage = pageParam.getCurrPage();
							int totalPage = pageParam.getTotalPage();
						
						%>
						${pageParam.currPage}
						<span>页,共</span> 
						<span>${pageParam.totalPage}页</span> 
						<a href="query.html?query_context=<%=query_context%>&query_method=poet&page=${pageParam.hasFirst}">首页</a>
						<c:choose>
							<c:when test="${pageParam.currPage!=1}">
								<a href="query.html?query_context=<%=query_context%>&query_method=poet&page=${pageParam.hasPre}">上一页</a>
							</c:when>
							<c:otherwise>
								<a  disabled="disabled" href="query.html?query_context=<%=query_context%>&query_method=poet&page=${pageParam.hasNext}">下一页</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${pageParam.currPage!=pageParam.totalPage}">
								<a href="query.html?query_context=<%=query_context%>&query_method=poet&page=${pageParam.hasNext}">下一页</a>
							</c:when>
							<c:otherwise>
								<a   disabled="disabled" href="query.html?query_context=<%=query_context%>&query_method=poet&page=${pageParam.hasPre}">上一页</a>
							</c:otherwise>
						</c:choose>
						<a href="query.html?query_context=<%=query_context%>&query_method=poet&page=${pageParam.hasLast}">尾页</a>
			</center>
		</div>
	</div>
</body>
</html>