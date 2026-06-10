<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestionEventos.aspx.cs" Inherits="EventDesk_2._0._0.GestionEventos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div class="container mt-4">

    <h2 class="mb-4">Gestión de Eventos</h2>

    
    <div class="mb-3">
        <button class="btn btn-primary">+ Crear Evento</button>
    </div>

   

    <div class="row mb-3">

        <div class="col-md-4">
            <input type="text" class="form-control" placeholder="Buscar evento..." />
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

    
    <div class="card shadow-sm">

        <div class="card-body">

            <table class="table table-hover">

                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Tipo</th>
                        <th>Fecha</th>
                        <th>Cupos</th>
                        <th>Acciones</th>
                    </tr>
                </thead>

                <tbody>

                    <tr>
                        <td>Evento Ejemplo</td>
                        <td>Académico</td>
                        <td>2026-06-10</td>
                        <td>30</td>
                        <td>
                            <button class="btn btn-sm btn-warning">Editar</button>
                            <button class="btn btn-sm btn-danger">Eliminar</button>
                        </td>
                    </tr>

                </tbody>

            </table>

        </div>

    </div>

</div>
    </asp:Content>