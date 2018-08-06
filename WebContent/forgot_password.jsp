<!-- 
<form action="SendMail">
To:<input type="text" name="to"/><br/>
Subject:<input type="text" name="subject"><br/>
Text:<textarea rows="10" cols="70" name="msg"></textarea><br/>
<input type="submit" value="send">


</form>
 -->
 <html>
 <head>
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
 <style>
body  {
    background-image: url("./images/1.jpg");
    background-size: 1400px 700px;
    background-repeat: no-repeat;
    
}
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: green;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 30%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */

td
{
  
  color: black;
  font-size:200%;

}
.modal {
   
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 1% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 40%; /* Could be more or less, depending on screen size */
}




/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}</style>
 <script type="text/javascript">
 function mail()
 {
	 var f=document.mailotp;
	 f.email_id=emailid;
	 f.action="SendMail";
	 f.submit();
	 
	 
 }
 
 
 </script>
 </head>
 <body>
 <%
 if(request.getAttribute("emailid")==null)
 {
	 request.setAttribute("emailid", "");
 }
 
 %>
 
 <form action="otpcheckservlet" name="mailotp" id="mailotp">
 <div style="height: 30%;"></div>
 <table align="center">
 
 <tr>
 <td>Enter email id:</td>
 <td><input type="text" name="emailid" id="emailid" placeholder="email id" value="<%=request.getAttribute("emailid")%>"></td>
 </tr>
 <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

 <tr>
 <td>
 <td><input type="button" value="send otp" onclick="mail()">
 </td>
 </tr>
 
 <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
 <tr>
 <td>Enter the otp code:</td>
 <td><input type="text" name="otp" id="otp" placeholder="otp"></td>
 </tr>
 
 <tr>
 <td>
 <td><input type="submit" name="otpbtn" id="otpbtn" value="ok">
 
 

 
 
 
 
 </table>
 
 
 
 
 </form>
 
 
 </body> 
</head>
  </html>