<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="Prototipo.Tienda" %>

<<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <title>Tienda</title>
   
    </style>
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

          <div class="col-lg-4">
            <img class="rounded-circle" src="https://www.militar.es/wp-content/uploads/2019/07/Mil-Tec-SWAT-Combate-Botas-Negro-1-256x256.jpg" alt="Generic placeholder image" width="140" height="140">
           <asp:HyperLink ID="HyperLink2" href="Zapatillas_imagenes/Zapatazo_goto_botas.jpg"  runat="server"><h2>Botas</h2></asp:HyperLink>
            
          </div><!-- /.col-lg-4 -->

          <div class="col-lg-4">
            <img class="rounded-circle" src="https://walashop.a.ssl.fastly.net/media/catalog/product/cache/3/small_image/256x/9df78eab33525d08d6e5fb8d27136e95/M/L/ML574-JFG_1.jpg" alt="Generic placeholder image" width="140" height="140">
           <asp:HyperLink ID="HyperLink3" href=">Zapatillas.aspx" runat="server"><h2>Zapatillas</h2></asp:HyperLink>
            
          </div><!-- /.col-lg-4 -->



          <div class="col-lg-4">
            <img class="rounded-circle" src="https://s3-eu-west-1.amazonaws.com/media-esp-buyviu-com/products/2fdbf7626106c608487971a523482c22_image_1_thumb.jpg" alt="Generic placeholder image" width="140" height="140">
           <asp:HyperLink ID="HyperLink4"   href="Tacon.aspx" runat="server"><h2>Zapato de Tacon</h2></asp:HyperLink>
            
          </div><!-- /.col-lg-4 -->

        </div><!-- /.row -->
        
        <!-- Fin de las columnas de informacion -->
        <hr class="featurette-divider">
        <div class="row featurette">
              <div class="col-md-7">
                    <h1 class="featurette-heading">Filtros de busqueda</h1>
                  <br />
                  <asp:Label ID="lblMarcas" runat="server" Text="Marcas: "/>
                
                    <asp:DropDownList ID="ddlMarcas" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="ID_Marca"  AppendDataBoundItems="true">
                        <asp:ListItem  Value=''>Seleccionar</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="lblTipoDeCalzado" runat="server" Text="Tipo de calzados: "/>
                    <asp:DropDownList ID="ddlTipoDeCalzado" runat="server" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="CodCategoria"  AppendDataBoundItems="true">
                        <asp:ListItem Value="" >Seleccionar</asp:ListItem>
                    </asp:DropDownList>

                   <asp:Button ID="btnBuscar"  CssClass="btn btn-dark" runat="server" Text="🔍" OnClick="btnBuscar_Click" />
                  <br /><br />
                  <div class="row featurette">
                    <asp:GridView ID="grvZapatos"  CssClass="table col-lg-4 offset-lg-4 col-md-6 offset-md-3 col-12" GridLines="None"  runat="server">
                    </asp:GridView>
                </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" SelectCommand="SELECT [ID_Marca], [Nombre] FROM Zapatazo.Marca"></asp:SqlDataSource>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" SelectCommand="SELECT [CodCategoria], [Descripcion] FROM Zapatazo.Categorias"></asp:SqlDataSource>

              </div>
             
            </div>


    </form>
   </main>   
</body>
</html>