<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Estadisticas.aspx.cs" Inherits="WebPresentacion.Ingeso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





<div align="center" style="margin-top:130px; font-family:Arial; font-size:14px; "> 
            <table>
            <tr>
                <td>
                    <h1 style="color:#00b7a2; margin-left:-88px">Datos Estadisticos de Todos Nuestros Usuarios Activos</h1>
                </td>
            </tr>
            </table>
        <table style="width: 600px; background-color:#8cc63f; padding:2em; color:White">
            <tr>
            <td class="style3">
                &nbsp;
            </td> 
            <td>
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Cantidad Usuarios"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtRep1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Cantidad Estudiantes"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtRep2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Cantidad Funcionarios"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtRep3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Nombre de Usuaro más Activo"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtRep4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Numero de Registros de Usuaro más Activo"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtRep5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label6" runat="server" Text="Promedio de registros por Usuario"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtRep6" runat="server"></asp:TextBox>
            </td>
        </tr>
        </table>
    </div>















</asp:Content>
