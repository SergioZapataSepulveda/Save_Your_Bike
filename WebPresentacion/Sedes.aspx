<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true"
    CodeBehind="Sedes.aspx.cs" Inherits="WebPresentacion.Sedes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 452px;
        }
        .style4
        {
            width: 1198px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Titulo">
        <asp:Label ID="Label3" CssClass="Titulo" runat="server" Text="Primera Sede Maipu <br><br>"></asp:Label>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
                <div id="Puntos2">
                <asp:Label ID="Label4" runat="server" Text="Queremos ser la primera sede <br>en implementar este nuevo e <br>innovador sistema, pues creemos y <br>estamos confiados en que esta <br>idea será una de las mas <br>completas y exitosas al <br>implementarse en Duoc UC, <br>y queremos que los Usuarios de <br>Maipú, sean los primeros en contar <br>con lo nuevo de Save Your Bike. " ></asp:Label>
                </div>
            </td>
            <td>
                &nbsp;
                <asp:Image ID="Image7" runat="server" ImageUrl="~/imagenes/Mockup-14.logo.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td class="style4">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
