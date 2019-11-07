<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Prototipo.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro Usuario</title>
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
     <main role="main">
      <br />
      <br />
      <br />

      
<!--Login-->
      <div class="row">
        <div id="login" class="col-lg-4 offset-lg-4 col-md-6 offset-md-3
            col-12">
            <h2 class="text-center">Registrate</h2>

            <form id="form1" runat="server">

                <div class="form-group">

                    <label for="usuario">Nombre de usuario</label>
                    <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                         <asp:Label ID="ERROR_MESSAGE_txtUsuario" runat="server"/>
                </div>

                <div class="form-group">
                  <label for="Nombre">Nombre</label>
                  <asp:TextBox ID="txtNombre"  CssClass="form-control" runat="server" placeholder="Nombre"></asp:TextBox>
                       <asp:Label ID="ERROR_MESSAGE_txtNombre" runat="server"/>
                </div>

                <div class="form-group">

                  <label for="Apellido">Apellido</label>
                  <asp:TextBox ID="txtApellido" runat="server"  CssClass="form-control" placeholder="Apellido"></asp:TextBox>      
                                    <asp:Label ID="ERROR_MESSAGE_txtApellido" runat="server"/>
                </div>

                <div class="form-group">

                    <label for="palabraSecreta">Contraseña</label>                   
                   <asp:TextBox ID="txtPass" CssClass="form-control"  runat="server" TextMode="Password" placeholder="Contraseña"></asp:TextBox>
                   <asp:Label ID="ERROR_MESSAGE_txtPass" runat="server"/>
                </div>

                <div class="form-group">

                  <label for="palabraSecreta">Verificar Contraseña</label>
                  <asp:TextBox ID="txtPass2" CssClass="form-control" runat="server"  placeholder="Contraseña"></asp:TextBox>
                       <label id="ERROR_MESSAGE_txtPass2"/>
                </div>

                 <div class="form-group">

                  <label for="Email">Email</label>
                  <asp:TextBox ID="txtEmail" runat="server"  CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>      
                      <asp:Label ID="ERROR_MESSAGE_txtEmail" runat="server"/>
                </div>

   
                 <div class="form-group">

                  <label for="Telefono">Telefono</label>
                  <asp:TextBox ID="txtTelefono" runat="server"  CssClass="form-control" placeholder="Teléfono" TextMode="Phone"></asp:TextBox>      
                               <label id="ERROR_MESSAGE_Telefono"/>
                </div>

                 <div class="form-group">
                    <label for="Telefono">Edad</label>
                        <asp:TextBox ID="txtEdad" runat="server"  CssClass="form-control" placeholder="Edad" TextMode="Number" MaxLength="3"></asp:TextBox>      
                       <asp:Label ID="ERROR_MESSAGE_Edad" runat="server"/>
                </div>

                <div class="form-group">
                  <label for="Genero">Genero</label>
                    <asp:DropDownList ID="ddGenero" CssClass="form-control" runat="server">
                        <asp:ListItem Value="">Seleccionar</asp:ListItem>
                        <asp:ListItem Value="H">Hombre</asp:ListItem>
                        <asp:ListItem Value="M">Mujer</asp:ListItem>
                        <asp:ListItem Value="O">Otro</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="ERROR_MESSAGE_ddGenero" runat="server"/>
         
                </div>
                <asp:Button ID="btnRegistrar" CssClass="btn btn-dark" runat="server" Text="Registrarse" OnClick="btnRegistrar_Click" />
                <!--Validate UserName, Nombre y Apellido no sea Null-->
                <asp:RegularExpressionValidator ID="Validation_Validar_Usuario" runat="server" ControlToValidate="txtUsuario" ValidationExpression="^[a-zA-Z]{1}[a-zA-Z0-9\._\-]{0,23}[^.-]$" ErrorMessage ="|Usuario Incorrecto|"/>
                <asp:RegularExpressionValidator ID="Validation_Validar_Nombre" runat="server" ControlToValidate="txtNombre" ValidationExpression="^[a-zA-Z]{1}[a-zA-Z0-9\._\-]{0,23}[^.-]$" ErrorMessage ="|Nombre Incorrecto|"/>
                <asp:RegularExpressionValidator ID="Validation_Validar_Apellido" runat="server" ControlToValidate="txtApellido" ValidationExpression="^[a-zA-Z]{1}[a-zA-Z0-9\._\-]{0,23}[^.-]$" ErrorMessage ="|Apellido Incorrecto|"/>
                <!--Validar complejidad de contraseña-->
                <asp:RegularExpressionValidator ID="Validation_Validar_Strongish_Password" runat="server" ControlToValidate="txtPass" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,15})$" ErrorMessage ="|Contraseña Debil|"/>
                <!--Validar que txtPass == txtPass2-->
                <asp:CompareValidator ID="Validation_Validar_Equals_Password" runat="server" Type="String" ControlToValidate="txtPass" Operator="Equal" ControlToCompare="txtPass2" ErrorMessage ="|La contraseña no coincide|"/>
                <!--Validar email-->
                <asp:RegularExpressionValidator ID="Validation_Validar_Email" runat="server" ControlToValidate="txtEmail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" ErrorMessage ="|Email Incorrecto|"/>
                <!--Validar telefono-->
                <asp:RegularExpressionValidator ID="Validation_Validar_Telefono" runat="server" ControlToValidate="txtTelefono" ValidationExpression="\ ?\d{3}\ ?-? *\d{2} ? * ?\d{2} * ?\d{2}" ErrorMessage ="|Telefono Incorrecto|" />
                <!--Validad edad-->
                <asp:CompareValidator ID="Validation_Validar_Edad" runat="server" Type="Integer" ControlToValidate="txtEdad" Operator="GreaterThanEqual" ValueToCompare="18" ErrorMessage ="|No cumples con el minimo de edad|"/>
                <!--Validar genero-->
                <asp:RequiredFieldValidator ID="Validation_Validar_Genero" runat="server" ControlToValidate="ddGenero" ValidationGroup="validatorGenero" InitialValue="" Display="Dynamic" ErrorMessage ="|Checkea un genero|"/>
                <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
                <div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>
            </form>
        </div>
      </div>
    </main>
</body>
</html>
