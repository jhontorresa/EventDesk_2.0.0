<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master"  CodeBehind="Login.aspx.cs" Inherits="EventDesk_2._0._0.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">
        <div class="card shadow-lg p-4" style="width: 350px; border-radius: 15px;">
            
            <h3 class="text-center mb-4">Iniciar Sesión</h3>

            <div class="mb-3">
                <label class="form-label">Usuario</label>
                <asp:TextBox ID="txtIdentificacion" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Contraseña</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Ingresar"
                CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMensaje" runat="server" CssClass="text-danger d-block text-center mt-2"></asp:Label>

        </div>
    </div>

</asp:Content>
