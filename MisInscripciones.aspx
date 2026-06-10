<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MisInscripciones.aspx.cs" Inherits="EventDesk_2._0._0.MisInscripciones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-4">

    <h2 class="mb-4">Mis Inscripciones</h2>

   
    <div class="card shadow-sm">

        <div class="card-body">

            <table class="table table-hover">

                <thead>
                    <tr>
                        <th>Evento</th>
                        <th>Tipo</th>
                        <th>Fecha</th>
                        <th>Estado</th>
                        <th>Acción</th>
                    </tr>
                </thead>

                <tbody>

                    <tr>
                        <td>Evento Ejemplo</td>
                        <td>Académico</td>
                        <td>2026-06-10</td>
                        <td><span class="badge bg-success">Activo</span></td>
                        <td>
                            <button class="btn btn-sm btn-danger">Cancelar</button>
                        </td>
                    </tr>

                </tbody>

            </table>

        </div>

    </div>

</div>
      </asp:Content>
