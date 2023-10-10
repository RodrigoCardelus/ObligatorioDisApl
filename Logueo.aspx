<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logueo.aspx.cs" Inherits="Logueo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 404px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style9 {
            width: 115px;
        }
        .auto-style11 {
            width: 233px;
        }
        .auto-style13 {
            width: 220px;
        }
        .auto-style15 {
            width: 103px;
        }
        .auto-style17 {
            width: 204px;
            height: 69px;
        }
        .auto-style18 {
            width: 220px;
            height: 69px;
        }
        .auto-style19 {
            width: 233px;
            height: 69px;
        }
        .auto-style20 {
            height: 69px;
            width: 115px;
        }
        .auto-style21 {
            height: 69px;
        }
        .auto-style22 {
            height: 69px;
            width: 103px;
        }
        .auto-style23 {
            width: 204px;
            height: 62px;
        }
        .auto-style24 {
            width: 220px;
            height: 62px;
        }
        .auto-style25 {
            width: 233px;
            height: 62px;
        }
        .auto-style26 {
            height: 62px;
            width: 115px;
        }
        .auto-style27 {
            height: 62px;
        }
        .auto-style28 {
            height: 62px;
            width: 103px;
        }
        .auto-style29 {
            width: 204px;
            height: 59px;
        }
        .auto-style30 {
            width: 220px;
            height: 59px;
        }
        .auto-style31 {
            width: 233px;
            height: 59px;
        }
        .auto-style32 {
            height: 59px;
            width: 115px;
        }
        .auto-style33 {
            height: 59px;
        }
        .auto-style34 {
            height: 59px;
            width: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Logueo Empleados"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtUsuario" runat="server" Height="19px" Width="193px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtContraseña" runat="server" Height="19px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" />
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style24"></td>
                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style26"></td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style27"></td>
            </tr>
            <tr>
                <td class="auto-style29">
                </td>
                <td class="auto-style30"></td>
                <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style32"></td>
                <td class="auto-style33"></td>
                <td class="auto-style34"></td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
