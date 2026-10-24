<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while11_aud.aspx.cs" Inherits="clase04.while11_aud" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Control de Promedio de Pesos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 40px;
            color: #333;
        }
        .container {
            max-width: 700px;
            background: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 25px;
        }
        .form-table {
            width: 100%;
            border-collapse: collapse;
        }
        .form-table td {
            padding: 10px;
            vertical-align: middle;
        }
        .label-col {
            width: 55%;
            font-weight: bold;
            color: #555;
            font-size: 14px;
        }
        .input-col {
            width: 45%;
        }
        .text-box {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .help-text {
            font-size: 11px;
            color: #888;
            display: block;
            margin-top: 3px;
        }
        .btn-calcular {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            margin-top: 15px;
        }
        .btn-calcular:hover {
            background-color: #2980b9;
        }
        .resultado-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Calculadora de Control de Peso</h2>
            <table class="form-table">
                <!-- Persona 1 -->
                <tr>
                    <td class="label-col">Pesos de la persona 1:<span class="help-text">Separe con comas (ej: 70, 69.5, 71)</span></td>
                    <td class="input-col"><asp:TextBox ID="TxtP1" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="label-col">Peso anterior de la persona 1:</td>
                    <td class="input-col"><asp:TextBox ID="TxtAnterior1" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>

                <!-- Persona 2 -->
                <tr>
                    <td class="label-col">Pesos de la persona 2:</td>
                    <td class="input-col"><asp:TextBox ID="TxtP2" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="label-col">Peso anterior de la persona 2:</td>
                    <td class="input-col"><asp:TextBox ID="TxtAnterior2" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>

                <!-- Persona 3 -->
                <tr>
                    <td class="label-col">Pesos de la persona 3:</td>
                    <td class="input-col"><asp:TextBox ID="TxtP3" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="label-col">Peso anterior de la persona 3:</td>
                    <td class="input-col"><asp:TextBox ID="TxtAnterior3" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>

                <!-- Persona 4 -->
                <tr>
                    <td class="label-col">Pesos de la persona 4:</td>
                    <td class="input-col"><asp:TextBox ID="TxtP4" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="label-col">Peso anterior de la persona 4:</td>
                    <td class="input-col"><asp:TextBox ID="TxtAnterior4" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>

                <!-- Persona 5 -->
                <tr>
                    <td class="label-col">Pesos de la persona 5:</td>
                    <td class="input-col"><asp:TextBox ID="TxtP5" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="label-col">Peso anterior de la persona 5:</td>
                    <td class="input-col"><asp:TextBox ID="TxtAnterior5" runat="server" CssClass="text-box"></asp:TextBox></td>
                </tr>

                <!-- Botón -->
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtnCalcular" runat="server" OnClick="BtnCalcular_Click" Text="Calcular Resultados" CssClass="btn-calcular" />
                    </td>
                </tr>

                <!-- Resultados -->
                <tr>
                    <td colspan="2" class="resultado-container">
                        <asp:Label ID="LblResultado" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
