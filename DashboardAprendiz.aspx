<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashboardAprendiz.aspx.cs" Inherits="EventDesk_2._0._0.DashboardAprendiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">

    <h2 class="mb-4">Panel del Aprendiz</h2>

    <div class="row g-3">

        
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-body text-center">

                    <h5 class="card-title">Eventos Disponibles</h5>
                    <p class="card-text">Explora e inscríbete en los eventos disponibles.</p>

                    <a href="EventosDisponibles.aspx" class="btn btn-primary w-100">Ver Eventos</a>

                </div>
            </div>
        </div>

        
        <div class="col-md-6">
            <div class="card shadow-sm">
                <div class="card-body text-center">

                    <h5 class="card-title">Mis Inscripciones</h5>
                    <p class="card-text">Consulta o cancela tus eventos inscritos.</p>

                    <a href="MisInscripciones.aspx" class="btn btn-success w-100">Ver Inscripciones</a>

                </div>
            </div>
        </div>

    </div>

    
    <div class="row mt-4">

        <div class="col-md-12">
            <div class="card shadow-sm">
                <div class="card-body text-center">

                    <h5>Acciones rápidas</h5>

                    <a href="EventosDisponibles.aspx" class="btn btn-outline-primary mt-2">Buscar Eventos</a>
                    <a href="MisInscripciones.aspx" class="btn btn-outline-success mt-2">Ver Mis Eventos</a>

                </div>
            </div>
        </div>

    </div>

   
    <div class="text-center mt-4">
        <a href="Login.aspx" class="btn btn-danger">Cerrar Sesión</a>
    </div>

</div>

</asp:Content>