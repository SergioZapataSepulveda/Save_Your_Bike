<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="WebPresentacion.Contacto" %>
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
                    <asp:Label ID="Label3" CssClass="Titulo" runat="server" Text="<center>Contáctanos</center>"></asp:Label>
                    <asp:Label ID="Label4" CssClass="Puntos" runat="server" Text="<center><br><br>Lorem ipsum dolor sit amet, <br>consectetuer adipiscing elit. <br>Aenean commodo ligula eget dolor. <br>Aenean massa. Cum sociis natoque <br>penatibus et magnis <br>dis parturient montes, <br>nascetur ridiculus mus. Donec <br>quam felis, ultricies nec, <br>pellentesque eu, pretium quis, sem. <br>Nulla consequat massa <br>quis edui.faucibus. </center>"></asp:Label>
                </div>
            </td>
             <td>
                <div>
                    <img src="imagenes/mail.png" />
                </div>
            </td>
          

        </tr>
    </table>
</asp:Content>