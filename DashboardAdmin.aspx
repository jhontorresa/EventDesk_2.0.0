<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="EventDesk_2._0._0.DashboardAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">

    <h2 class="mb-4">Panel de Administración</h2>

    
    <div class="row g-3">


        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">

                    <h5 class="card-title">Eventos</h5>
                    <p class="card-text">Gestiona creación, edición y eliminación de eventos.</p>

                    <a href="GestionEventos.aspx" class="btn btn-primary w-100">Gestionar Eventos</a>

                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">

                    <h5 class="card-title">Usuarios</h5>
                    <p class="card-text">Administra usuarios del sistema.</p>

                    <a href="GestionUsuarios.aspx" class="btn btn-success w-100">Gestionar Usuarios</a>

                </div>
            </div>
        </div>


        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">

                    <h5 class="card-title">Reportes</h5>
                    <p class="card-text">Genera reportes de eventos e inscripciones.</p>

                    <a href="Reportes.aspx" class="btn btn-warning w-100">Ver Reportes</a>

                </div>
            </div>
        </div>

    </div>

 
    <div class="row mt-4">

        <div class="col-md-6">

            <div class="card shadow-sm">
                <div class="card-body">

                    <h5>Acciones rápidas</h5>

                    <a href="GestionEventos.aspx" class="btn btn-outline-primary w-100 mt-2">Crear Evento</a>
                    <a href="GestionUsuarios.aspx" class="btn btn-outline-success w-100 mt-2">Ver Usuarios</a>
                    <a href="Reportes.aspx" class="btn btn-outline-warning w-100 mt-2">Generar Reporte</a>

                </div>
            </div>

        </div>

      
        <div class="col-md-6">

            <div class="card shadow-sm text-center">
                <div class="card-body">

                    <h5>Sesión</h5>
                    <p class="text-muted">Cerrar sesión del sistema</p>

                    <a href="Login.aspx" class="btn btn-danger w-100">Cerrar Sesión</a>

                </div>
            </div>

        </div>

    </div>

</div>

</asp:Content>