<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AltaEmpleado.aspx.cs" Inherits="AltaEmpleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 425px;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 230px;
        }
        .auto-style3 {
            width: 212px;
        }
        .auto-style4 {
            width: 230px;
            height: 57px;
        }
        .auto-style5 {
            width: 212px;
            height: 57px;
        }
        .auto-style6 {
            height: 57px;
        }
        .auto-style7 {
            width: 144px;
        }
        .auto-style8 {
            height: 57px;
            width: 144px;
        }
        .auto-style9 {
            width: 230px;
            height: 46px;
        }
        .auto-style10 {
            width: 212px;
            height: 46px;
        }
        .auto-style11 {
            width: 144px;
            height: 46px;
        }
        .auto-style12 {
            height: 46px;
        }
        .auto-style13 {
            width: 230px;
            height: 48px;
        }
        .auto-style14 {
            width: 212px;
            height: 48px;
        }
        .auto-style15 {
            height: 48px;
            width: 144px;
        }
        .auto-style16 {
            height: 48px;
        }
        .auto-style17 {
            width: 230px;
            height: 64px;
        }
        .auto-style18 {
            width: 212px;
            height: 64px;
        }
        .auto-style19 {
            width: 144px;
            height: 64px;
        }
        .auto-style20 {
            height: 64px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Alta Empleado"></asp:Label>
    
    </div>
    &nbsp;&nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUsuario" runat="server" Height="18px" Width="195px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    &nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" Height="29px" Text="Buscar" Width="82px" OnClick="btnBuscar_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtContraseña" runat="server" Height="20px" Width="190px"></asp:TextBox>
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAlta" runat="server" Height="29px" Text="Alta" Width="70px" OnClick="btnAlta_Click" />
                </td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLogueo" runat="server" Text="Logueo" OnClick="btnLogueo_Click" />
                </td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
                </td>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style7">&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    &nbsp;</form>
</body>
</html>
