
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemorderDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemorderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Sparks_To_Idea.Project_Code.dao.ItemDao"%>
<%@page import="Sparks_To_Idea.Project_Code.bean.ItemBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Order</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
		<link rel="shortcut icon" href="images/favicon.ico"/>
		<title>Cart | Storage Space Tracker</title>
		
		<link rel='stylesheet' href='css1/bootstrap.min.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='css1/commerce.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='css1/prettyPhoto.css' type='text/css' media='all' />
		<link rel='stylesheet' href='css1/owl.carousel.css' type='text/css' media='all' />
		<link rel='stylesheet' href='css1/owl.theme.css' type='text/css' media='all' />
		<link rel='stylesheet' href='css1/font-awesome.min.css' type='text/css' media='all' />
		<link rel='stylesheet' href='css1/simple-line-icons.css' type='text/css' media='all'/>
		<link href='http://fonts.googleapis.com/css?family=Raleway:100,300,400,500,600,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<link href="http://fonts.googleapis.com/css?family=Montserrat:700,400" rel="stylesheet" type="text/css">
		<link rel='stylesheet' href='css1/style.css' type='text/css' media='all'/>
		<link rel='stylesheet' href='css1/custom.css' type='text/css' media='all'/>
		<link rel="stylesheet" href='css1/magnific-popup.css' type='text/css' media='all' />
		<link rel="stylesheet" href='css1/preloader.css' type='text/css' media='all' />
		<link rel="stylesheet" href='css1/style-selector.css' type='text/css' media='all' />
		<link id="style-main-color" rel="stylesheet" href="css1/colors/default.css">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<script type="text/javascript">

window.addEventListener( "pageshow", function ( event ) {
	  var historyTraversal = event.persisted || 
	                         ( typeof window.performance != "undefined" && 
	                              window.performance.navigation.type === 2 );
	  if ( historyTraversal ) {
	    // Handle page restore.
	    window.location.reload();
	  }
	});
	

</script>
<script type="text/javascript" src="./js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">

function add(ids,oId,iId,status,a,b,idt){
	var id=ids;
	var o=oId;
	var i=iId;
	var stat=status;
	var price=a;
	var qty=b;
	var id2=idt;
	/* alert(price + ' ' + qqty); */
	
	$.ajax({
		
		url:'itemorderEditFromCartServlet',
		type:'POST',
		data:{orderId:o,itemId:i,status:stat},
		success:function(itemor){
			
			if(itemor=="less"){
				if (confirm("This Item should be removed from your cart!")) {
					window.location="itemorderDelete?orderId="+oId;
			    } else {
			        
			    }
				
				
			}
			else if(itemor=="full"){
				alert("oops!.no more qty");
				
			}
			else{
				var ab=itemor.split(":");				
				document.getElementById(id).innerHTML=ab[0];
				document.getElementById(idt).innerHTML=ab[1];
				
								
			}
	
		}
		
	})
		
	
	
}

</script>
</head>
<%@include file="Customer_header.jsp" %>
<br><br>

<body style="background-color: white !important;">

<!-- <form action="" name="" id=""> -->
<div class="content-area">
				<main id="main" class="site-main">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div class="commerce commerce-cart">
 

<table class="shop_table cart">

<%
List<ItemorderBean> itemorder=null;
 itemorder=(ArrayList)new ItemorderDao().getItemorderBycustId(customer.getRegisterId());

