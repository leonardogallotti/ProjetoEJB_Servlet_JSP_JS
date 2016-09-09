<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="mb" class="manager.ManagerBean" scope="request" />
<!DOCTYPE html PUBLIC>
<html>
<head>
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="bootstrap/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript" src="bootstrap/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>
<body>
 
 <div class="container">
  <h1 class="well well-lg" align="center">Consultar</h1>  
  <a href="sistema.jsp" class="btn btn-warning"><span class="glyphicon glyphicon-home">HOME</span></a>
 </div>
 
 
  <div class="row">
   <div class="col-sm-8 col-sm-offset-2">
    <div class="panel panel-primary">
    
     <div class="panel-heading">
      <div class="panel-title" align="center">Consulta Produtos</div>    
     </div>
    
     <div class="panel-body">
       <form action="post">
        
        <table class="table table-hover">
         
         <thead>         
          <tr>
           <th>Nome do Produto</th>
           <th>Quantidade</th>        
          </tr>
         </thead>
        
        <c:forEach items="${mb.lista}" var="linha">
         <tbody>
          <tr>
          <td>${linha.nome}</td>
          <td>${linha.quantidade}</td>        
          </tr>
         </tbody>
        </c:forEach>
  
     </table>
       
       
       
       
       
       
       
       
       </form>
     
     
     
     </div>
    
    
    
    </div>
   </div>
   
   
   
   
   
  
  
  
  
  
  
  
  
  </div>
 
 
 
 
 
 
 





</body>
</html>