<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body onload="document.forms['paypalForm'].submit();">
	<form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
		 <input type="hidden" name="cmd" value="_xclick" />
		 <input type="hidden" name="business" value="ankitvsoni1996@gmail.com" />
		 <input type="hidden" name="password" value="Ank!t1996"/>
			
		<%--  <input type="hidden" name="item_name" value="${payname}">
		 <input type="hidden" name="amount" value="${payamount}"> --%>
		 
		 
		  <input type="hidden" name="item_name" value="Laptop">
		 <input type="hidden" name="amount" value="2"> 
		 
		 
		 
<!--		 <input type="hidden" name="quantity" value="5">-->
		<!--  <input type="hidden" name="tax" value="2"> -->
		 
		 
		 <input type="hidden" name="return" value="http://localhost:6018/StockTracker/paypalResponse.jsp" />
		 <input type="hidden" name="cancel_return" value="http://localhost:6018/StockTracker/paypalResponseCancel.jsp" />
		 <input type="hidden" name="cert_id" value="A2bxwWQ9.t4jjcYUFAo0SGoQeLUPAVCQWunNtVacS.Es7KYebnkebYuC" />
	</form>
</body>
</html>