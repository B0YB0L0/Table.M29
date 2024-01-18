<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=utf-8"%>
<%@ include file="includes.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A1tech: Manufacture</title>

<link rel="shortcut icon" href="img/icon.png" />
<link href="<c:url value="css/bootstrap.min.css"/>" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="css/font-awesome.min.css"/>" rel="stylesheet"
	type="text/css" />
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
<link href="plugins/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<link href="css/skins/_all-skins.min.css" rel="stylesheet"
	type="text/css" />
<link href="<c:url value="css/helper.css"/>" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="plugins/datatables/jquery.dataTables.js"
	type="text/javascript"></script>
<script src="plugins/datatables/dataTables.bootstrap.js"
	type="text/javascript"></script>
<script src="plugins/slimScroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>
<script src='plugins/fastclick/fastclick.min.js'></script>
<script src="js/app.min.js" type="text/javascript"></script>
<script src="js/demo.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<style>
#rotate-text {
	width: 30px;
	transform: rotate(270deg);
	font-size: 14pt;
	white-space: nowrap;
} 
td{

text-align:center;
padding:2px;

}
</style>
</head>
<body>

<div class="col-md-12"><%@ include file="header.jsp"%></div>
	<div style="display: flex; padding:5% 0 0 16%;">
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
								<c:out value="${ps.value}"/> 
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