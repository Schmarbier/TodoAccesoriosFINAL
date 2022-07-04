<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProductos.aspx.cs" Inherits="Vista.Forms.AdminProductos" %>

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
            margin-left: 6px;
        }
        .auto-style21 {
            margin-left: 53px;
        }
        .auto-style20 {
            margin-left: 94px;
        }
        .auto-style3 {
            margin-left: 84px;
        }
        .auto-style5 {
            margin-left: 91px;
        }
        .auto-style7 {
            margin-left: 64px;
        }
        .auto-style11 {
            margin-left: 39px;
        }
        .auto-style13 {
            height: 0px;
        }
        .auto-style14 {
            margin-left: 20px;
        }
        .auto-style15 {
            margin-left: 20px;
        }
        .auto-style6 {
            margin-left: 125px;
        }
        .auto-style16 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            <div>
 <asp:HyperLink ID="HyperLink1" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminUsuarios.aspx">Usuarios</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminProductos.aspx">Productos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminReportes.aspx">Reportes</asp:HyperLink>
                <asp:HyperLink ID="LinkButton8" runat="server" style="margin-left: 30px; float: right">Cerrar Sesión</asp:HyperLink>
                <asp:Label ID="Label1" runat="server" style="margin-left: 2px; float: right" Text="Bienvenido (Usuario)!"></asp:Label>
                <br />
            </div>
            <div style=" text-align: center;">
                <br />
                <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">
                        <br />
                <asp:Label ID="Label3" runat="server" Text="FILTRAR" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <br />
                        <br />
                <asp:Label ID="Label35" runat="server" Text="Nombre del Artículo"></asp:Label>
                <asp:TextBox ID="txt_Nombre" runat="server" style="margin-left: 30px"></asp:TextBox>
                        <br />
                <asp:Label ID="Label32" runat="server" Text="Descripcion del Artículo"></asp:Label>
                        <asp:TextBox ID="txt_descripcion" runat="server" CssClass="auto-style2"></asp:TextBox>
                        <br />
                <asp:Label ID="Label4" runat="server" Text="Id Artículo"></asp:Label>
                        <asp:TextBox ID="txt_idArt" runat="server" CssClass="auto-style20" TextMode="Number"></asp:TextBox>
                        <br />
                <asp:Label ID="Label5" runat="server" Text="Id Categoría"></asp:Label>
                        <asp:TextBox ID="txt_idCat" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
                        <br />
                <asp:Label ID="Label7" runat="server" Text="Id Material"></asp:Label>
                        <asp:TextBox ID="txt_idMat" runat="server" CssClass="auto-style5" Width="164px" TextMode="Number"></asp:TextBox>
                        <br />
                <asp:Label ID="Label9" runat="server" Text="Precio Unitario"></asp:Label>
                        <asp:TextBox ID="txt_pu" runat="server" CssClass="auto-style7"></asp:TextBox>
                        <br />
                <asp:Label ID="Label10" runat="server" Text="Fecha de Ingreso"></asp:Label>
                        <asp:TextBox ID="txt_fechaIngreso" runat="server" CssClass="auto-style2" TextMode="Date"></asp:TextBox>
                        <br />
                <asp:Label ID="Label8" runat="server" Text="Stock"></asp:Label>
                        <asp:TextBox ID="txt_stock" runat="server" CssClass="auto-style6" Width="30px"></asp:TextBox>
                        <br />
                <asp:Label ID="Label12" runat="server" Text="Estado del Articulo"></asp:Label>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style15" Checked="True"/>
                        <br />
                        <br />
                        <asp:Button ID="btn_1" runat="server" CssClass="auto-style16" Height="43px" Text="Filtrar" Width="177px" OnClick="btn_limpiarFiltro" />
                        <asp:Button ID="btn_4" runat="server" CssClass="auto-style11" Height="43px" Text="Limpiar Filtros" Width="177px" OnClick="btn_limpiarFiltro" />
                        <br />
                    </td>
                    <td class="auto-style13">
            <div style=" text-align: center;">
                <asp:Label ID="Label11" runat="server" Text="Ordenar por" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style14">
                            <asp:ListItem Value="0">Id Artículo</asp:ListItem>
                            <asp:ListItem Value="1">Id Categoría</asp:ListItem>
                            <asp:ListItem Value="2">Id Material</asp:ListItem>
                            <asp:ListItem Value="3">Stock</asp:ListItem>
                            <asp:ListItem Value="4">Precio Unitario</asp:ListItem>
                            <asp:ListItem Value="5">Estado</asp:ListItem>
                            <asp:ListItem Value="6">Fecha ingreso</asp:ListItem>
                            <asp:ListItem Value="7">Nombre</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" Width="718px">
                    <Columns>
                        <asp:TemplateField HeaderText="ID Articulo">
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Id_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Categoria">
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("IdCat_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Material">
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Bind("IdMat_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <ItemTemplate>
                                <asp:Label ID="Label16" runat="server" Text='<%# Bind("Nombre_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripcion">
                            <ItemTemplate>
                                <asp:Label ID="Label17" runat="server" Text='<%# Bind("Descripcion_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="URL Imagen">
                            <ItemTemplate>
                                <asp:Label ID="Label18" runat="server" Text='<%# Bind("UrlImagen_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stock">
                            <ItemTemplate>
                                <asp:Label ID="Label19" runat="server" Text='<%# Bind("Stock_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha Ingreso">
                            <ItemTemplate>
                                <asp:Label ID="Label20" runat="server" Text='<%# Bind("FechaIngreso_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio Unitario">
                            <ItemTemplate>
                                <asp:Label ID="Label21" runat="server" Text='<%# Bind("PrecioUnitario_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <ItemTemplate>
                                <asp:Label ID="Label22" runat="server" Text='<%# Bind("Estado_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
               </div>
                    </td>
                </tr>
            </table>
                <br />
                <asp:Label ID="Label23" runat="server" Text="Agregar" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <br />
                        <br />
                <asp:Label ID="Label24" runat="server" Text="Nombre del Artículo"></asp:Label>
                        <asp:TextBox ID="txt_nombreAgregar" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
                <asp:Label ID="Label31" runat="server" Text="Descripcion del Artículo"></asp:Label>
                        <asp:TextBox ID="txt_descripcionAgregar" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
                <asp:Label ID="Label30" runat="server" Text="ID del Artículo"></asp:Label>
                        <asp:TextBox ID="txt_idArtAgregar" runat="server" CssClass="auto-style2"></asp:TextBox>
                        <br />
                <asp:Label ID="Label25" runat="server" Text="Id Categoría"></asp:Label>
                        <asp:TextBox ID="txt_idCatAgregar" runat="server" CssClass="auto-style3"></asp:TextBox>
                        <br />
                <asp:Label ID="Label26" runat="server" Text="Id Material"></asp:Label>
                        <asp:TextBox ID="txt_idMatAgregar" runat="server" CssClass="auto-style5" Width="168px"></asp:TextBox>
                        <br />
                <asp:Label ID="Label27" runat="server" Text="Precio Unitario"></asp:Label>
                        <asp:TextBox ID="txt_puAgregar" runat="server" CssClass="auto-style7"></asp:TextBox>
                        <br />
                <asp:Label ID="Label29" runat="server" Text="Stock"></asp:Label>
                        <asp:TextBox ID="txt_StockAgregar" runat="server" CssClass="auto-style7"></asp:TextBox>
                        <br />
                        <br />
            <br />
                        <asp:Button ID="btn_3" runat="server" CssClass="auto-style11" Height="43px" Text="Agregar" Width="177px" OnClick="btn_agregar" />
                        <br />
                        <br />
                <asp:Label ID="lbl_leyenda" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
    </form>
</body>
</html>
