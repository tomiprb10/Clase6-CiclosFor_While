<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="while4_aud.aspx.cs" Inherits="clase04.while4_aud" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Clasificación de Calcomanías Vehiculares</title>
    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    
                    <!-- Tarjeta Principal -->
                    <div class="card shadow border-0 rounded-4">
                        <div class="card-header bg-primary text-white text-center py-4 rounded-top-4">
                            <h3 class="mb-0 fw-bold"><i class="bi bi-car-front-fill me-2"></i>Control vehicular</h3>
                            <p class="mb-0 text-white-55 small">Clasificación de calcomanías según el último dígito</p>
                        </div>
                        
                        <div class="card-body p-4">
                            
                            <!-- Número de Autos -->
                            <div class="mb-3">
                                <label for="TxtAutos" class="form-label fw-semibold text-secondary">
                                    <i class="bi bi-123 me-1"></i>Cantidad de autos:
                                </label>
                                <asp:TextBox ID="TxtAutos" runat="server" CssClass="form-control form-control-lg" placeholder="Ej: 3" />
                            </div>

                            <!-- Placas -->
                            <div class="mb-4">
                                <label for="TxtPlacas" class="form-label fw-semibold text-secondary">
                                    <i class="bi bi-card-text me-1"></i>Placas (separadas por comas):
                                </label>
                                <asp:TextBox ID="TxtPlacas" runat="server" CssClass="form-control form-control-lg" placeholder="Ej: ABC-121, XYZ-343, DEF-565" TextMode="MultiLine" Rows="3" />
                                <div class="form-text text-muted">Asegúrate de separar cada placa con una coma.</div>
                            </div>

                            <!-- Botón de Ejecución -->
                            <div class="d-grid mb-4">
                                <asp:Button ID="BtnEjecutar" runat="server" Text="Calcular Calcomanías" CssClass="btn btn-primary btn-lg fw-bold shadow-sm" OnClick="BtnEjecutar_Click" />
                            </div>

                            <!-- Sección de Resultados -->
                            <div class="card bg-white border border-secondary-subtle rounded-3 shadow-sm">
                                <div class="card-body">
                                    <h5 class="card-title text-dark fw-bold mb-3 border-bottom pb-2">
                                        <i class="bi bi-clipboard-data me-2 text-primary"></i>Resultados del Conteo
                                    </h5>
                                    
                                    <asp:Label ID="LblResultado" runat="server" CssClass="d-block text-secondary fs-6">
                                        <span class="text-muted fst-italic">Los resultados aparecerán aquí una vez procesados los datos...</span>
                                    </asp:Label>
                                </div>
                            </div>

                        </div>
                        
                        <div class="card-footer bg-transparent text-center text-muted py-3 small">
                            Desarrollado para la clase de programación web
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Bootstrap 5 JS Bundle CDN -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>