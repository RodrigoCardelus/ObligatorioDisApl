<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AvisosComunes.aspx.cs" Inherits="AvisosComunes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 472px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 265px;
        }
        .auto-style10 {
            width: 265px;
            height: 39px;
        }
        .auto-style12 {
            height: 39px;
        }
        .auto-style14 {
            width: 265px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style18 {
            width: 265px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style22 {
            width: 265px;
            height: 35px;
        }
        .auto-style24 {
            height: 35px;
        }
        .auto-style25 {
            height: 20px;
            width: 1141px;
        }
        .auto-style27 {
            width: 265px;
            height: 32px;
        }
        .auto-style29 {
            height: 32px;
        }
        .auto-style31 {
            width: 265px;
            height: 34px;
        }
        .auto-style33 {
            height: 34px;
        }
        .auto-style35 {
            width: 265px;
            height: 31px;
        }
        .auto-style37 {
            height: 31px;
        }
        .auto-style39 {
            width: 265px;
            height: 30px;
        }
        .auto-style41 {
            height: 30px;
        }
        .auto-style42 {
            height: 513px;
            width: 1100px;
            margin-top: 8px;
        }
        .auto-style48 {
            width: 265px;
            height: 33px;
        }
        .auto-style50 {
            height: 33px;
        }
        .auto-style52 {
            margin-left: 4px;
        }
        .auto-style54 {
            width: 265px;
            height: 3px;
        }
        .auto-style56 {
            height: 3px;
        }
        .auto-style57 {
            margin-left: 0px;
        }
        .auto-style58 {
            width: 193px;
            height: 3px;
        }
        .auto-style59 {
            width: 193px;
            height: 33px;
        }
        .auto-style60 {
            width: 193px;
            height: 32px;
        }
        .auto-style61 {
            width: 193px;
            height: 34px;
        }
        .auto-style62 {
            width: 193px;
            height: 31px;
        }
        .auto-style63 {
            width: 193px;
            height: 39px;
        }
        .auto-style64 {
            width: 193px;
            height: 30px;
        }
        .auto-style65 {
            width: 193px;
            height: 36px;
        }
        .auto-style66 {
            width: 193px;
            height: 23px;
        }
        .auto-style67 {
            width: 193px;
            height: 35px;
        }
        .auto-style68 {
            width: 193px;
        }
        .auto-style69 {
            width: 266px;
            height: 3px;
        }
        .auto-style70 {
            width: 266px;
            height: 33px;
        }
        .auto-style71 {
            width: 266px;
            height: 32px;
        }
        .auto-style72 {
            width: 266px;
            height: 34px;
        }
        .auto-style73 {
            width: 266px;
            height: 31px;
        }
        .auto-style74 {
            width: 266px;
            height: 39px;
        }
        .auto-style75 {
            width: 266px;
            height: 30px;
        }
        .auto-style76 {
            width: 266px;
            height: 36px;
        }
        .auto-style77 {
            width: 266px;
            height: 23px;
        }
        .auto-style78 {
            width: 266px;
            height: 35px;
        }
        .auto-style79 {
            width: 266px;
        }
    </style>
</head>
<body style="height: 533px; width: 1116px">
    <form id="form1" runat="server">
    <div class="auto-style25">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Height="41px" Text="Avisos Comunes" Width="145px"></asp:Label>
        <table class="auto-style1">
            <tr>
                <td class="auto-style58">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="id_Avisos" runat="server" Text="ID Avisos"></asp:Label>
                </td>
                <td class="auto-style54">
                    <br />
                    &nbsp;<asp:TextBox ID="txtID_Avisos" runat="server" CssClass="auto-style57" Height="16px" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style69">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                </td>
                <td class="auto-style56"></td>
                <td class="auto-style56"></td>
            </tr>
            <tr>
                <td class="auto-style59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Fecha Inicial"></asp:Label>
                </td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtFechaInicial" runat="server" Height="16px" Width="202px" CssClass="auto-style52"></asp:TextBox>
                </td>
                <td class="auto-style70"></td>
                <td class="auto-style50"></td>
                <td class="auto-style50"></td>
            </tr>
            <tr>
                <td class="auto-style60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Fecha Final"></asp:Label>
                </td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtFechaFinal" runat="server" Height="19px" Width="210px"></asp:TextBox>
                </td>
                <td class="auto-style71"></td>
                <td class="auto-style29"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Usuario" runat="server" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style31">
                    <asp:TextBox ID="txtUsuario" runat="server" Height="18px" Width="212px"></asp:TextBox>
                </td>
                <td class="auto-style72"></td>
                <td class="auto-style33"></td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style62">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="ID Categorias"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtIdCategorias" runat="server" Height="18px" Width="212px"></asp:TextBox>
                </td>
                <td class="auto-style73"></td>
                <td class="auto-style37"></td>
                <td class="auto-style37"></td>
            </tr>
            <tr>
                <td class="auto-style63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Cedula" runat="server" Text="Cedula"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCedula" runat="server" Height="16px" Width="207px"></asp:TextBox>
                </td>
                <td class="auto-style74"></td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Texto"></asp:Label>
                </td>
                <td class="auto-style39">
                  
                    <asp:TextBox ID="txtTexto" runat="server" Height="18px" Width="197px"></asp:TextBox>
                  
                </td>
                <td class="auto-style75">&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style41"></td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style65"></td>
                <td class="auto-style14"></td>
                <td class="auto-style76"></td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAgregar" runat="server" Height="31px" Text="Agregar" Width="78px" OnClick="btnAgregar_Click" />
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnModificar" runat="server" Height="28px" Text="Modificar" Width="84px" OnClick="btnModificar_Click" />
                </td>
                <td class="auto-style77"></td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnEliminar" runat="server" Height="34px" Text="Eliminar" Width="74px" OnClick="btnEliminar_Click" />
                </td>
                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" />
                </td>
                <td class="auto-style78"></td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style65">
                </td>
                <td class="auto-style14">
                </td>
                <td class="auto-style76">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblError" runat="server"></asp:Label>
&nbsp;</td>
                <td class="auto-style16"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style67">
                </td>
                <td class="auto-style22">
                </td>
                <td class="auto-style78">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/ConsultaAvisos.aspx">Consulta de Avisos</asp:LinkButton>
                </td>
                <td class="auto-style24"></td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style68">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style79">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <p class="auto-style42">
&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
