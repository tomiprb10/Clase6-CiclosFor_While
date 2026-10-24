<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while6_aud.aspx.cs" Inherits="clase04.while6_aud" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Calculadora de Inversión - Simulación de Intereses</title>
    <style>
        /* Estilos limpios y modernos orientados a la experiencia del usuario */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
            color: #333;
            margin: 0;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .card-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.05);
            width: 100%;
            max-width: 450px;
        }
        h2 {
            margin-top: 0;
            font-size: 1.25rem;
            color: #2c3e50;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            font-size: 0.95rem;
        }
        .input-text {
            width: 100%;
            padding: 10px 12px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 1rem;
            transition: border-color 0.2s;
        }
        .input-text:focus {
            border-color: #3498db;
            outline: none;
        }
        .btn-calculate {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            font-weight: 600;
            transition: background-color 0.2s;
        }
        .btn-calculate:hover {
            background-color: #2980b9;
        }
        .result-container {
            margin-top: 20px;
            font-size: 1rem;
            line-height: 1.5;
        }
        .text-success { color: #27ae60; font-weight: bold; }
        .text-danger { color: #c0392b; font-weight: bold; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card-container">
            <h2>Simulador de Crecimiento de Inversión</h2>
            
            <div class="form-group">
                <asp:Label ID="LblDinero" runat="server" AssociatedControlID="TxtDinero" Text="Dinero invertido en el banco ($):"></asp:Label>
                <asp:TextBox ID="TxtDinero" runat="server" CssClass="input-text" placeholder="Ej: 1000000"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Button ID="BtnCalcular" runat="server" OnClick="BtnCalcular_Click" Text="Calcular Total Anual" CssClass="btn-calculate" />
            </div>

            <div class="result-container">
                <asp:Label ID="LblResultado" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>