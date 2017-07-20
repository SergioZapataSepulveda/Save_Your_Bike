<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true"
    CodeBehind="Equipo.aspx.cs" Inherits="WebPresentacion.Equipo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 204px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 123px;">
        <tr>
            <td class="style1">
            </td>
            <td class="style2">
                <div>
                    <asp:Label ID="Label3" CssClass="Titulo" runat="server" Text="<br><br>Matias Molina"></asp:Label>
                    <asp:Label ID="Label4" CssClass="Puntos" runat="server" Text="<br><br>Imaginativo y objetivo, <br>trabajador siempre con seriedad. <br>Buscador de los puntos claves y de <br> las debilidades del sistema. <br>Preocupado de la eficiencia y eficacia <br>de las nuevas tecnologías. <br> Fuente de nuevas y mejores ideas, <br>parte primordial del equipo, <br>pero siempre, del equipo <br>Save Your Bike. "></asp:Label>
                </div>
            </td>
            <td class="style2">
                <div>
                    <asp:Label ID="Label1" CssClass="Titulo" runat="server" Text="<br><br>Agustin Troncoso"></asp:Label>
                    <asp:Label ID="Label2" CssClass="Puntos" runat="server" Text="<br><br>Amente de la programación y <br>estudiante en Duoc UC, de la <br>carrera: Analista Programador Computacional. <br>Desarrollador de la idea, <br>y principal fuente <br>de ingenio y sabiduría. <br>Preocupado siempre de la <br>seguridad, como de los <br>bienes personales; algo completamente <br>necesario en <br>Save Your Bike. "></asp:Label>
                </div>
            </td>
            <td class="style2">
                <div>
                    <asp:Label ID="Label5" CssClass="Titulo" runat="server" Text="<br><br>Sergio Zapata"></asp:Label>
                    <asp:Label ID="Label6" CssClass="Puntos" runat="server" Text="<br><br>Uno de los principales y el <br>más importante desarrollador <br>en el proyecto Save Your Bike. <br>Desarrollador y Diseñador de la esta <br>gran idea; pues él es, <br>al igual que muchos, un <br>usuario mas del estacionamiento <br>para bicicletas, lo que <br>hace tener un punto claro y bien <br>objetivo en nuestro proyecto. "></asp:Label>
                </div>
            </td>

        </tr>
    </table>
</asp:Content>
