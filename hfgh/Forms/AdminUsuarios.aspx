﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUsuarios.aspx.cs" Inherits="Vista.Forms.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
            margin-left: 39px;
        }
        .auto-style12 {
            margin-left: 23px;
        }
        .auto-style13 {
            margin-top: 0px;
        }
                .derecha {
text-align: right;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
                            <div class="derecha">
&nbsp; |&nbsp;<asp:LinkButton ID="lbRegistrarse" runat="server" OnClick="lbCerrarSesion_Click" PostBackUrl="~/Forms/Inicio.aspx">Cerrar Sesion</asp:LinkButton>
&nbsp;
            </div>
        <div>
 <asp:HyperLink ID="HyperLink1" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminUsuarios.aspx">Usuarios</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminProductos.aspx">Productos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminReportes.aspx">Reportes</asp:HyperLink>
        </div>

        <div style=" text-align: center;">

            <div style=" text-align: center;">
               
                        <br />
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Text="Ordenar por"></asp:Label>
                        <asp:DropDownList ID="ddlOrdenar" runat="server" CssClass="auto-style12" OnSelectedIndexChanged="ddlOrdenar_SelectedIndexChanged">
                            <asp:ListItem Value="DNI_Us">DNI</asp:ListItem>
                            <asp:ListItem Value="Usuario_Us">Usuario</asp:ListItem>
                            <asp:ListItem Value="Email_Us">Email</asp:ListItem>
                            <asp:ListItem Value="IdProv_Us">Id Provincia</asp:ListItem>
                            <asp:ListItem Value="IdLoc_Us">Id Localidad</asp:ListItem>
                            <asp:ListItem Value="Nombre_Us">Nombre</asp:ListItem>
                            <asp:ListItem Value="Apellido_Us">Apellido</asp:ListItem>
                            <asp:ListItem Value="FechaNac_Us">FechaNac</asp:ListItem>
                            <asp:ListItem Value="Tipo_Us">Tipo de Usuario</asp:ListItem>
                            <asp:ListItem Value="Estado">Estado de Usuario</asp:ListItem>
                </asp:DropDownList>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="28px" Text="Filtrar" Width="135px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" CssClass="auto-style11" Height="28px" OnClick="Button3_Click" Text="Limpiar Filtro" Width="135px" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" Width="718px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" CssClass="auto-style13" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="DNI">
                            <EditItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_DNI" runat="server" Text='<%# Bind("DNI_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Usuario">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Usuario" runat="server" Text='<%# Bind("Usuario_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_Usuario" runat="server" Text='<%# Bind("Usuario_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Email" runat="server" Text='<%# Bind("Email_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_Email" runat="server" Text='<%# Bind("Email_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="IdProv">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Idprov" runat="server" Text='<%# Bind("IdProv_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_IdProv" runat="server" Text='<%# Bind("IdProv_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Localidad">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_IdLoc" runat="server" Text='<%# Bind("IdLoc_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_IdLocalidad" runat="server" Text='<%# Bind("IdLoc_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Domicilio">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Domicilio" runat="server" Text='<%# Bind("Domicilio_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_Domicilio" runat="server" Text='<%# Bind("Domicilio_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Departamento">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_departamento" runat="server" Text='<%# Bind("Departamento_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_departamento" runat="server" Text='<%# Bind("Departamento_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contraseña">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_contrasena" runat="server" Text='<%# Bind("Contraseña_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_contrasena" runat="server" Text='<%# Bind("Contraseña_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_telefono" runat="server" Text='<%# Bind("Telefono_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_telefono" runat="server" Text='<%# Bind("Telefono_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_nombre" runat="server" Text='<%# Bind("Nombre_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_nombre" runat="server" Text='<%# Bind("Contraseña_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Apellido">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_apellido" runat="server" Text='<%# Bind("Apellido_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_apellido" runat="server" Text='<%# Bind("Apellido_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UrlImagen">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_url" runat="server" Text='<%# Bind("UrlImagen_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_url" runat="server" Text='<%# Bind("UrlImagen_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="FechaNac">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_fecha" runat="server" Text='<%# Bind("FechaNac_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_fechaNac" runat="server" Text='<%# Bind("FechaNac_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tipo">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_tipo" runat="server" Text='<%# Bind("Tipo_Us") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_tipo" runat="server" Text='<%# Bind("Tipo_Us") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_estado" runat="server" Text='<%# Bind("Estado") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_estado" runat="server" Text='<%# Bind("Estado") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="lblLeyenda" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        
  
            </div>
         
    </form>
   
    </body>
</html>
