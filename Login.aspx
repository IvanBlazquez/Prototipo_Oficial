<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prototipo.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body>
    <header>
     <!--Elementos de navegacion -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <!--Titulo/Logo/Nombre Empresa -->
        <a class="navbar-brand" href="#">Zapatazo</a>
         <!-- Fin Titulo/Logo/Nombre Empresa -->
        

        <div class="collapse navbar-collapse" id="navbarCollapse">     
     
        </div>
      </nav>
        <!--Fin Elementos de navegacion -->
    </header>
    <br />
    <br />
     <br />
    <main role="main">
	     <div class="row">
          <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3
              col-12">
              <h2 class="text-center">Inicia sesion</h2>

              <form runat="server">
                  <div class="form-group col-4 offset-lg-4 col-md-6 offset-md-3">
                      <img src="https://i.pinimg.com/736x/ac/e6/cf/ace6cfc54424429f3ed4783e99b708e3.jpg" width="100" height="150" class="brand_logo col-4 offset-lg-4 col-md-6 offset-md-3" alt="Logo">
                  </div>

                  <div class="form-group">
                      <label for="usuario">Nombre de usuario</label> 

                      <asp:TextBox ID="txtUsername" CssClass="form-control input_user" runat="server" Text=""></asp:TextBox>
                  </div>
                  <div class="form-group">
                      <label for="palabraSecreta">Contraseña</label>   

                      <asp:TextBox ID="txtPassword" CssClass="form-control input_pass" runat="server" Text=""  TextMode="Password"></asp:TextBox>
                  
                  </div>
                 
                 <asp:Button ID="btnLogin" CssClass="btn btn-dark" runat="server" Text="Login" OnClick="btnLogin_Click"  />
                 <asp:Button ID="btnSignup" CssClass="btn btn-dark" runat="server" Text="Signup" OnClick="btnSignup_Click"/>

                  <br>
                  <a href="#">Contraseña olvidada</a>
                  <br>
                
              </form>
			</div>
           </div>

      </main>
</body>
</html>
