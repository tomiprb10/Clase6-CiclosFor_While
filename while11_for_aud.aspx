<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while11_for_aud.aspx.cs" Inherits="clase04.while11_for_aud" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sistema de Control Biométrico de Pesos</title>
    <style>
        :root {
            --primary: #0067C0;
            --primary-hover: #004578;
            --bg-color: #F3F4F6;
            --card-bg: #FFFFFF;
            --text-main: #1F2937;
            --text-secondary: #4B5563;
            --border-color: #E5E7EB;
        }
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            margin: 0;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
        }
        .app-container {
            width: 100%;
            max-width: 800px;
            background: var(--card-bg);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05), 0 4px 6px rgba(0, 0, 0, 0.02);
        }
        h2 {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 8px;
            color: var(--text-main);
            text-align: center;
        }
        .subtitle {
            font-size: 14px;
            color: var(--text-secondary);
            text-align: center;
            margin-bottom: 32px;
        }
        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 24px;
            padding-bottom: 20px;
            border-bottom: 1px solid var(--border-color);
        }
        .form-grid:last-of-type {
            border-bottom: none;
        }
        .input-group {
            display: flex;
            flex-direction: column;
            grid-column: span 2;
        }
        @media(min-width: 640px) {
            .input-group.full {
                grid-column: span 2;
            }
            .input-group.half {
                grid-column: span 1;
            }
        }
        label {
            font-size: 13px;
            font-weight: 600;
            color: var(--text-secondary);
            margin-bottom: 6px;
        }
        .help-text {
            font-size: 11px;
            color: #9CA3AF;
            margin-top: 4px;
        }
        .text-box {
            padding: 12px 14px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            font-size: 14px;
            transition: all 0.2s ease;
            outline: none;
            background-color: #FAFAFA;
        }
        .text-box:focus {
            border-color: var(--primary);
            background-color: #FFFFFF;
            box-shadow: 0 0 0 3px rgba(0, 103, 192, 0.15);
        }
        .btn-action {
            background-color: var(--primary);
            color: white;
            border: none;
            padding: 14px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.2s ease, transform 0.1s ease;
            margin-top: 10px;
        }
        .btn-action:hover {
            background-color: var(--primary-hover);
        }
        .btn-action:active {
            transform: scale(0.99);
        }
        .results-section {
            margin-top: 30px;
            display: flex;
            flex-direction: column;
            gap: 12px;
        }
        .result-card {
            padding: 14px 18px;
            border-radius: 8px;
            font-size: 14px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-left: 4px solid #ccc;
            background: #F9FAFB;
        }
        .result-card.success { border-left-color: #10B981; background: #ECFDF5; color: #065F46; }
        .result-card.warning { border-left-color: #F59E0B; background: #FFFBEB; color: #92400E; }
        .result-card.error { border-left-color: #EF4444; background: #FEF2F2; color: #991B1B; }
        .result-card.neutral { border-left-color: #6B7280; background: #F3F4F6; color: #374151; }
        .badge {
            font-weight: 700;
            padding: 2px 8px;
            border-radius: 4px;
        }
        .badge.up { background: #FEE2E2; color: #DC2626; }
        .badge.down { background: #D1FAE5; color: #059669; }
        .sub-info {
            font-size: 12px;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="app-container">
            <h2>Panel de Control Biométrico</h2>
            <div class="subtitle">Evaluación analítica y comparativa de rendimiento de peso corporal</div>

            <!-- Persona 1 -->
            <div class="form-grid">
                <div class="input-group full">
                    <label>Pesos registrados (Persona 1)</label>
                    <asp:TextBox ID="TxtP1" runat="server" CssClass="text-box" placeholder="Ej: 70.5, 71.0, 69.8"></asp:TextBox>
                    <span class="help-text">Ingrese los valores numéricos separados estrictamente por comas.</span>
                </div>
                <div class="input-group full">
                    <label>Peso de referencia anterior (kg)</label>
                    <asp:TextBox ID="TxtAnterior1" runat="server" CssClass="text-box" placeholder="Ej: 70.0"></asp:TextBox>
                </div>
            </div>

            <!-- Persona 2 -->
            <div class="form-grid">
                <div class="input-group full">
                    <label>Pesos registrados (Persona 2)</label>
                    <asp:TextBox ID="TxtP2" runat="server" CssClass="text-box" placeholder="Ej: 65.0, 64.8, 65.2"></asp:TextBox>
                </div>
                <div class="input-group full">
                    <label>Peso de referencia anterior (kg)</label>
                    <asp:TextBox ID="TxtAnterior2" runat="server" CssClass="text-box" placeholder="Ej: 65.5"></asp:TextBox>
                </div>
            </div>

            <!-- Persona 3 -->
            <div class="form-grid">
                <div class="input-group full">
                    <label>Pesos registrados (Persona 3)</label>
                    <asp:TextBox ID="TxtP3" runat="server" CssClass="text-box" placeholder="Ej: 80.0, 79.5, 79.8"></asp:TextBox>
                </div>
                <div class="input-group full">
                    <label>Peso de referencia anterior (kg)</label>
                    <asp:TextBox ID="TxtAnterior3" runat="server" CssClass="text-box" placeholder="Ej: 80.5"></asp:TextBox>
                </div>
            </div>

            <!-- Persona 4 -->
            <div class="form-grid">
                <div class="input-group full">
                    <label>Pesos registrados (Persona 4)</label>
                    <asp:TextBox ID="TxtP4" runat="server" CssClass="text-box" placeholder="Ej: 58.0, 58.5, 58.2"></asp:TextBox>
                </div>
                <div class="input-group full">
                    <label>Peso de referencia anterior (kg)</label>
                    <asp:TextBox ID="TxtAnterior4" runat="server" CssClass="text-box" placeholder="Ej: 58.0"></asp:TextBox>
                </div>
            </div>

            <!-- Persona 5 -->
            <div class="form-grid">
                <div class="input-group full">
                    <label>Pesos registrados (Persona 5)</label>
                    <asp:TextBox ID="TxtP5" runat="server" CssClass="text-box" placeholder="Ej: 72.0, 71.5, 71.8"></asp:TextBox>
                </div>
                <div class="input-group full">
                    <label>Peso de referencia anterior (kg)</label>
                    <asp:TextBox ID="TxtAnterior5" runat="server" CssClass="text-box" placeholder="Ej: 72.5"></asp:TextBox>
                </div>
            </div>

            <!-- Botón de Ejecución -->
            <asp:Button ID="BtnCalcular" runat="server" OnClick="BtnCalcular_Click" Text="Procesar Análisis Comparativo" CssClass="btn-action" />

            <!-- Contenedor de Resultados -->
            <div class="results-section">
                <asp:Label ID="LblResultado" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>