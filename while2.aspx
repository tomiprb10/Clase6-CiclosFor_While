<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while2.aspx.cs" Inherits="clase04.while2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="LblMensajePrincipal" runat="server" Text="Ingrese la cantidad de obreros:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtObreros" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>

                <tr id="FilaHoras" runat="server">
                    <td>
                        <asp:Label ID="LblHoras" runat="server" Text="Ingrese las horas trabajadas del obrero:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtHoras" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr id="FilaBotonCalcular" runat="server" >
                    <td>
                        <asp:Button ID="BtnCalcular" runat="server" Text="Ejecutar" OnClick="BtnCalcular_Click" />
                    </td>
                    <td>
                        <asp:Label ID="LblResultado" runat="server"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
