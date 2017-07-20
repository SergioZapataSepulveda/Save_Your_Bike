<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true"
    CodeBehind="ComoFunciona.aspx.cs" Inherits="WebPresentacion.ComoFunciona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 222px;
        }
        .style2
        {
            width: 466px;
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
                    <asp:Label ID="Label3" CssClass="Titulo" runat="server" Text="Nuevo Servicio"></asp:Label>
                    <asp:Label ID="Label4" CssClass="Puntos" runat="server" Text="<br><br><br><br>Registra tu bicicleta con tu <br>cuenta de usuario Duoc UC, <br>ingresa tus datos y los de tu <br>bicicleta, como el color, el aro, <br>la marca, y algo que solo tu <br>conozcas, y confia en la seguridad <br>que Save Your Bike te dará"></asp:Label>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/imagenes/Mockup-12.png" />
                </div>
            </td>
            <td>
                <div>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/Mockup-13.png" />
                    <asp:Label ID="Label2" CssClass="Titulo" runat="server" Text="<br>Nuevo Servicio"></asp:Label>
                    <asp:Label ID="Label1" CssClass="Puntos" runat="server" Text="<br><br>Contaremos con doble verificación, <br>registro rapido de entrada <br> y de salida. Guardias a cada <br>momento, prestando siempre atención <br> a tus movimientos <br>y el sin quitar los ojos <br> de tu bicicleta. Solo confía <br> en Save Your Bike"></asp:Label>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
