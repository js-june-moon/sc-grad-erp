<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.db.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import ="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
	SemiERPDAO s = new SemiERPDAO();
	s.dbConn();
	request.setCharacterEncoding("utf-8");
	ArrayList<ProductionListDTO> list=s.ProductionListList();
	ArrayList<ProductDTO> p=s.ProductList(); 
	String productid=null;
	for(ProductDTO dto: p){
		if(dto.getPRODUCT_NAME().equals(request.getParameter("productlist"))){
			productid=dto.getPRODUCT_ID();
		}
	}
	ArrayList<MaterialsDTO> m=s.MaterialsList(); 
	AutoGenerator ag = new AutoGenerator();
	String pid = ag.autoIncreaseProductionListNo(list);
	if(!request.getParameter("amount").equals("")){
		String product = request.getParameter("productlist");
		String material = request.getParameter("materiallist");
		int amount = Integer.parseInt(request.getParameter("amount"));
		int price=0;
		for(MaterialsDTO dto: m){
			if(dto.getMATERIALS_NAME().equals(material)){
				price=dto.getAMOUNT();
			}
		}
		s.InsertProductionListData(pid, product, Integer.parseInt(productid), material, amount, price*amount);
		%>
		<script>
		location.href = "produce_list.jsp";   
		</script>
		<%

	}
	else{
%>
<script>
	alert('빈 값이 있습니다.');
	location.href = history.back();   
</script>
<%	
	}
%>
</body>
</html>