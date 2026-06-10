<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EventDesk_2._0._0.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Iniciar Sesión</h2>

            <asp:TextBox
                ID="txtIdentificacion"
                runat="server"
                placeholder="Identificación">
            </asp:TextBox>

            <br /><br />

            <asp:TextBox
                ID="txtPassword"
                runat="server"
                TextMode="Password"
                placeholder="Contraseña">
            </asp:TextBox>

            <br /><br />

            <asp:Button
                ID="btnLogin"
                runat="server"
                Text="Ingresar"
                OnClick="btnLogin_Click" />

            <br /><br />

            <asp:Label
                ID="lblMensaje"
                runat="server">
            </asp:Label>
        </div>
    </form>
</body>
</html>
