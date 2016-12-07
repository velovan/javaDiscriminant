<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Discriminant List</title> 
    <!-- Bootstrap CSS --> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container {margin: 20px;}
    </style>
</head>
				<body class=".container-fluid">
				<div class="container myrow-container">
   				<div class="panel panel-success">
       	        <div class="panel-heading">
            	<h3 class="panel-title">
                <div align="left"><b>ax<sup>2</sup> + bx + c = 0</b> </div>  
                <div align="right"><a href="createDiscriminant">Ввести нові дані</a></div>   
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty discriminantList}">  
                Дані відсутні  
            </c:if>
            <c:if test="${not empty discriminantList}">   
 
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #bce8f1;">
                    <tr>
                        <th>Id</th>
                        <th>a</th>
                        <th>b</th>
                        <th>с</th> 
                        <th>Edit</th>
                        <th>Delete</th>   
                      </body> 
                    </tr>
                    </thead> 
                    <tbody>
                    <c:forEach items="${discriminantList}" var="emp">
                        <tr>
                        	<th><c:out value="${emp.id}"/></th>
                        	<th><c:out value="${emp.a}"/></th> 
                        	<th><c:out value="${emp.b}"/></th> 
                        	<th><c:out value="${emp.c}"/></th>   
     
                        	<th><a href="editDiscriminant?id=<c:out value='${emp.id}'/>">Edit</a></th> 
                        	<th><a href="deleteDiscriminant?id=<c:out value='${emp.id}'/>">Delete</a></th>                         	  
                        </tr> 
                    </c:forEach> 
                    
						<center>
							<b>Розрахунок квадратного рівняння</b>
							<p>
								<br>
							<form name="form1">
								<input type="button" class="btn btn-primary" value="Розрахувати" onClick="kvadrt()" /><br>
								<br> X<sub>1</sub> = <input type"text" name="x1" size="30">&nbsp;&nbsp;&nbsp;&nbsp;
								X<sub>2</sub> = <input type"text" name="x2" size="30"><br>
								<br> <input type="reset" class="btn btn-primary" value="Скинути">
						</center>
						</form> 
                    </tbody> 
                </table>
            </c:if>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>    
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
                        <c:if test="${not empty discriminantList}">    
                        <c:forEach items="${discriminantList}" var="emp">  
					<title>Розрахунок квадратного рівняння</title>
					<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
					<script>
					function kvadrt()
					{ 
					d=document 
					   var a = ("${emp.a}"); 
				       var b = ("${emp.b}");
				       var c = ("${emp.c}") 
					var diz = eval(Math.pow(b,2)-4*a*c)//розрахунок дискримінанту
					var e = eval((-b+Math.sqrt(diz))/(2*a))// розрахунок якщо дискр. > 0 для х1
					var e1 = eval((-b-Math.sqrt(diz))/(2*a))//розрахунок якщо дискр. > 0 для х2
					var e2 = eval(- c/b)//розрахунок якщо a=0, b і c !=0
					var e3 = eval(-b/2*a)//розрахунок якщо дискр.=0
					var x1 = Number(d.form1.x1.value)//для виводу поля х1
					var x2 = Number(d.form1.x2.value)//для виводу поля х2 
					if(a!=0 && diz>0)
					{
					x1=eval(e);
					x2=eval(e1);
					}
					else
					if(a!=0 && diz==0)
					{
					x1=eval(e3);
					x2=" ";
					}
					else
					{
						alert("Коренів немає"); 
					}
					d.form1.x1.value=x1;
					d.form1.x2.value=x2;
					} 
					</script> 
	    </c:forEach> 
	    </c:if> 
	    <body> 
</body>
</html>