<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while1.aspx.cs" Inherits="clase04.while1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cálculo de Comisiones</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <!-- PASO 1: Ingresar número de vendedores -->
            <tr>
                <td>
                    <asp:Label ID="LblMensajePrincipal" runat="server" Text="Ingrese la cantidad de vendedores:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtVendedores" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnIniciar" runat="server" Text="Iniciar" OnClick="BtnIniciar_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>

            <!-- PASO 2: Ingresar datos de cada vendedor (Inicialmente oculto) -->
            <tr id="FilaSueldo" runat="server" visible="false">
                <td>
                    <asp:Label ID="LblSueldo" runat="server" Text="Sueldo base:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtSueldoBase" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr id="FilaV1" runat="server" visible="false">
                <td>
                    <asp:Label ID="LblV1" runat="server" Text="Valor venta 1:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtVenta1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr id="FilaV2" runat="server" visible="false">
                <td>
                    <asp:Label ID="LblV2" runat="server" Text="Valor venta 2:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtVenta2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr id="FilaV3" runat="server" visible="false">
                <td>
                    <asp:Label ID="LblV3" runat="server" Text="Valor venta 3:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtVenta3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr id="FilaBotonCalcular" runat="server" visible="false">
                <td>
                    <asp:Button ID="BtnCalcular" runat="server" Text="Siguiente Vendedor" OnClick="BtnCalcular_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>

            <!-- RESULTADOS FINALES -->
            <tr>
                <td colspan="2">
                    <asp:Label ID="LblResultado" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>