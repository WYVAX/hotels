<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>增加房间</title>
	</head>
	<body>
		<%@include file="/info/adminInfo.jsp"%>
		<h1>
			<font color="red">增加房间</font>
		</h1>
		<s:form action="saveRoom">
			<s:textfield name="room.name" label="房间名称"></s:textfield>
			<s:textfield name="room.price" label="房间价格"></s:textfield>
			<s:textfield name="room.category" label="房间类型"></s:textfield>
			<tr>
				<td class="tdLabel">
					房间状态:
				</td>
				<td>
					<select name="room.status">
						<option value="0" selected="selected">
							空闲
						</option>
						<option value="1">
							已入住
						</option>
					</select>
				</td>
			</tr>
			<s:submit value="增 加"></s:submit>
		</s:form>
	</body>
</html>