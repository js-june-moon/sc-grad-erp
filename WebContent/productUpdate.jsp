<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.db.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList" %>
<%@page import ="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<style>
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
</style>
<script>
	function idDelete(delID){
	    //alert(delID);
	    location.href = "delete.jsp?delid=" + delID + "&page=product";   //get방식으로 삭제할아이디를 넘김
	}
    function idUpdate(upID){
    	location.href="productUpdate.jsp?upid=" + upID;
    }
</script>
<%
if(session.getAttribute("loginUser")==null){ %>
<script>
    alert("로그인 하세요.");
    location.href="index.jsp";
</script>
<%
}
%>
<%
	SemiERPDAO s = new SemiERPDAO();
	s.dbConn();
	request.setCharacterEncoding("utf-8");
	ArrayList<ProductDTO> list=s.ProductList();
	ProductDTO update = new ProductDTO();
	for(ProductDTO dto:list){
		if(dto.getPRODUCT_ID().equals(request.getParameter("upid"))){
			update=dto;
			break;
		}
	}
	if(request.getParameter("productId")!=null && request.getParameter("productName")!=null){
		String id = request.getParameter("productId");
		String name = request.getParameter("productName");
		s.UpdateProductData(id, name);
		%>
		<script>
		location.href = "product.jsp";   
		</script>
		<%
	}
	else{
%>
<!-- 
<script>
	alert('빈 값이 있습니다.');
</script>
-->
<%	
	}
%>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Enterprise Resource Planning System</title>
	<!-- 부트스트랩 CSS 추가하기 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- 커스텀 CSS 추가하기 -->
	<link rel="stylesheet" href="./css/custom.css">
	<link rel="stylesheet" href="./css/footable.bootstrap.css">
	<link rel="stylesheet" href="./css/footable.bootstrap.min.css">
	<!-- 
     <link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
	-->
	
	<!-- 테이블 검색 스크립트 --> 
	<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
	    <script>
        jQuery(function($){
            //$("#foo-table").DataTable();
            $("#foo-table").DataTable({
            	// 표시 건수기능 숨기기
            	lengthChange: false,
            	// 검색 기능 숨기기
            	searching: false,
            	// 정렬 기능 숨기기
            	//ordering: false,
            	// 정보 표시 숨기기
            	info: false,
            	// 페이징 기능 숨기기
            	paging: false
            });
        });
        jQuery(function($){
        	$('.foo-table').footable();
        });
    </script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="./js/footable.min.js"></script> 
	<script src="./js/footable.js"></script> 

