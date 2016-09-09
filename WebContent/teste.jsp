<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="jquery-2.1.4.min.js"></script>

	<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
  
  <script type="text/javascript">

    var nome="";
    var email="";
    var msg="";



    function resgate(){
        nome = $("#nome").val();
        email = $("#email").val();
       }

    function imprimi(){
        texto="";
        texto += nome + ",  " + email;
        $("#msg").html(texto);
        }


    function validar(){
         if(!nome.match(/^[A-Z a-z]{3,50}$/)){
             throw("Nome fora do Padrao");
          }
       } 
    
    function limpa(){
         $("#nome").val("");
         $("#email").val("");
        }


    
    $(document).ready(function(){

        $("#btn1").click(function(){

            try{
            	  resgate();
                  validar();
                  imprimi();
                  limpa();       	
                }catch (e){
                	$("#msg").html("Error: " + e);

                 }
            
             });

      });

  </script>


<body>
   
   <div class="container">
    <h1 class="jumbotron" align="Center" style="color:blue">TESTE</h1>   
   </div>

   <div class="row">
    <div class="col-sm-7 col-sm-offset-2">
     <div class="panel panel-success">
      
      <div class="panel-heading">
       <div class="panel-title" align="center">TESTANDO</div>
       
       <div class="form-group">
       <label>Nome</label>
       <input type="text" id="nome" class="form-control">
       </div>
       
       <div class="form-group">
       <label>Email</label>
       <input type="text" id="email" class="form-control">
       </div>
      
      <div class="col-sm-offset-5">
       <button id="btn1" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-apple"></span>Testar</button>
      </div>
      
      
      
      </div>     
      <br/>
      <strong><div id="msg"></div></strong>
     </div>   
    </div>  
   </div>













</body>
</html>