<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.rekha.bean.AttenDeo,com.rekha.bean.Atten"%>  
  
<%  
String stu_name =request.getParameter("stu_name");  

Atten  a = AttenDeo.getRecordByName(stu_name);  


%>   
<h1>Student Attendance Details</h1>  
<form>
  

<table>  
<tr>
<td>Student Id</td>
<td><%=a.getStu_id() %>
</td>
</tr>
 
<tr>
<td>Student Name</td>
<td>  
<%=a.getStu_name() %>
</td>
</tr>  
<tr>
<tr>
<td>Branch</td>
<td>  
<%=a.getBranch() %>
</td>
</tr>  
<tr>
<td>OS</td>
<td><%=a.getSub1() %>
</td>
</tr>
<tr>
<td>CO</td>
<td><%=a.getSub2() %></td>
</tr>  
<tr>
<tr>
<td>ADS</td>
<td><%=a.getSub3() %></td>
</tr>  
<tr>  

<tr>
<td>DBMS</td>
<td><%=a.getSub4() %></td>
</tr>  
<tr>
<tr>
<td>Percentage</td>
<td><%=a.getPer() %></td>
</tr>  
<tr>

	

  
</table>  

  <button type="submit"><a href="viewatten.jsp" >back</a></button><br><br>
  
<button onclick="display()">print</button>

  <script>
  function display(){
	  window.print();
	  
  }
  
  
  </script>
  
<style>
td {
border:2px solid black;
background-color:orange;
}
table {
margin-left:auto;
margin-right:auto;

}

h1 {
text-align:center;
}

</style>

</form> 

</body>

 <style>
 button a{
 text-decoration:none;
  
 }
 </style>


</html>