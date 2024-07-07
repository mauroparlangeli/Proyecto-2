<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TrabajoPractico3.WebForm1" %>

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
            width: 190px;
        }
        .auto-style3 {
            width: 190px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 190px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 190px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 190px;
            height: 22px;
        }
        .auto-style10 {
            height: 22px;
        }
        .auto-style11 {
            width: 190px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
        }
        .auto-style13 {
            width: 169px;
        }
        .auto-style14 {
            height: 23px;
            width: 169px;
        }
        .auto-style15 {
            height: 22px;
            width: 169px;
        }
        .auto-style16 {
            height: 26px;
            width: 169px;
        }
        .auto-style17 {
            height: 25px;
            width: 169px;
        }
        .auto-style18 {
            height: 30px;
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Label ID="lblLocalidad" runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre de Localidad:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtLocalidades" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtLocalidades" ValidationGroup="btnLocalidad">Ingrese localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblAddLocalidad" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style14">
                        <asp:Button ID="btnLocalidad" runat="server" OnClick="Button1_Click" Text="Guardar Localidad" ValidationGroup="btnLocalidad" />
                    &nbsp;&nbsp;
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style15">
                        <asp:Label ID="lblUsuario" runat="server" Font-Bold="True" Text="Usuarios"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre de usuario:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtUsuario" ValidationGroup="usuario">Debe ingresar un nombre</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Contraseña:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvContraseña" runat="server" ControlToValidate="txtContraseña" ValidationGroup="usuario">Debe ingresar una contraseña</asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Repetir contraseña:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtRepetirContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:CompareValidator ID="cvContraseña" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" ValidationGroup="usuario">No coinciden las contraseñas</asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Correo electronico:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ValidationGroup="usuario">Ingrese correo electronico</asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="usuario">Correo Electronico no valido</asp:RegularExpressionValidator>
&nbsp;
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">CP:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RegularExpressionValidator ID="revCP" runat="server" ControlToValidate="txtCP" ValidationExpression="\d{4}" ValidationGroup="usuario">Ingrese 4 numeros</asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Localidades:</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="ddlLocalidades" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style18">
                        <asp:Button ID="BtnGuardarUsuario" runat="server" Text="Guardar usuario" OnClick="BtnGuardarUsuario_Click" ValidationGroup="usuario" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblBienvenido" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnIraInicio" runat="server" OnClick="btnIraInicio_Click" Text="Ir a inicio.aspx" />
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
