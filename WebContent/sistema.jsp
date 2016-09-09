<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="jquery-2.1.4.min.js"></script>
	<link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
   <script type="text/javascript">

   var nome = "";
   var quantidade=0;
   var msg="";

    function resgate(){
           nome = $("#nome").val();
           quantidade = $("#quantidade").val();
        }

    function validar(){
        if(!nome.match(/^[A-Z a-z]{3,50}$/)){
              throw("Nome fora do Padrao");
         }else if(!quantidade<0){
        	 throw("Quantidade fora do Padrao"); 
             }
        }
      
    function limpar(){
        $("#nome").val("");
        $("#quantidade").val("");
        $("#msg").html("");
        $("#saida").html("");
     }

    function atualizar(){
        location.reload();
     }


    
    function toString(){
       texto="";
       texto += nome + ", " + quantidade;
       $("#msg").html(texto);
     }


    $(document).ready(function(){

        $("#btn1").click(function(){
        	   try{
    			 	resgate();
    				validar();
    				limpar();                   
                    $.get("Controle",{pnome:nome, pquantidade:quantidade},
                            function(mensagem){
                              $("#saida").html(mensagem);

                    });
    		    }catch (e) {
    		    	 $("#saida").html("error:" + e);
    			}
              });

          

            $("#btn2").click(function(){
                 try{
                	 resgate();                     
                     validar();
                     toString();
                     $("#nome").val("");
                     $("#quantidade").val("");
                  }catch (e){
                   $("#saida").html("error:" + e);
                 }
                });

    });

    
 </script>

<body>
  <div class="container">
   <h1 class="well well-lg" align="center">Cadastrar Produto</h1> 
    <a href="consulta.jsp" class="btn btn-warning"><span class="glyphicon glyphicon-search">CONSULTAR</span></a>
  </div>

   <div class="container">
    <div class="row">
     <div class="col-sm-8 col-sm-offset-2">
      <div class="panel panel-primary">
       
       <div class="panel-heading">
        <div class="panel-title" align="center">Formulario de Cadastro</div>       
       </div>
      
       <div class="panel-body">
       
       <div class="form-group">
        <label>Nome</label>
        <input type="text" id="nome" name="nome" placeholder="Informe o nome do produto" class="form-control">       
       </div>
      
       <div class="form-group">
        <label>Quantidade</label>
        <input type="number" id="quantidade" name="quantidade" placeholder="Informe a quantidade do produto" class="form-control">       
       </div>
      
       
      <button id="btn1"  class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-floppy-disk"></span>Gravar</button>
      <button id="btn2"  class="btn btn-primary btn-lg">Teste - Mostrar dados</button>
      
      
      
       </div>     
       
       <br/>
       <div id="msg"></div>
        <br/>
       <div id="saida"></div>
      
      
      </div>
      
     
     
     
     
     </div>
    </div>
   </div>























</body>
</html>