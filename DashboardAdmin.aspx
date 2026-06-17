<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="EventDesk_2._0._0.DashboardAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">

    <h2 class="mb-4">Panel de Administración</h2>

    
    <div class="row g-3">


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

                    <asp:Repeater ID="rptEventos" runat="server" OnItemCommand="rptEventos_ItemCommand">
        <ItemTemplate>
            <tr>
                <td><%# Eval("Nombre") %></td>
                <td><%# Eval("tipoEvento") %></td>
                <td><%# Eval("fechaEvento", "{0:yyyy-MM-dd}") %></td>
                <td><%# Eval("maximoIntegrantes") %></td>

                <td>
                       <asp:LinkButton 
                        ID="btnEditar"
                        runat="server"
                        CssClass="btn btn-sm btn-warning"
                        CommandName="Editar"
                        CommandArgument='<%# Eval("Id") %>'>
                        Editar
                    </asp:LinkButton>

                  
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>

                </tbody>

            </table>

        </div>

    </div>

</div>



     <div class="row mt-5 justify-content-center">

    <div class="col-md-4">

        <div class="card shadow-sm">

            <div class="card-body text-center">

                <h5 class="card-title">Reportes</h5>

                <p class="card-text">
                    Genera reportes de eventos e inscripciones.
                </p>

                <a href="Reportes.aspx"
                   class="btn btn-warning w-100">
                    Ver Reportes
                </a>

            </div>

        </div>

    </div>

</div>

    </div>

 
    <div class="row mt-4">

        <div class="col-md-6">


        </div>

      
        <div class="col-md-6">

           

        </div>

    </div>

</div>

</asp:Content>