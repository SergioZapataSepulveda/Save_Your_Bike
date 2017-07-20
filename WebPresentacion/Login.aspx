<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebPresentacion.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="estilos.css" rel="stylesheet" type="text/css" />
    <title></title>
    </head>




<body>
    <form id="form1" runat="server" >
    <div>
            <div align="center" >
                <asp:Image ID="Image1" runat="server" Height="150px" width="100%" ImageUrl="http://i.imgur.com/8ljujEZ.png" />
            </div>

            <div align="center" style="margin-top: -120px">
                <asp:Image ID="Image2" align="center"  CssClass="Image2" runat="server" Height="100px" ImageUrl="http://i.imgur.com/qrDqJb6.png" />
            </div>

            <div align="center" style="margin-top: 120px">
                <asp:Login ID="Login1" runat="server" BackColor="#00b7a2" BorderColor="#00b7a2" 
                    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                    Font-Size="0.9em" ForeColor="#FFFBFF" onauthenticate="Login1_Authenticate">
                    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                    <TextBoxStyle Font-Size="0.8em" />
                    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
                        ForeColor="White" />
                </asp:Login>
             </div>



    <div align="center" style="margin-top: 60px; font-family: arial" >
        <div  style="background:#00b7a2; width:350px; padding-top:1em; padding-bottom:1em;color: White">
        <table style="width:300px;">
        
        <tr>
                <h3><asp:Label ID="Label2" runat="server" Text="Crear Nuevo Registro"></asp:Label></h3>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Rut:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRut" runat="server" Width="200px" MaxLength="12"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Nombres:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNombres" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Apellidos:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtApellidos" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Pass 1:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" Width="100px" MaxLength="10" TextMode="Password" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Pass 2:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass2" runat="server" Width="100px" MaxLength="10" 
                    TextMode="Password"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Correo:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCorreo" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Tipo:"></asp:Label>
            </td>
            <td>

                <asp:DropDownList ID="ddlTipo" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Edad:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEdad" runat="server" Width="50px"></asp:TextBox>
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
                        <asp:Button ID="btnCreate" runat="server" Text="Registrarse" 
                            onclick="btnCreate_Click"/>
                    </td>
                </tr>
                
                <tr>
                <td>
                    &nbsp;</td>
                 <td>
                        <asp:Label ID="lblMensaje1" runat="server" Text="..."></asp:Label><br>
                        <asp:Label ID="lblMensaje2" runat="server" Text="..."></asp:Label>
                    </td>
                </tr>
                

            </table>


            
        </div>
        </div>  
        
        
        
        <div align="center" style="margin-top: -315px; margin-left: 900px; font-family: arial; font-size:11px; color:red; " >
            <table style="width: 500px; height: 173px;">
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="* Falta Completar el Rut" ControlToValidate="txtRut"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="* Falta Completar Los Nombres " ControlToValidate="txtNombres"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ErrorMessage="* Largo Minimo de Nombres 3 Caracteres"
                            ControlToValidate="txtNombres" 
                            onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="* Falta Completar Los Apellidos" 
                            ControlToValidate="txtApellidos"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" 
                            ErrorMessage="* Largo Minimo de Apellidos 3 Caracteres" ControlToValidate="txtApellidos" 
                            onservervalidate="CustomValidator2_ServerValidate" BorderStyle="NotSet"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="* Falta Completar La Contraseña 1" 
                            ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                            
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtPass" ControlToValidate="txtPass2" 
                            ErrorMessage="* Error: Las Contraseñas no son iguales"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ErrorMessage="* Falta Completar La Contraseña 2" 
                            ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                            
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtPass2" ControlToValidate="txtPass" 
                            ErrorMessage="* Error: Las Contraseñas no son iguales"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ErrorMessage="* Falta Completar El Correo" 
                            ControlToValidate="txtCorreo"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="* Falta Completar La Edad " 
                            ControlToValidate="txtEdad"></asp:RequiredFieldValidator>
                            
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                             ErrorMessage="* Error: Edad Permitida entre 18 y 80 años"  ControlToValidate="txtEdad" 
                            MaximumValue="80" MinimumValue="18"></asp:RangeValidator>
                    </td>
                </tr>
            </table>
        </div>
           
       

            <div align="center" style=" bottom: -150px; position: relative;">
                    <asp:Image ID="Image3" runat="server" Height="100%" width="100%" ImageUrl="http://i.imgur.com/yMTGvXY.png" />
            </div>

           

    </div>
    </form>
</body>
</html>