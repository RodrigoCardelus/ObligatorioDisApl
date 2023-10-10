<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="ClientesABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 420px;
        }
        .auto-style2 {
            width: 265px;
        }
        .auto-style3 {
            width: 282px;
        }
        .auto-style4 {
            width: 265px;
            height: 47px;
        }
        .auto-style5 {
            width: 282px;
            height: 47px;
        }
        .auto-style6 {
            height: 47px;
        }
        .auto-style7 {
            width: 265px;
            height: 46px;
        }
        .auto-style8 {
            width: 282px;
            height: 46px;
        }
        .auto-style9 {
            height: 46px;
        }
        .auto-style10 {
            width: 206px;
        }
        .auto-style11 {
            width: 206px;
            height: 47px;
        }
        .auto-style12 {
            width: 206px;
            height: 46px;
        }
        .auto-style13 {
            width: 152px;
        }
        .auto-style14 {
            height: 47px;
            width: 152px;
        }
        .auto-style15 {
            height: 46px;
            width: 152px;
        }
        .auto-style16 {
            width: 265px;
            height: 38px;
        }
        .auto-style17 {
            width: 282px;
            height: 38px;
        }
        .auto-style18 {
            width: 206px;
            height: 38px;
        }
        .auto-style19 {
            width: 152px;
            height: 38px;
        }
        .auto-style20 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Clientes"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Cedula"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCedula" runat="server" Height="19px" Width="199px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtNombre" runat="server" Height="20px" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtDireccion" runat="server" Height="19px" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Telefono"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:ListBox ID="lstTelefono" runat="server" Height="69px" Width="223px">
                        <asp:ListItem Value="UnTelefono">Telefono</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Activo"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtActivo" runat="server" Height="19px" Width="196px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscarActivo" runat="server" Height="28px" Text="Buscar Activo" Width="134px" />
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
                </td>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style9"></td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
