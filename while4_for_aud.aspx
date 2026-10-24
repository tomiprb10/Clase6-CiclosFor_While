<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while4_for_aud.aspx.cs" Inherits="clase04.while4_for_aud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Auditoría de Calcomanías - Ciclo For</title>
    <style>
        :root {
            --primary: #4f46e5;
            --primary-hover: #4338ca;
            --bg-color: #f3f4f6;
            --card-bg: #ffffff;
            --text-main: #1f2937;
            --text-muted: #6b7280;
            --border-color: #d1d5db;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
        }

        .container {
            background-color: var(--card-bg);
            padding: 35px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            width: 100%;
            max-width: 550px;
            box-sizing: border-box;
        }

        h2 {
            margin-top: 0;
            color: var(--primary);
            font-size: 1.4rem;
            margin-bottom: 24px;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            font-size: 0.95rem;
        }

        .textbox {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid var(--border-color);
            border-radius: 6px;
            font-size: 1rem;
            box-sizing: border-box;
            transition: border-color 0.2s, box-shadow 0.2s;
        }

        .textbox:focus {
            outline: none;
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
        }

        .btn {
            background-color: var(--primary);
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 6px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.2s;
            margin-top: 10px;
        }

        .btn:hover {
            background-color: var(--primary-hover);
        }

        .result-box {
            margin-top: 25px;
            padding: 15px;
            background-color: #f8fafc;
            border-left: 4px solid var(--primary);
            border-radius: 4px;
            font-size: 0.95rem;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Auditoría de Vehículos y Calcomanías</h2>
            
            <div class="form-group">
                <asp:Label ID="LblAutos" runat="server" Text="Cantidad de autos que ingresaron a la ciudad:" AssociatedControlID="TxtAutos"></asp:Label>
                <asp:TextBox ID="TxtAutos" runat="server" CssClass="textbox" placeholder="Ej. 3"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="LblPlaca" runat="server" Text="Placas de los automóviles (separadas por comas):" AssociatedControlID="TxtPlacas"></asp:Label>
                <asp:TextBox ID="TxtPlacas" runat="server" CssClass="textbox" placeholder="Ej. ABC1, XYZ2, LMN3"></asp:TextBox>
            </div>

            <asp:Button ID="BtnCalcular" runat="server" OnClick="BtnCalcular_Click" Text="Ejecutar Análisis" CssClass="btn" />

            <div class="result-box">
                <asp:Label ID="LblResultado" runat="server" Text="Los resultados del análisis aparecerán aquí."></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>