<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EventosDisponibles.aspx.cs" Inherits="EventDesk_2._0._0.EventosDisponibles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container mt-4">

    <h2 class="mb-4">Eventos Disponibles</h2>

    
    <div class="row mb-3">

        <div class="col-md-4">
            <input type="text" class="form-control" placeholder="Buscar eventos..." />
        </div>

        <div class="col-md-3">
            <select class="form-select">
                <option>Todos</option>
                <option>Académico</option>
                <option>Deportivo</option>
                <option>Cultural</option>
            </select>
        </div>

        <div class="col-md-2">
            <button class="btn btn-secondary w-100">Filtrar</button>
        </div>

    </div>

   

    <div class="row g-3">

        <div class="col-md-4">

            <div class="card shadow-sm">

                <div class="card-body">

                    <h5 class="card-title">Nombre del Evento</h5>
                    <p class="card-text">Descripción del evento aquí.</p>

                    <p><strong>Fecha:</strong> 2026-06-10</p>

                    <button class="btn btn-success w-100">Inscribirse</button>

                </div>

            </div>

        </div>

    </div>

</div>
    </asp:Content>