<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="DatosPago.aspx.cs" Inherits="Vista.Forms.DatosPago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 696px;
            text-align: right;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-decoration: underline;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style9 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style10 {
            width: 696px;
            text-align: right;
            height: 30px;
        }
        .auto-style11 {
            text-align: left;
            height: 30px;
        }
        .auto-style16 {
            width: 176px;
            text-align: right;
        }
        .auto-style17 {
            width: 174px;
            text-align: right;
        }
        .auto-style18 {
            width: 174px;
            text-align: right;
            height: 30px;
        }
        .auto-style19 {
            width: 173px;
            text-align: right;
        }
        .auto-style20 {
            width: 172px;
            text-align: right;
        }
        .auto-style21 {
            width: 715px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style7">
        <div class="auto-style1">
            <span class="auto-style8"><strong>PAGO</strong></span><br />
            <br />
            <br />
            <span class="auto-style6">Datos de contacto</span><br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style21">Email&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="456px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="reEmail" runat="server" ControlToValidate="txtEmail" ValidationGroup="Group1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email inválido!</asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
        </div>
            <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6">Tipo de envío</span></p>
            <p class="auto-style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlTipoEnvio" runat="server" ValidationGroup="Group1">
                </asp:DropDownList>
&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="rfvTipoEnvio" runat="server" ControlToValidate="ddlTipoEnvio" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    </p>
            <p class="auto-style9">
                Datos del comprador</p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style3">Nombre&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style3">Apellido&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style3">DNI&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDNI" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvDNI" runat="server" ControlToValidate="txtDNI" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="reDNI" runat="server" ControlToValidate="txtDNI" ValidationExpression="^\d{8}$" ValidationGroup="Group1">DNI inválido!</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style3">Teléfono&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txtTelefono" ValidationExpression="^[0-9]*$" ValidationGroup="Group1">Teléfono inválido!</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <p class="auto-style9">
                Domicilio del comprador</p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3">Domicilio y número&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDomicilio" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvDomicilio" runat="server" ControlToValidate="txtDomicilio" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style10">Departamento (opcional)&nbsp;&nbsp; </td>
                    <td class="auto-style11">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtDepartamento" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3">Codigo postal: </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtCP" runat="server" CssClass="auto-style4" ValidationGroup="Group1" Width="228px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ValidationGroup="Group1">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="reCP" runat="server" ControlToValidate="txtCP" ValidationExpression="^\d{4}$" ValidationGroup="Group1">Código postal inválido!</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style3">Provincia&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlProvincia" runat="server" ValidationGroup="Group1" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged" style="margin-bottom: 0px">
                        </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ValidationGroup="Group1" InitialValue="-1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style19">&nbsp;</td>
                    <td class="auto-style3">&nbsp;Localidad&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlLocalidad" runat="server" ValidationGroup="Group1" DataTextField="*Antes seleccione una provincia*">
                        </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="ddlLocalidad" ValidationGroup="Group1" InitialValue="-1">*</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style3">Barrio (opcional)&nbsp;&nbsp; </td>
                    <td class="auto-style5">&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBarrio" runat="server" CssClass="auto-style4" Width="228px"></asp:TextBox>
&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
            <asp:Button ID="btnContinuar" runat="server" Text="Continuar" ValidationGroup="Group1" OnClick="btnContinuar_Click" />
        </div>
</asp:Content>
