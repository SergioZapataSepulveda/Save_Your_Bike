<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true"
    CodeBehind="ModRegistro.aspx.cs" Inherits="WebPresentacion.NuevoRegistro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 204px;
        }
        .style3
        {
            width: 131px;
        }
        .style5
        {
            width: 204px;
            height: 23px;
        }
        .style7
        {
            width: 131px;
            height: 23px;
        }
        .style8
        {
            height: 23px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center" style="margin-top:130px; font-family:Arial; font-size:14px; "> 

    <table>
            <tr>
                <td>
                    <h1 style="color:#00b7a2; margin-left:-141px">Maestro de Datos</h1>
                </td>
            </tr>
            </table>
        <table style="width: 600px; background-color:#8cc63f; padding:2em; color: White">
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="User"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Pass1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtPass1" ErrorMessage="* Error: Las Contraseñas no son iguales" 
                    ControlToValidate="txtPass2"></asp:CompareValidator>
            </td> 
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Pass2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="txtPass2" ErrorMessage="* Error: Las Contraseñas no son iguales" 
                    ControlToValidate="txtPass1"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Rut"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="* Campo Requerido" ControlToValidate="txtRut"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Nombres"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Apellidos"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Correo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="* Campo Requerido" ControlToValidate="txtCorreo"></asp:RequiredFieldValidator>
            </td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Tipo"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlTipo" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Edad"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="* Campo Requerido" ControlToValidate="txtEdad"></asp:RequiredFieldValidator>
                    </td>
        </tr>
        
           
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="Actualizar" 
                            onclick="btnUpdate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="Eliminar" 
                            onclick="btnDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lvlMensaje" runat="server" Text="Mensaje"></asp:Label>
                    </td>
                </tr>
          
        
        <div>
    </table>
    </div>
</asp:Content>
