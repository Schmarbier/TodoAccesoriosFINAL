<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="UsuarioEditar.aspx.cs" Inherits="Vista.Forms.UsuarioEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .info{
            display: block;
            width: 40%;
            margin-right: auto;
            margin-left: auto;
        }
        .grupo-info{
            margin-bottom: 10px;
        }
        .grupo-info, div{
            padding-bottom: 5px;
            font-size: large;
        }
        .aling-r{
            right: 1;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1" style="padding-top: 10px; padding-bottom: 10px;">
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Forms/Inicio.aspx">Inicio</asp:HyperLink>
&nbsp;&gt;
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Forms/Usuario.aspx">Mi Cuenta</asp:HyperLink>
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="&gt; Editar"></asp:Label>
    </div>
    <div class="auto-style1">
        <strong><span class="auto-style2">MI CUENTA</span></strong>
    </div>
    <div>
        <div class="info">
            <div class="grupo-info">
                <div>Usuario<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Usuario" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblResultadoUs" runat="server" ForeColor="#CC0000"></asp:Label>
                </div>
                <asp:TextBox ID="txt_Usuario" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Email<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_Email" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblResultadoEmail" runat="server" ForeColor="#CC0000"></asp:Label>
                </div>
                <asp:TextBox ID="txt_Email" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Contraseña<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_Contraseña" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </div>
                <asp:TextBox ID="txt_Contraseña" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Nombre<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_nombre" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </div>
                <asp:TextBox ID="txt_nombre" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Apellido<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_apellido" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                </div>
                <asp:TextBox ID="txt_apellido" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>DNI<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_apellido" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblResultadoDNI" runat="server" ForeColor="#CC0000"></asp:Label>
                        <asp:RegularExpressionValidator ID="reDNI" runat="server" ControlToValidate="txt_dni" ValidationExpression="^\d{8}$" ValidationGroup="Group1" ForeColor="#CC0000">DNI inválido!</asp:RegularExpressionValidator>
                </div>
                <asp:TextBox ID="txt_dni" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Telefono<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_telefono" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="revTelefono" runat="server" ControlToValidate="txt_telefono" ValidationExpression="^[0-9]*$" ValidationGroup="Group1" ForeColor="#CC0000">Teléfono inválido!</asp:RegularExpressionValidator>
                    </div>
                <asp:TextBox ID="txt_telefono" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Fecha de Nacimiento</div>
                <asp:DropDownList ID="ddlDias" runat="server" AutoPostBack="True">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMeses" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMeses_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlAños" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAños_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
            <div class="grupo-info">
                <div>Provincia</div>
                <asp:DropDownList ID="ddlProvincia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
            <div class="grupo-info">
                <div>Localidad</div>
                <asp:DropDownList ID="ddlLocalidad" runat="server" AutoPostBack="True">
                </asp:DropDownList>
            </div>
            <div class="grupo-info">
                <div>Domicilio<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txt_Domicilio" ForeColor="Maroon">*</asp:RequiredFieldValidator>
                    </div>
                <asp:TextBox ID="txt_Domicilio" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div class="grupo-info">
                <div>Departamento</div>
                <asp:TextBox ID="txt_Departamento" runat="server" Width="100%"></asp:TextBox>
                <br />
                <br />
                <asp:FileUpload ID="file_image" runat="server" accept="image/jpg"/>
            </div>
            <div class="aling-r">
                <asp:Label ID="lblResultado" runat="server" Font-Bold="False" ForeColor="#CC0000"></asp:Label>
                <asp:Button ID="btn_Guardar" runat="server" Text="Guardar Cambios" BorderStyle="Solid" BorderWidth="1px" OnClick="btn_Guardar_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
