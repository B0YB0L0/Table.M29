<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ include file="includes.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A1tech: Manufacture</title>
<style>
#rotate-text {
	width: 30px;
	transform: rotate(270deg);
	font-size: 14pt;
	white-space: nowrap;
} 
</style>
</head>
<body>
	<div style="display: flex; padding-left: 15%">
		<table style="border: 1px solid;">
			<tr height="300px; ">
				<td style="border-right: 1px solid;">
					Maxsulot nomlari/ xarajatlar
				</td>
					<td valign="bottom" style="border-right: 1px solid;">O'lchov birligi</td>
					<td valign="bottom" style="border-right: 1px solid;">I/Ch soni </td>
						<c:forEach var="goods" items="${goodsList}" varStatus="loop">
				<td colspan="2" valign="bottom" style="border-right: 1px solid;">
						<div id='rotate-text'>${goods.name }</div>
					</td>
				</c:forEach>
					
					
				
			</tr>
			<tr >
				<td style="border-right: 1px solid;">
					&nbsp;
				</td>
					<td valign="bottom" style="border: 1px solid;">&nbsp;</td>
					<td valign="bottom" style="border: 1px solid;">&nbsp; </td>
				<c:forEach var="goods" items="${goodsList}" varStatus="loop">
					<td valign="bottom" style="border: 1px solid;">F.s&nbsp;</td>
					<td valign="bottom" style="border: 1px solid;">R.s&nbsp; </td>
				</c:forEach>
			</tr>
			<c:forEach var="productItem" items="${productItemList}"varStatus="loop">
			<tr>
		<td style="border: 1px solid;">
					<div >${productItem.title }</div> 
				</td>
				<td style="border: 1px solid;">
					<div >${productItem.unitType.unitType}</div> 
				</td> 
				<td style="border: 1px solid;">
					<div >${productItem.soni }</div> 
				</td>  
				<c:forEach var="goods" items="${goodsList}" varStatus="loop">
				<td style="border: 1px solid;">
					<c:forEach var="ps" items="${productItem.psMap}"varStatus="loop">
						<c:choose>
							<c:when test="${goods.goodsId==ps.key}">
								<c:out value="${ps.value}" /> 
							</c:when>
							<c:otherwise></c:otherwise> 
   						</c:choose> 
					</c:forEach>
				</td>
				<td style="border: 1px solid;">
					<c:forEach var="pos" items="${productItem.posMap}"varStatus="loop">
						<c:choose>
							<c:when test="${goods.goodsId==pos.key}">
								<c:out value="${pos.value}" /> 
							</c:when>
							<c:otherwise></c:otherwise> 
   						</c:choose> 
					</c:forEach>
				</td> 
				</c:forEach>
			</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>