//List<ItemorderBean>itemorder=(ArrayList)request.getAttribute("itemorder");
if(itemorder==null)
{
	out.print("NULL");
}else{	
%>

<tr style="background-color: #088da5;">

<td style="color:white;">NAME</td>
<td style="color:white;">IMAGE</td>
<td style="color:white;">ADDRESS</td>
<td style="color:white;">QUANTITY</td>
<td style="color:white;">PRICE</td>
<td style="color:white;">TOTAL PRICE</td>
<td style="color:white;">STATUS</td>
<td style="color:white;">DELETE</td>
<td style="color:white;">PAY NOW</td>

</tr>

<tbody>
<%
	for(int i=0,j=-1;i<itemorder.size();i++,j--){
		ItemorderBean item=itemorder.get(i);
		if(item.getPayment().equals("0")){
		ItemBean it=new ItemDao().getItemByPK(item.getItemId());
		
		if(item.getItemId().equals(it.getItemId())){
%>
			<tr class="cart_item">
			<td class="product-name"><%=it.getItemName()%></td>
			<td class="product-thumbnail"><img src="./Upload/Images/<%=it.getItemImg()%>" style="height: 60px;width: 60px;"></td>
<%
		}
		
		
%>	  

<td class="product-price"><span class="amount"><%=item.getDestination()%></span></td>
<td>
	<div class="quantity">

		<input type="button" name="btnminus" id="btnminus" value="-" onclick="add(<%=i %>,<%=item.getOrderId()%>,<%=item.getItemId()%>,'minus',<%=it.getItemPrice()%>,<%=item.getOrderQty()%>,<%=j%>);"/>
		<span class="product-quantity"><span id="<%=i%>" class="input-text qty text"><%=item.getOrderQty() %></span>
		<input type="button" name="btnplus" id="btnplus" value="+" onclick="add(<%=i %>,<%=item.getOrderId()%>,<%=item.getItemId()%>,'plus',<%=it.getItemPrice()%>,<%=item.getOrderQty()%>,<%=j%>);"/>
	</div>
</td>
<td class="product-price"><span class="amount"><%=it.getItemPrice() %></span></td>
<td class="product-subtotal"><span id="<%=j%>"><%=item.getTotalPrice() %></span></td>
<td class="product-subtotal"><%=item.getOrderStatus() %></td>
<td class="product-remove"><a href="itemorderDelete?orderId=<%=item.getOrderId()%>" class="remove"><!-- <img alt="cancel" src="./images/cancel.png" style="height: 30px; width: 30px;"> --></a></th>
<td class="product-remove"><a href="payumoneyservlet?orderId=<%=item.getOrderId()%>&firstname=<%=customer.getFirstName()%>&amount=<%=item.getTotalPrice()%>&email=<%=customer.getEmail()%>&productinfo=<%=it.getItemName()%>&phone=<%=customer.getContact()%>"><img alt="" src="./images/payumoney .jpeg" style="height: 30px; width: 80px;"></a></th>
<%-- <%
if(item.getOrderStatus().equals("Move In")){
%>
<td class="product-remove"><a href="GetReceipt.jsp?orderId=<%=item.getOrderId()%>"><img alt="Get Your Receipt" src="./images/receipt.png" style="height: 25px; width: 25px;"></a>

<%
}
%> --%>
</tr>		  
		
<%
		}
	
	}
}

%>	 
</tbody>
</table>

</div>
</div>
</div>
</div>
</main>
</div>
<a href="#" class="go-to-top hidden-print"><i class="fa fa-angle-up"></i></a>

		<script type='text/javascript' src='js1/jquery.min.js'></script>
		<script type='text/javascript' src='js1/bootstrap.min.js'></script>
		<script type='text/javascript' src='js1/jquery-migrate.min.js'></script>
		<script type='text/javascript' src='js1/modernizr-2.7.1.min.js'></script>
		<script type='text/javascript' src='js1/jquery.prettyPhoto.js'></script>
		<script type='text/javascript' src='js1/jquery.prettyPhoto.init.min.js'></script>
		<script type='text/javascript' src='js1/off-cavnass.js'></script>
		<script type='text/javascript' src='js1/owl.carousel.min.js'></script>
		<script type='text/javascript' src='js1/jquery.parallax-1.1.3.js'></script>
		<script type='text/javascript' src='js1/jquery.plugin.min.js'></script>
		<script type='text/javascript' src='js1/jquery.countdown.min.js'></script>
		<script type='text/javascript' src='js1/script.js'></script>
		<script type='text/javascript' src='js1/custom.js'></script>
		<script type='text/javascript' src='js1/jquery.magnific-popup.js'></script>
		<script type='text/javascript' src='js1/jflickrfeed.min.js'></script>
		<script type='text/javascript' src='js1/jquery.cookie.js'></script>
		<script type='text/javascript' src='js1/style.selector.js'></script>
	
	<br><br>
	<br>
	<br>
	<br>
	<br>	
<%@include file="footer.jsp" %>

</body>
</html>