<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebPresentacion.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



<div align="center" style="margin-top:130px; font-family:Arial; font-size:14px; "> 
            <table>
            <tr>
                <td>
                    <h1 style="color:#00b7a2; margin-left:-141px">Tu Registro</h1>
                </td>
            </tr>
            </table>
        <table style="width: 700px; background-color:#8cc63f; padding:2em; color:White">
            <tr>
            <td class="style3">
                <h3><asp:Label ID="Label1" runat="server" Text="Registros de Entrada y Salida"></asp:Label></h3>
            </td> 
            <td>
                &nbsp;
                
            </td>
            <td>
                <h3><asp:Label ID="Label2" runat="server" Text="Codigo QR"></asp:Label></h3>
                <br>

                <asp:Label ID="Label3" runat="server" Text="Tu QR Personalizado"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;<asp:GridView ID="gvRegistro" runat="server" 
                    onpageindexchanging="gvRegistro_PageIndexChanging" AllowPaging="True" 
                    PageSize="5">
                </asp:GridView>
            </td>
            <td>
                
            </td>
            <td>
                <asp:Image ID="imgQR" runat="server" Height="150px" Width="150px"/>
                
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
                
            </td>
            <td>
                &nbsp;
                
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;
                
            </td>
        </tr>
        </table>
    </div>












</asp:Content>