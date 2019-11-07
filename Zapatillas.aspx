<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Zapatillas.aspx.cs" Inherits="Prototipo.Zapatillas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <!--Link para implemntar iconos -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<title>Zapatazo</title>
</head>
<body>
     <header>
     <!--Elementos de navegacion -->
      <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <!--Titulo/Logo/Nombre Empresa -->
        <a class="navbar-brand" href="#">Zapatazo</a>
         <!-- Fin Titulo/Logo/Nombre Empresa -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarCollapse">     
          <ul class="navbar-nav mr-auto">
              
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="AcerceDeNosotros.aspx">Acerca de</a>
            </li>

            <li class="nav-item">
              <asp:HyperLink ID="lblUsuarioContenido" CssClass="nav-link" runat="server"></asp:HyperLink>
            </li>
              
            <li class="nav-item">
             
                <asp:HyperLink ID="lblshop" CssClass="nav-link fas fa-shopping-basket"  href="Tienda.aspx" runat="server" >  </asp:HyperLink>
            
            </li>
          </ul>

          <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Search</button>
          </form>

        </div>
      </nav>
        <!--Fin Elementos de navegacion -->
    </header>
    <main role="main">
      <br />
      <br />
      <form id="form1" runat="server">
         <div class="row">
          <div id="carouselExampleControls " class="carousel slide col-lg-4 offset-lg-4 col-md-6 offset-md-3
            col-12" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="https://cdn1.coppel.com/images/catalog/pr/8001342-1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="https://cdn1.coppel.com/images/catalog/pr/8082782-1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                  <img src="https://cdn1.coppel.com/images/catalog/pr/8001362-1.jpg" class="d-block w-100" alt="...">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
          </div>
        </div>
       </form>
    </main>
</body>
</html>
