<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="Vistas.MainMenu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">  
        .recuadro-titulo {
            border: 2px solid #f8371f;
            padding: 50px;
            border-radius: 10px;
            background-color: #f8371f;
            display: inline-block;
        }
        .recuadro-enlace {
            border: 1px solid #f8371f;
            padding: 5px;
            border-radius: 5px;
            background-color: #f8371f;
            display: inline-block;
            margin: 5px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style6, .auto-style9, .auto-style18, .auto-style31, .auto-style32, .auto-style33 {
            text-align: center;
            width: 584px;
        }
        .auto-style20, .auto-style21, .auto-style22, .auto-style23, .auto-style27, .auto-style38, .auto-style39 {
            width: 350px;
        }
        .auto-style21 {
            height: 47px;
        }
        .auto-style22 {
            height: 26px;
        }
        .auto-style23 {
            height: 25px;
        }
        .auto-style28, .auto-style33, .auto-style39 {
            color: #800080;
        }
        .auto-style31 {
            color: #000000;
        }
        .auto-style37 {
            border: 1px solid #f8371f;
            padding: 5px;
            border-radius: 5px;
            background-color: #f8371f;
            display: inline-block;
            margin: 5px;
            color: #FFFFFF;
            font-family: Corbel;
            text-decoration: none;
        }
        .centered-image {
            display: inline-block;
            width: 900px;
            height: auto;
            border-radius: 10px;
        }
        .image-container {
            text-align: center;
            margin: 20px 0;
        }
        .overlay-buttons {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style31">
                    <h2 class="auto-style37">¡Bienvenido al Hotel Las Hayas Ushuaia Resort!</h2>
                </td>
                <td class="auto-style38">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style31">
                    <div class="image-container">
                        <asp:Image ID="MainImage" runat="server" ImageUrl="https://media.staticontent.com/media/pictures/03086d53-e8f7-4f8e-bdc7-2065e9ffae81" CssClass="centered-image" />
                        <div class="overlay-buttons">
                            <asp:LinkButton ID="Registrarse" runat="server" OnClick="Registrarse_Click" CssClass="auto-style37">Registrarse</asp:LinkButton>
                            <asp:LinkButton ID="IniciarSesión" runat="server" OnClick="IniciarSesión_Click" CssClass="auto-style37">Iniciar Sesión</asp:LinkButton>
                            <asp:LinkButton ID="Administrador" runat="server" OnClick="Administrador_Click" CssClass="auto-style37">Iniciar Sesión Administrador</asp:LinkButton>
                        </div>
                    </div>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style18">
                    <asp:Label ID="LblSession" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style22"></td>
            </tr>
        </table>
    </form>
</body>
</html>
