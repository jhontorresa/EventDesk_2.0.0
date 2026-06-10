<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EventDesk_2._0._0._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container py-5">

    <div class="text-center mb-5">
        <h1 class="display-4 fw-bold">Bienvenido a EventDesk 2.0</h1>
        <p class="lead">
            Plataforma de gestión de eventos académicos.
        </p>

        <a href="Login.aspx" class="btn btn-primary btn-lg me-2">
            Iniciar Sesión
        </a>

        <a href="Registro.aspx" class="btn btn-outline-primary btn-lg">
            Registrarse
        </a>
    </div>

    <div class="row g-4">

        <div class="col-md-4">
            <div class="card h-100 shadow-sm">
                <div class="card-body text-center">
                    <h3>📅 Eventos</h3>
                    <p>
                        Consulta los eventos disponibles e inscríbete fácilmente.
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card h-100 shadow-sm">
                <div class="card-body text-center">
                    <h3>📝 Inscripciones</h3>
                    <p>
                        Administra y consulta tus inscripciones a eventos.
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card h-100 shadow-sm">
                <div class="card-body text-center">
                    <h3>🤖 Asistente IA</h3>
                    <p>
                        Obtén ayuda y respuestas rápidas mediante inteligencia artificial.
                    </p>
                </div>
            </div>
        </div>

    </div>

</div>

</asp:Content>
