<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarEvento.aspx.cs" Inherits="EventDesk_2._0._0.EditarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h2>Editar Evento</h2>

    <div class="mb-3">
        <label>Nombre del evento</label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="mb-2">

    <label>Tipo de Evento</label>
    <asp:TextBox ID="txtTipoEvento" runat="server" CssClass="form-control"></asp:TextBox>
    </div>

    
     <div class="mb-2">
     <label>Tipo de Inscripción</label>
     <asp:TextBox ID="txtTipoInscripcion" runat="server" CssClass="form-control"></asp:TextBox>
     </div>

     <div class="mb-2">
     <label>Máximo Integrantes</label>
     <asp:TextBox ID="txtMaximo" runat="server" CssClass="form-control"></asp:TextBox>
     </div>

     <div class="mb-2">
     <label>Lugar</label>
     <asp:TextBox ID="txtLugar" runat="server" CssClass="form-control"></asp:TextBox>
     </div>

    <div class="mb-2">
    <label>Fecha Evento</label>
    <asp:TextBox ID="txtFechaEvento" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    </div>


    <asp:Button 
        ID="btnGuardar" 
        runat="server" 
        Text="Guardar cambios"
        CssClass="btn btn-success"
        OnClick="btnGuardar_Click" />


</asp:Content>
