<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="EventDesk_2._0._0.Reportes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">

    <h2 class="mb-4">Reportes del Sistema</h2>

    <div class="row g-3">

        <div class="col-md-6">
            <div class="card shadow-sm">

                <div class="card-body text-center">

                    <h5 class="card-title">Reporte de Eventos</h5>
                    <p class="card-text">Genera un reporte con todos los eventos creados.</p>

                    <button class="btn btn-primary w-100">Generar Reporte</button>

                </div>

            </div>
        </div>

        <div class="col-md-6">
            <div class="card shadow-sm">

                <div class="card-body text-center">

                    <h5 class="card-title">Reporte de Inscripciones</h5>
                    <p class="card-text">Visualiza las inscripciones realizadas por los aprendices.</p>

                    <button class="btn btn-success w-100">Generar Reporte</button>

                </div>

            </div>
        </div>

    </div>

 
    <div class="card shadow-sm mt-4">

        <div class="card-body">

            <h5>Vista previa del reporte</h5>

            <div class="bg-light p-4 text-center">
                <p class="text-muted">Aquí se mostrará el reporte generado (FastReport)</p>
            </div>

        </div>

    </div>

</div>
    </asp:Content>
