<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Maestro.aspx.cs" Inherits="WebPresentacion.Maestro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 204px;
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
                <td>
                    
                </td>
                <td>
                                <asp:GridView ID="gvMaestro" runat="server" 
                    onpageindexchanging="gvMaestro_PageIndexChanging" AllowPaging="True" 
                    PageSize="10" CellSpacing="3">
                      </asp:GridView>

                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    
    
    
    
    
    
    
   
</asp:Content>