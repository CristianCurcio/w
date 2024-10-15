<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="Vistas.Reserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
            width: 97px;
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
        .auto-style44 {
            height: 7px;
            width: 97px;
        }
        .auto-style45 {
            height: 7px;
        }
        .auto-style47 {
            height: 13px;
        }
        .auto-style48 {
            height: 26px;
            width: 659px;
        }
        .auto-style49 {
            height: 7px;
            width: 659px;
        }
        .auto-style50 {
            height: 13px;
            width: 659px;
        }
        .auto-style51 {
            width: 659px;
        }
        .auto-style52 {
            height: 26px;
            width: 1351px;
        }
        .auto-style53 {
            height: 7px;
            width: 1351px;
            text-align: center;
        }
        .auto-style54 {
            height: 13px;
            width: 1351px;
            text-align: center;
        }
        .auto-style56 {
            text-align: center;
        }
        .auto-style57 {
            width: 1351px;
            text-align: center;
        }
        .auto-style58 {
            height: 26px;
            width: 10px;
        }
        .auto-style59 {
            height: 7px;
            width: 10px;
        }
        .auto-style60 {
            height: 13px;
            width: 10px;
        }
        .auto-style61 {
            height: 13px;
            width: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style52">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<div class="auto-style56">
                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="ReservaID">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="ReservaIDLabel" runat="server" Text='<%# Eval("ReservaID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NombreUsuarioLabel" runat="server" Text='<%# Eval("NombreUsuario") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CheckInLabel" runat="server" Text='<%# Eval("CheckIn") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CheckOutLabel" runat="server" Text='<%# Eval("CheckOut") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ServiciosLabel" runat="server" Text='<%# Eval("Servicios") %>' />
                            </td>
                            <td>
                                <asp:Label ID="HuespedesLabel" runat="server" Text='<%# Eval("Huespedes") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                            </td>
                            <td>
                                <asp:Label ID="ReservaIDLabel1" runat="server" Text='<%# Eval("ReservaID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" Text='<%# Bind("NombreUsuario") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CheckInTextBox" runat="server" Text='<%# Bind("CheckIn") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CheckOutTextBox" runat="server" Text='<%# Bind("CheckOut") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ServiciosTextBox" runat="server" Text='<%# Bind("Servicios") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="HuespedesTextBox" runat="server" Text='<%# Bind("Huespedes") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>No se han devuelto datos.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:TextBox ID="NombreUsuarioTextBox" runat="server" Text='<%# Bind("NombreUsuario") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CheckInTextBox" runat="server" Text='<%# Bind("CheckIn") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CheckOutTextBox" runat="server" Text='<%# Bind("CheckOut") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="ServiciosTextBox" runat="server" Text='<%# Bind("Servicios") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="HuespedesTextBox" runat="server" Text='<%# Bind("Huespedes") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="">
            <td>
                <asp:Label ID="ReservaIDLabel" runat="server" Text='<%# Eval("ReservaID") %>' />
            </td>
            <td>
                <asp:Label ID="NombreUsuarioLabel" runat="server" Text='<%# Eval("NombreUsuario") %>' />
            </td>
            <td>
                <asp:Label ID="CheckInLabel" runat="server" Text='<%# Eval("CheckIn") %>' />
            </td>
            <td>
                <asp:Label ID="CheckOutLabel" runat="server" Text='<%# Eval("CheckOut") %>' />
            </td>
            <td>
                <asp:Label ID="ServiciosLabel" runat="server" Text='<%# Eval("Servicios") %>' />
            </td>
            <td>
                <asp:Label ID="HuespedesLabel" runat="server" Text='<%# Eval("Huespedes") %>' />
            </td>
            <td>
                <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
            </td>

        </tr>
    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">ReservaID</th>
                                            <th runat="server">NombreUsuario</th>
                                            <th runat="server">CheckIn</th>
                                            <th runat="server">CheckOut</th>
                                            <th runat="server">Servicios</th>
                                            <th runat="server">Huespedes</th>
                                            <th runat="server">Monto</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="ReservaIDLabel" runat="server" Text='<%# Eval("ReservaID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NombreUsuarioLabel" runat="server" Text='<%# Eval("NombreUsuario") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CheckInLabel" runat="server" Text='<%# Eval("CheckIn") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CheckOutLabel" runat="server" Text='<%# Eval("CheckOut") %>' />
                            </td>
                            <td>
                                <asp:Label ID="ServiciosLabel" runat="server" Text='<%# Eval("Servicios") %>' />
                            </td>
                            <td>
                                <asp:Label ID="HuespedesLabel" runat="server" Text='<%# Eval("Huespedes") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
</asp:ListView>

                    </div>
                </td>
                <td class="auto-style48">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="LblSession" runat="server" Text="Label"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HOTEL_LAS_HAYASConnectionString2 %>" SelectCommand="SELECT * FROM [Reservas]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style53">Ingrese el ID de la Reserva a eliminar:</td>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style45">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style54">
        <asp:TextBox ID="TxtReservaID" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style50">&nbsp;</td>
                <td class="auto-style47"></td>
</tr>
<tr>
    <td class="auto-style57">
        <asp:Label ID="LblResultado" runat="server" Text="Label"></asp:Label>
    </td>
    <td class="auto-style51">
        &nbsp;</td>
</tr>
<tr>
    <td class="auto-style57">
        <asp:Button ID="Button2" runat="server" OnClick="BtnEliminarReserva_Click" Text="Eliminar" Font-Names="Corbel" ForeColor="White" Width="176px" CssClass="auto-style37" />
    </td>
    <td class="auto-style51">
        &nbsp;</td>
</tr>
<tr>
    <td class="auto-style57">
        Ingrese el ID del Usuario a eliminar:</td>
    <td class="auto-style51">
        &nbsp;</td>
</tr>
<tr>
    <td class="auto-style57">
        <asp:TextBox ID="TxtUsuarioID" runat="server" OnTextChanged="TxtUsuarioID_TextChanged"></asp:TextBox>
    </td>
    <td class="auto-style51">
        &nbsp;</td>
</tr>
<tr>
    <td class="auto-style57">
        <asp:Label ID="LblResultado1" runat="server" Text="Label"></asp:Label>
    </td>
    <td class="auto-style51">
        &nbsp;</td>
</tr>
<tr>
    <td class="auto-style57">
        <asp:Button ID="Button1" runat="server" OnClick="BtnEliminarUsuario_Click" Text="Eliminar" Font-Names="Corbel" ForeColor="White" Width="176px" CssClass="auto-style37" />
    </td>
    <td class="auto-style51">
        &nbsp;</td>
</tr>
        </form>
        
