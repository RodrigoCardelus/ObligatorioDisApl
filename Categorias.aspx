<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Categorias.aspx.cs" Inherits="CategoriasABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 407px;
        }
        .auto-style3 {
            width: 231px;
        }
        .auto-style5 {
            width: 116px;
        }
        .auto-style7 {
            width: 231px;
            height: 49px;
        }
        .auto-style9 {
            height: 49px;
        }
        .auto-style10 {
            width: 116px;
            height: 49px;
        }
        .auto-style11 {
            width: 227px;
            height: 49px;
        }
        .auto-style12 {
            width: 227px;
        }
        .auto-style13 {
            width: 227px;
            height: 38px;
        }
        .auto-style14 {
            width: 231px;
            height: 38px;
        }
        .auto-style15 {
            height: 38px;
        }
        .auto-style16 {
            width: 116px;
            height: 38px;
        }
        .auto-style17 {
            width: 227px;
            height: 50px;
        }
        .auto-style18 {
            width: 231px;
            height: 50px;
        }
        .auto-style19 {
            height: 50px;
        }
        .auto-style20 {
            width: 116px;
            height: 50px;
        }
        .auto-style21 {
            width: 227px;
            height: 45px;
        }
        .auto-style22 {
            width: 231px;
            height: 45px;
        }
        .auto-style23 {
            height: 45px;
        }
        .auto-style24 {
            width: 116px;
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Categorias"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="ID Categorias"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtIdCategorias" runat="server" Height="20px" Width="187px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td class="auto-style22">
                    <asp:TextBox ID="txtNombre" runat="server" Height="17px" Width="189px"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style23"></td>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Activo"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtActivo" runat="server" Height="18px" Width="184px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnBuscarActivos" runat="server" Height="29px" Text="Buscar Activos" Width="132px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
&nbsp;</td>
                <td class="auto-style17"></td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
                </td>
                <td class="auto-style13"></td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
