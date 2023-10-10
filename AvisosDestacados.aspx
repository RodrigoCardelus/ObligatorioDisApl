<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AvisosDestacados.aspx.cs" Inherits="AvisosDestacados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 443px;
        }
        .auto-style2 {
            width: 231px;
        }
        .auto-style3 {
            width: 231px;
            height: 32px;
        }
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            width: 268px;
        }
        .auto-style6 {
            height: 32px;
            width: 268px;
        }
        .auto-style7 {
            width: 230px;
        }
        .auto-style8 {
            width: 230px;
            height: 32px;
        }
        .auto-style9 {
            width: 109px;
        }
        .auto-style10 {
            height: 32px;
            width: 109px;
        }
        .auto-style11 {
            width: 123px;
        }
        .auto-style12 {
            height: 32px;
            width: 123px;
        }
        .auto-style19 {
            width: 231px;
            height: 29px;
        }
        .auto-style20 {
            width: 268px;
            height: 29px;
        }
        .auto-style21 {
            width: 230px;
            height: 29px;
        }
        .auto-style22 {
            width: 109px;
            height: 29px;
        }
        .auto-style23 {
            height: 29px;
        }
        .auto-style24 {
            width: 123px;
            height: 29px;
        }
        .auto-style25 {
            width: 231px;
            height: 37px;
        }
        .auto-style26 {
            width: 268px;
            height: 37px;
        }
        .auto-style27 {
            width: 230px;
            height: 37px;
        }
        .auto-style28 {
            width: 109px;
            height: 37px;
        }
        .auto-style29 {
            height: 37px;
        }
        .auto-style30 {
            width: 123px;
            height: 37px;
        }
        .auto-style31 {
            width: 231px;
            height: 35px;
        }
        .auto-style32 {
            width: 268px;
            height: 35px;
        }
        .auto-style33 {
            width: 230px;
            height: 35px;
        }
        .auto-style34 {
            width: 109px;
            height: 35px;
        }
        .auto-style35 {
            height: 35px;
        }
        .auto-style36 {
            width: 123px;
            height: 35px;
        }
        .auto-style37 {
            width: 231px;
            height: 30px;
        }
        .auto-style38 {
            width: 268px;
            height: 30px;
        }
        .auto-style39 {
            width: 230px;
            height: 30px;
        }
        .auto-style40 {
            width: 109px;
            height: 30px;
        }
        .auto-style41 {
            height: 30px;
        }
        .auto-style42 {
            width: 123px;
            height: 30px;
        }
        .auto-style43 {
            width: 231px;
            height: 28px;
        }
        .auto-style44 {
            width: 268px;
            height: 28px;
        }
        .auto-style45 {
            width: 230px;
            height: 28px;
        }
        .auto-style46 {
            width: 109px;
            height: 28px;
        }
        .auto-style47 {
            height: 28px;
        }
        .auto-style48 {
            width: 123px;
            height: 28px;
        }
        .auto-style49 {
            width: 231px;
            height: 34px;
        }
        .auto-style50 {
            width: 268px;
            height: 34px;
        }
        .auto-style51 {
            width: 230px;
            height: 34px;
        }
        .auto-style52 {
            width: 109px;
            height: 34px;
        }
        .auto-style53 {
            height: 34px;
        }
        .auto-style54 {
            width: 123px;
            height: 34px;
        }
        .auto-style55 {
            width: 231px;
            height: 39px;
        }
        .auto-style56 {
            width: 268px;
            height: 39px;
        }
        .auto-style57 {
            width: 230px;
            height: 39px;
        }
        .auto-style58 {
            width: 109px;
            height: 39px;
        }
        .auto-style59 {
            height: 39px;
        }
        .auto-style60 {
            width: 123px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Avisos Destacados"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="ID Avisos"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtIdAvisos" runat="server" Height="16px" Width="225px"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Fecha Inicial"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtFechaInicial" runat="server" Height="16px" Width="230px"></asp:TextBox>
                </td>
                <td class="auto-style21"></td>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Fecha Final"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtFechaFinal" runat="server" Height="20px" Width="229px"></asp:TextBox>
                </td>
                <td class="auto-style39"></td>
                <td class="auto-style40"></td>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtUsuario" runat="server" Height="20px" Width="229px"></asp:TextBox>
                </td>
                <td class="auto-style39"></td>
                <td class="auto-style40"></td>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="ID Categorias"></asp:Label>
                </td>
                <td class="auto-style56">
                    <asp:TextBox ID="txtIDcategorias" runat="server" Height="18px" Width="227px"></asp:TextBox>
                </td>
                <td class="auto-style57"></td>
                <td class="auto-style58"></td>
                <td class="auto-style59"></td>
                <td class="auto-style60"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Cedula"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCedula" runat="server" Height="19px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Descripcion"></asp:Label>
                </td>
                <td class="auto-style50">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="19px" Width="225px"></asp:TextBox>
                </td>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style53"></td>
                <td class="auto-style54"></td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Precio"></asp:Label>
                </td>
                <td class="auto-style50">
                    <asp:TextBox ID="txtPrecio" runat="server" Height="19px" Width="225px"></asp:TextBox>
                </td>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style53"></td>
                <td class="auto-style54"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style8"></td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style4"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
                </td>
                <td class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
                </td>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
                <td class="auto-style29"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
                </td>
                <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLimpiar" runat="server" Height="29px" Text="Limpiar" Width="85px" />
                </td>
                <td class="auto-style33"></td>
                <td class="auto-style34"></td>
                <td class="auto-style35"></td>
                <td class="auto-style36"></td>
            </tr>
            <tr>
                <td class="auto-style37">
                </td>
                <td class="auto-style38">
                </td>
                <td class="auto-style39">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td class="auto-style40"></td>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style43"></td>
                <td class="auto-style44"></td>
                <td class="auto-style45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ConsultaAvisos.aspx">Consulta de Avisos</asp:LinkButton>
                </td>
                <td class="auto-style46"></td>
                <td class="auto-style47"></td>
                <td class="auto-style48"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
