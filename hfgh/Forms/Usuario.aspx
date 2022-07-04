<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Vista.Forms.Usuario1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style9 {
        width: 294px;
    }
    .auto-style10 {
        width: 995px;
    }
    .auto-style11 {
        width: 223px;
    }
        .auto-style12 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <div class="auto-style1" style="padding-top: 10px; padding-bottom: 10px;">

                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Forms/Inicio.aspx">Inicio</asp:HyperLink>
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="&gt; Mi Cuenta"></asp:Label>

            </div>
            <div class="auto-style1">
                <strong><span class="auto-style12">MI CUENTA</span></strong>
            </div>
            <div>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label3" runat="server" Text="Mis Datos"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Forms/UsuarioEditar.aspx">Editar &gt;</asp:HyperLink>
                            <ul>
                                <li>
                                    <asp:Image ID="imgUsuario" runat="server" Height="100px" ImageUrl="~/Imagenes/Usuarios/maria-mendez.jpg" />
	                            </li>
	                            <li>
                                    <asp:Label ID="Label4" runat="server" Text="Usuario: "></asp:Label>
	                                <asp:Label ID="lbl_Usuario" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
                                    <asp:Label ID="lbl_Email" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label6" runat="server" Text="Contraseña: "></asp:Label>
                                    <asp:Label ID="lbl_Contraseña" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label7" runat="server" Text="Nombre: "></asp:Label>
                                    <asp:Label ID="lbl_Nombre" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label8" runat="server" Text="Apellido: "></asp:Label>
                                    <asp:Label ID="lbl_Apellido" runat="server"></asp:Label>
	                            </li>
                                <li>
                                    <asp:Label ID="Label23" runat="server" Text="DNI: "></asp:Label>
                                    <asp:Label ID="lbl_Dni" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label9" runat="server" Text="Telefono: "></asp:Label>
                                    <asp:Label ID="lbl_Telefono" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label10" runat="server" Text="Fecha de nacimiento: "></asp:Label>
                                    <asp:Label ID="lbl_FechaNacimiento" runat="server"></asp:Label>
	                            </li>
	                            <li>
                                    <asp:Label ID="Label11" runat="server" Text="Provincia: "></asp:Label>
                                    <asp:Label ID="lbl_Provincia" runat="server"></asp:Label>
	                            </li>
                                <li>
                                    <asp:Label ID="Label12" runat="server" Text="Localidad: "></asp:Label>
                                    <asp:Label ID="lbl_Localidad" runat="server"></asp:Label>
	                            </li>
                                <li>
                                    <asp:Label ID="Label13" runat="server" Text="Domicilio: "></asp:Label>
                                    <asp:Label ID="lbl_Domicilio" runat="server"></asp:Label>
	                            </li>
                                <li>
                                    <asp:Label ID="Label2" runat="server" Text="Departamento: "></asp:Label>
                                    <asp:Label ID="lbl_Departamento" runat="server"></asp:Label>
	                            </li>
				            </ul>
                        </td>
                        <td class="auto-style9">
                            <asp:Label ID="Label14" runat="server" Text="Mis compras"></asp:Label>
                            <br />
                            <br />
                            <asp:GridView ID="grdvCompras" runat="server" AllowPaging="True" PageSize="6">
                            </asp:GridView>
                            <br />
                            </td>
                    </tr>
                </table>
            </div>
</div>
</asp:Content>
