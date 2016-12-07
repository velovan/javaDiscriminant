 
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Ranga Reddy">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Discriminant Information</title>
     
    <!-- Bootstrap CSS --> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container{margin: 20px;}
    </style>
</head>
<body class=".container-fluid">
    <div class="container myrow-container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Введіть коефіцієнти a, b, c
                </h3>
            </div>
            <div class="panel-body">
                <form:form id="discriminantRegisterForm" cssClass="form-horizontal" modelAttribute="discriminant" method="post" action="saveDiscriminant"> 
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="a" >a</form:label> </div> 
                        <div class="col-xs-5">
                            <form:hidden path="id" value="${discriminantObject.id}"/>
                            <form:input cssClass="form-control" path="a" value="${discriminantObject.a}"/> 
                        </div>
                    </div>
    
                    <div class="form-group">
                        <form:label path="b" cssClass="control-label col-xs-3">b</form:label> 
                        <div class="col-xs-5">
                            <form:input cssClass="form-control" path="b" value="${discriminantObject.b}"/>   
                        </div>
                    </div> 
                    
                     <div class="form-group">
                       <form:label path="c" cssClass="control-label col-xs-3">c</form:label> 
                        <div class="col-xs-5">
                            <form:input cssClass="form-control" path="c" value="${discriminantObject.c}"/> 
                        </div>
                    </div>  
                    
                    <div class="form-group">
                       <div class="row">
                           <div class="col-xs-5">
                           </div>
                           <div class="col-xs-4">
                             <input type="submit" id="saveDiscriminant" class="btn btn-primary" value=Зберегти onclick="return submitDiscriminantForm();"/> 
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div> 
                </form:form>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	   
	<script type="text/javascript">
		function submitDiscriminantForm() { 	 
		    // getting the a, b, c form values 
		    var a = $('#a').val(); 
		    var b = $('#b').val(); 
		    var c = $('#c').val(); 
 
		    if(a <= 0 || isNaN(a)) { 
		        alert('Введіть коефіцієнт a');
		        $('#a').focus();
		        return false;
		    } 
		    
		    if(b <= 0 || isNaN(b)) {
		        alert('Введіть коефіцієнт b');
		        $('#b').focus();
		        return false;
		    }
	
		    if(c <= 0 || isNaN(c)) {
		        alert('Введіть коефіцієнт c');
		        $('#c').focus();
		        return false;
		    }
		    return true; 
		};	
	</script>   
	 
</body>
</html>