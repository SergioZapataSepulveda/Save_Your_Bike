<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebPresentacion.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 262px;
        }
        .style2
        {
            width: 638px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%; height: 123px;">
        
  
        <tr>
            <td class="style2">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/Mockup-10.png" />
                </td>
            <td>
                <div id="Parrafos">
                    <asp:Label ID="Label2" CssClass="Titulo" runat="server" Text="Nuevo Servicio" ></asp:Label>
                    <asp:Label ID="Label1" CssClass="Puntos" runat="server" Text="<br><br>Mas seguridad <br><br>Ahorra tiempo <br><br>Doble revision <br><br>Codigos digitales" ></asp:Label>

                    <asp:Label ID="Label3" CssClass="Titulo" runat="server" Text="<br><br><br>Más Beneficios" ></asp:Label>
                    <asp:Label ID="Label4" CssClass="Puntos" runat="server" Text="<br><br>Mejora tu salud <br><br>Cambia la ciudad <br><br>Olvídate de los tacos <br><br>Mejora tu calidad de vida" ></asp:Label>
                </div>
                
            </td>
        </tr>
        
     </table>
</asp:Content>
