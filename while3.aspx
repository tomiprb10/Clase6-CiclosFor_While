<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while3.aspx.cs" Inherits="clase04.while3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro de Géneros</title>
    <style>
        /* Estilos generales para mejorar la estética visual y la experiencia (UI) */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            color: #333333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Contenedor principal en formato tarjeta (Card) */
        .card-container {
            background: #ffffff;
            width: 100%;
            max-width: 480px;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            box-sizing: border-box;
        }

        h2 {
            margin-top: 0;
            color: #2c3e50;
            font-size: 22px;
            text-align: center;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #7f8c8d;
            font-size: 14px;
            margin-bottom: 25px;
        }

        /* Estructura de los campos del formulario */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #34495e;
            font-size: 14px;
        }

        .input-text {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ccd1d9;
            border-radius: 8px;
            font-size: 15px;
            box-sizing: border-box;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .input-text:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
        }

        .help-text {
            font-size: 12px;
            color: #95a5a6;
            margin-top: 5px;
            display: block;
        }

        /* Botón de acción principal */
        .btn-ejecutar {
            width: 100%;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.1s;
            margin-top: 10px;
        }

        .btn-ejecutar:hover {
            background-color: #2980b9;
        }

        .btn-ejecutar:active {
            transform: scale(0.98);
        }

        /* Caja de Resultados */
        .result-box {
            margin-top: 25px;
            padding: 15px;
            background-color: #f8f9fa;
            border-left: 4px solid #3498db;
            border-radius: 4px;
            font-size: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card-container">
            <h2>Registro de Grupo</h2>
            <div class="subtitle">Ingresa la información solicitada de forma sencilla</div>

            <!-- Cantidad de personas -->
            <div class="form-group">
                <asp:Label ID="LblAlumnos" runat="server" Text="¿Cuántas personas conforman el grupo?"></asp:Label>
                <asp:TextBox ID="TxtAlumnos" runat="server" CssClass="input-text" placeholder="Ej. 5"></asp:TextBox>
            </div>

            <!-- Género de cada persona -->
            <div class="form-group">
                <asp:Label ID="LblGenero" runat="server" Text="Género de cada persona (separados por coma):"></asp:Label>
                <asp:TextBox ID="TxtGenero" runat="server" CssClass="input-text" placeholder="Ej. hombre, mujer, hombre"></asp:TextBox>
                <span class="help-text">Escribe exactamente la palabra hombre o mujer separadas por comas.</span>
            </div>

            <!-- Botón -->
            <div class="form-group">
                <asp:Button ID="BtnEjecutar" runat="server" OnClick="BtnEjecutar_Click" Text="Calcular Resultados" CssClass="btn-ejecutar" />
            </div>

            <!-- Resultado -->
            <div class="form-group">
                <asp:Label ID="LblResultado" runat="server" CssClass="result-box" style="display:block;"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>