<%@ Page Language="C#"   MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="EventDesk_2._0._0.Registro" %>

<asp:Content ID="content1"ContentPlaceHolderID="MainContent" runat="server">
    
<div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">

    <div class="card shadow-lg p-4" style="width: 400px; border-radius: 15px;">

        <h3 class="text-center mb-4">Registro</h3>

        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control mb-2" placeholder="Nombre completo"></asp:TextBox>

        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control mb-2" placeholder="Usuario"></asp:TextBox>

        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-2" placeholder="Email"></asp:TextBox>

        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control mb-2" placeholder="Contraseña"></asp:TextBox>

        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control mb-3" placeholder="Confirmar contraseña"></asp:TextBox>

        <asp:Button ID="btnRegister" runat="server" Text="Registrarse"
            CssClass="btn btn-success w-100" />
       <asp:Label ID="lblMensaje" runat="server" CssClass="d-block text-center mt-2"></asp:Label>

        <div class="text-center mt-3">
            <a href="Login.aspx">¿Ya tienes cuenta? Inicia sesión</a>
        </div>

        

    </div>

</div>
</asp:Content>
