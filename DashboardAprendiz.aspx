<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DashboardAprendiz.aspx.cs" Inherits="EventDesk_2._0._0.DashboardAprendiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" OnItemDataBound= "rptEventos_ItemDataBound">

    <asp:Label 
        ID="lblMensaje" 
        runat="server" 
        Font-Bold="true"
        ForeColor="Green">
    </asp:Label>


    <div class="container mt-4">

        <h2 class="mb-4">Panel del Aprendiz</h2>

        <h4 class="mb-3">Eventos Disponibles</h4>

        <div class="row g-3">

            <asp:Repeater ID="rptEventos" runat="server">
                <ItemTemplate>

                    <div class="col-md-4">

                        <div class="card shadow-sm h-100">

                            <div class="card-body">

                                <h5 class="card-title"><%# Eval("Nombre") %></h5>

                                <p class="card-text"><%# Eval("TipoEvento") %></p>

                                <p>
                                  <strong>Fecha evento:</strong>
                                  <%# Convert.ToDateTime(Eval("FechaEvento")).ToString("dd/MM/yyyy") %>
                                     </p>

                                 </p>

                                  <strong>Hora evento:</strong>
                                  <%# Eval("HoraEvento") %>
                                 </p>

                                 </p>
                                 <strong>Fin del evento:</strong>
                                 <%# Convert.ToDateTime (Eval("fechaFinEvento")).ToString("dd/MM/yyyy") %>
                                 </p>

                                 </p>
                                  <strong>Inicio inscripción:</strong>
                                  <%# Convert.ToDateTime (Eval("fechaInicio")).ToString("dd/MM/yyyy") %>
                                </p>

                                 </p>

                                <strong>Hora inicio inscripción:</strong>
                                 <%# Eval("horaInicio") %>
                                 </p>

                                <p>
                                <strong>Fin inscripción:</strong>
                                <%# Convert.ToDateTime(Eval("fechaFin")).ToString("dd/MM/yyyy") %>
                                </p>

                                <asp:Button
                                    ID="btnInscribirse"
                                    runat="server"
                                    Text="Inscribirse"
                                    CssClass="btn btn-success w-100"
                                    CommandArgument='<%# Eval("Id") %>'
                                    OnClick="btnInscribirse_Click" />

                            </div>

                        </div>

                    </div>

                </ItemTemplate>
            </asp:Repeater>

        </div>

    </div>

</asp:Content>