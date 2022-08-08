<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Vista.Forms.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style9 {
            width: 692px;
            text-align: left;
        }
        .auto-style5 {
            width: 536px;
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
            width: 692px;
            text-align: left;
        }
        .auto-style4 {
            width: 536px;
            text-align: right;
        }
        .auto-style7 {
            width: 536px;
            height: 23px;
            text-align: right;
        }
        .auto-style8 {
            height: 23px;
            width: 692px;
            text-align: center;
        }
        .auto-style11 {
            width: 536px;
            height: 23px;
        }
        .auto-style12 {
            text-decoration: underline;
            font-size: x-large;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            width: 692px;
            text-align: left;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
            &nbsp;<table class="nav-bar">
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <span class="auto-style12"><strong><em>CREAR CUENTA
        </em></strong></span>
            <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Nombre :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtNombre" runat="server" Width="250px" AutoPostBack="True" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Nombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red">Debe Ingresar Su Nombre</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_Nombre" runat="server" ControlToValidate="txtNombre" ForeColor="Red" ValidationExpression="[a-zA-Z ]{2,254}">Solo se Permiten Letras</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Apellido :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtApellido" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Apellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red">Debe Ingresar Su Apellido</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_Apellido" runat="server" ControlToValidate="txtApellido" ForeColor="Red" ValidationExpression="[A-Za-zÁÉÍÓÚáéíóúñÑ ]+$">Solo se Permiten Letras</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">DNI :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDNI" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_DNI" runat="server" ControlToValidate="txtDNI" ForeColor="Red">Debe Ingresar Su DNI</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_DNI" runat="server" ControlToValidate="txtDNI" ForeColor="Red" ValidationExpression="^\d+$">Solo se Permiten Números</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Fecha de nacimiento :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtFechaNac" runat="server" TextMode="Date" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_FechaNac" runat="server" ControlToValidate="txtFechaNac" ForeColor="Red">Debe Ingresar Su Fecha de Nacimiento</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Telefono :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtTelefono" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Telefono" runat="server" ControlToValidate="txtTelefono" ForeColor="Red">Debe Ingresar Su N° de Telefono</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_Telefono" runat="server" ControlToValidate="txtTelefono" ForeColor="Red" ValidationExpression="^\d+$">Solo se Permiten Números</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Domicilio :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDomicilio" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Domicilio" runat="server" ControlToValidate="txtDomicilio" ForeColor="Red">Debe Ingresar Su Domicilio</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Departamento:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtDepartamento" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Barrio:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtBarrio" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Provincia </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddlProvincia" runat="server" Width="257px" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" Height="23px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RVF_provincia" runat="server" ControlToValidate="ddlProvincia" ForeColor="Red" InitialValue="-1">Debe seleccionar una Provincia</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Localidad :</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddlLocalidad" runat="server" Height="23px" Width="257px">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RVF_Localidad" runat="server" ControlToValidate="ddlLocalidad" ForeColor="Red" InitialValue="-1">Debe seleccionar una Localidad</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">E-mail :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtMail" runat="server" Width="250px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Mail" runat="server" ControlToValidate="txtMail" ForeColor="Red">Debe ingresar Su Email</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_email" runat="server" ControlToValidate="txtMail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Formato Incorrecto</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre de Usuario :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNombreUSER" runat="server" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_NombreUSER" runat="server" ControlToValidate="txtNombreUSER" ForeColor="Red">Debe Ingresar un Nombre de Usuario</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Contraseña :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtContraseña" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_Contraseña" runat="server" ControlToValidate="txtContraseña" ForeColor="Red">Debe Ingresar una Contraseña</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV_Contraseña" runat="server" ControlToValidate="txtContraseña" ForeColor="Red" ValidationExpression="[A-Za-z\d$@$!%*?&amp;]{8,}">Debe Contener Mínimo 8 caracteres</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Repita Contraseña :</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtRepetirContraseña" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV_RepetirContraseña" runat="server" ControlToValidate="txtRepetirContraseña" ForeColor="Red">Repita la Contraseña</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CV_Contraseñas" runat="server" ControlToCompare="txtContraseña" ControlToValidate="txtRepetirContraseña" ForeColor="Red">Las Contraseñas No Coinciden</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Código postal:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtCP" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="reCP" runat="server" ControlToValidate="txtCP" ValidationExpression="^\d{4}$" ForeColor="Red">Código postal inválido!</asp:RegularExpressionValidator>
                    </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="btnCrearCuenta" runat="server" Height="30px" Text="Crear Cuenta" Width="150px" OnClick="btnCrearCuenta_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8">¿Ya tienes Cuenta? <asp:HyperLink ID="HL_IniciarSesion" runat="server" NavigateUrl="~/Forms/IniciarSesion.aspx">Iniciar Sesion</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblMensaje" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style8">
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
        </table>
        </div>
        </asp:Content>