</head>
<body>
<div class="container-fluid mt-2 mb-5">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-bottom" style="font-size: 17px;">
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="navbar-nav">
						<li class="nav-item mt-2 mr-5 text-secondary">
							<label>ERP 메뉴</label>
						</li>
						<li class="nav-item mt-2 mr-2">
							<label>|</label>
						</li>
						<li class="nav-item dropup mr-2">
							 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">자재구매</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								 <a class="nav-link active" href="materials.jsp">자재관리</a>
								 <a class="nav-link active" href="purchase.jsp">구매관리</a>
							</div>
						</li>
						<li class="nav-item mt-2 mr-2">
							<label>|</label>
						</li>
						<li class="nav-item dropup mr-2">
							 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">제품생산</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="nav-link active" href="product.jsp">제품관리</a>
								<a class="nav-link active" href="produce_list.jsp">생산목록</a>
								<a class="nav-link active" href="produce.jsp">생산관리</a>
							</div>
						</li>
						<li class="nav-item mt-2 mr-2" style="color:#111111">
							<label>|</label>
						</li>
						<li class="nav-item dropup mr-2">
							 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">판매관리</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="nav-link active" href="sale.jsp">판매관리</a>
							</div>
						</li>
						<li class="nav-item mt-2 mr-2" style="color:#111111">
							<label>|</label>
						</li>
						<li class="nav-item dropup mr-2">
							 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">회사관리</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
								<a class="nav-link active" href="client.jsp">거래처관리</a>
								<a class="nav-link active" href="employee.jsp">사원관리</a>
							</div>
						</li>
						<li class="nav-item mt-2 mr-2" style="color:#111111">
							<label>|</label>
						</li>
					</ul>
					<ul class="navbar-nav ml-md-auto">
						<li class="nav-item dropup">
							 <a class="nav-link dropdown-toggle text-primary" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">전체 메뉴</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
								<a class="nav-link active" href="materials.jsp">자재관리</a>
								<a class="nav-link active" href="purchase.jsp">구매관리</a>
								<div class="dropdown-divider"></div>
								<a class="nav-link active" href="product.jsp">제품관리</a>		
								<a class="nav-link active" href="produce_list.jsp">생산목록</a>	
								<a class="nav-link active" href="produce.jsp">생산관리</a>
								<div class="dropdown-divider"></div>
								<a class="nav-link active" href="sale.jsp">판매관리</a>
								<div class="dropdown-divider"></div>
								<a class="nav-link active" href="client.jsp">거래처관리</a>
								<a class="nav-link active" href="employee.jsp">사원관리</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>
			<div class="row" id="row1">
				<div class="col-md-12">
					<ul class="nav">
						<li class="nav-item">
							<a class="nav-link active" href="main.jsp"><h3>ERP System</h3></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="profile.jsp">프로필</a>
						</li>
						<li class="nav-item dropdown ml-md-auto">
							 <a class="nav-link dropdown-toggle" href="http://example.com" id="hostinform" data-toggle="dropdown">회원정보</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="hostinform">
								 <a class="dropdown-item" href="index.jsp">로그인</a>
								 <a class="dropdown-item" href="logoutAction.jsp">로그아웃</a>
								<div class="dropdown-divider">
								</div> <a class="dropdown-item" href="profile.jsp">프로필</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="row mb-1" id="row2">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light bg-white" style="font-size: 17px;">
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
						<ul class="navbar-nav">
							<li class="nav-item mt-2 mr-5 text-secondary">
								<label>ERP 메뉴</label>
							</li>
							<li class="nav-item mt-2 mr-3">
								<label>|</label>
							</li>
							<li class="nav-item dropdown mr-2">
								 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">자재구매</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									 <a class="nav-link active" href="materials.jsp">자재관리</a>
									 <a class="nav-link active" href="purchase.jsp">구매관리</a>
								</div>
							</li>
							<li class="nav-item mt-2 mr-3">
								<label>|</label>
							</li>
							<li class="nav-item dropdown mr-3">
								 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">제품생산</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									<a class="nav-link active" href="product.jsp">제품관리</a>
									<a class="nav-link active" href="produce_list.jsp">생산목록</a>
									<a class="nav-link active" href="produce.jsp">생산관리</a>
								</div>
							</li>
							<li class="nav-item mt-2 mr-3" style="color:#111111">
								<label>|</label>
							</li>
							<li class="nav-item dropdown mr-3">
								 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">판매관리</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									<a class="nav-link active" href="sale.jsp">판매관리</a>
								</div>
							</li>
							<li class="nav-item mt-2 mr-3" style="color:#111111">
								<label>|</label>
							</li>
							<li class="nav-item dropdown mr-3">
								 <a class="nav-link dropdown-toggle text-dark" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">회사관리</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									<a class="nav-link active" href="client.jsp">거래처관리</a>
									<a class="nav-link active" href="employee.jsp">사원관리</a>
								</div>
							</li>
							<li class="nav-item mt-2 mr-3" style="color:#111111">
								<label>|</label>
							</li>
						</ul>
						<ul class="navbar-nav ml-md-auto">
							<li class="nav-item dropdown">
								 <a class="nav-link dropdown-toggle text-primary" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">전체 메뉴</a>
								<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
									<a class="nav-link active" href="materials.jsp">자재관리</a>
									<a class="nav-link active" href="purchase.jsp">구매관리</a>
									<div class="dropdown-divider"></div>
									<a class="nav-link active" href="product.jsp">제품관리</a>		
									<a class="nav-link active" href="produce_list.jsp">생산목록</a>	
									<a class="nav-link active" href="produce.jsp">생산관리</a>
									<div class="dropdown-divider"></div>
									<a class="nav-link active" href="sale.jsp">판매관리</a>
									<div class="dropdown-divider"></div>
									<a class="nav-link active" href="client.jsp">거래처관리</a>
									<a class="nav-link active" href="employee.jsp">사원관리</a>
								</div>
							</li>
						</ul>
					</div>
				</nav>
			</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="row mt-4">
		<!-- 제품관리 폼 시작 -->
		<div class="col-md-2 mt-6" style="font-size: 13px;">
			<form method='post'>
			<br>
				<h2>제품 관리</h2>
				<hr>
			  	  <div class="form-row">
				  	  <div class="form-group col-sm-8">
				    	<label>제품코드</label>
				    	<input type="number" min="0" name="productId" class="form-control form-control-sm" id="productId" placeholder="제품ID" value=<%=update.getPRODUCT_ID() %> readonly>
				    </div>
				    <div class="form-group col-sm-4">
				    	<br>
				    	<div class="checkbox">
				    		<label>
				      		<input type="checkbox" id="autoIncrease">자동 생성
				    		</label>
				  	  	</div>
				  	</div>
				  </div>
				  
				  <div class="form-row">
				    <label>제품명</label>
				   	<input type="text" name="productName" class="form-control form-control-sm" id="productName" placeholder="제품명" value=<%=update.getPRODUCT_NAME() %>>
				  </div>

				  <hr>
				  
				  <div class="form-row">
				  	<div class="form-group col-sm-9"></div>
				  	<div class="form-group col-sm-3">
				  		<button type="submit" class="btn btn-primary btn-sm">제품 수정</button>
				  	</div>
				  </div>
			</form>
		</div>
		<!-- 제품관리 폼 끝 -->
		<div class="col-md-10">
			<!-- 검색옵션 -->
			<form action='productsearch.jsp'>
			<h3>검색</h3>
			<div class="form-row">
				<div class="form-group col-sm-6">
					<label>제품코드</label>
					<input type="number" min="0" name="sId" class="form-control form-control-sm" id="sId" placeholder="제품ID">
				</div>
				<div class="form-group col-sm-6">
					<label>제품명</label>
					<input type="text" name="sName" class="form-control form-control-sm" id="sName" placeholder="제품명">
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-sm">검색</button>
			</div>
			
			<hr>
			</form>
			<!-- 검색옵션끝 -->
			<!-- 데이터 열람테이블 -->
			<table id="foo-table" class="table table-hover" style="width:1200px; font-size:13px;">
			  <thead>
			    <tr align="center">
			      <th scope="col">No.<br></th>
			      <th scope="col">제품ID<br></th>
			      <th scope="col">제품명<br></th>
			      <th scope="col">생산단가<br></th>
			      <th scope="col">수량<br></th>
			      <th scope="col"> <br></th>
			      <th scope="col"> <br></th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    
			 <%
			 DecimalFormat fomatter=new DecimalFormat("###,###");
			 int i=1;
			 ArrayList<ProductionListDTO> plist=s.ProductionListList();
			 ArrayList<ProductionManagementDTO> mlist=s.ProductionManagementList();
			 ArrayList<SaleDTO> slist=s.SaleList();
			 int total=0;
			 for(ProductDTO dto:list){
			 %>
			    <tr align="center">
			      <td><%=i++ %></td>
			      <td><%=dto.getPRODUCT_ID() %></td>
			      <td><%=dto.getPRODUCT_NAME() %></td>
			      <%
			      for(ProductionListDTO pl:plist){
			    	  if(dto.getPRODUCT_ID().equals(Integer.toString(pl.getP_AMOUNT()))){
			    		  total+=pl.getP_PRICE();
			    	  }
			      }
			      %>
			      
			      <td><%=fomatter.format(total) %></td>
			      <%total=0; %><%
			      for(ProductionManagementDTO pm: mlist){
			    	  if(pm.getPRODUCTION_CODE().contains(dto.getPRODUCT_NAME())){
			    		  total+=pm.getP_AMOUNT();
			    	  }
			      }
			      %><%
			      for(SaleDTO sl: slist){
			    	  if(sl.getPRODUCT_ID().contains(dto.getPRODUCT_NAME())){
			    		  total-=sl.getS_AMOUNT();
			    	  }
			      }
			      %>
			      <td><%=total %></td>
			      <%total=0; %>
			      <td><button class="btn btn-default btn-sm" name="button" onclick="idDelete('<%=dto.getPRODUCT_ID()%>')">삭제</button></td>
			      <td><button class="btn btn-default btn-sm" name="button" onclick="idUpdate('<%=dto.getPRODUCT_ID()%>')">수정</button></td>
			    </tr>
			 <% }
			 %>
			  </tbody>
			</table> 
			<!-- 데이터 열람테이블 끝 -->
		</div>
	</div>
</div>
	<!-- 
	<footer class="bg-dark mt-4 p-5 text-center" style="color: #FFFFFF;">
		Copyright &copy; 세미콜론 All Rights Reserved.
	</footer>
	 -->
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스크립트 추가하기 -->
	<script src="./js/popper.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>