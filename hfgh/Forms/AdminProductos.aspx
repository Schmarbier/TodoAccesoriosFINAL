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
        .auto-style20 {
            margin-left: 2px;
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
            margin-left: 18px;
        }
        .auto-style16 {
            margin-left: 0px;
        }
        .auto-style21 {
            height: 0px;
            width: 329px;
        }
        .auto-style22 {
            margin-left: 1px;
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
                <asp:Button ID="Button1" runat="server" Text="Filtros" Width="189px" OnClick="btn_filtro" />
                <asp:Button ID="Button2" runat="server" Text="Agregar Articulos" Width="189px" OnClick="btn_Agregar" />
                <br />
            </div>
            <asp:Panel ID="PanelFiltro" runat="server" Visible="False">
            <table class="auto-style1">
                
                <tr>
                    <td class="auto-style21">
                        <br />
                <asp:Label ID="Label3" runat="server" Text="FILTRAR" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <br />
                        <br />
                <asp:Label ID="Label35" runat="server" Text="Nombre del Artículo"></asp:Label>
                        <br />
                <asp:TextBox ID="txt_Nombre" runat="server" CssClass="auto-style16"></asp:TextBox>
                        <br />
                <asp:Label ID="Label32" runat="server" Text="Descripcion del Artículo"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_descripcion" runat="server" CssClass="auto-style16"></asp:TextBox>
                        <br />
                <asp:Label ID="Label4" runat="server" Text="Id Artículo"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_idArt" runat="server" CssClass="auto-style20" TextMode="Number"></asp:TextBox>
                        <br />
                <asp:Label ID="Label5" runat="server" Text="Id Categoría"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_idCat" runat="server" CssClass="auto-style16" TextMode="Number"></asp:TextBox>
                        <br />
                <asp:Label ID="Label7" runat="server" Text="Id Material"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_idMat" runat="server" CssClass="auto-style16" Width="164px" TextMode="Number"></asp:TextBox>
                        <br />
                <asp:Label ID="Label9" runat="server" Text="Precio Unitario"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_pu" runat="server" CssClass="auto-style16"></asp:TextBox>
                        <br />
                <asp:Label ID="Label10" runat="server" Text="Fecha de Ingreso"></asp:Label>
                        <asp:TextBox ID="txt_fechaIngreso" runat="server" CssClass="auto-style22" TextMode="Date"></asp:TextBox>
                        <br />
                <asp:Label ID="Label8" runat="server" Text="Stock"></asp:Label>
                        <asp:TextBox ID="txt_stock" runat="server" CssClass="auto-style6" Width="30px"></asp:TextBox>
                        <br />
                <asp:Label ID="Label12" runat="server" Text="Estado del Articulo"></asp:Label>
                        <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style15" Checked="True"/>
                        <br />
                        <br />
                        <asp:Button ID="btn_1" runat="server" CssClass="auto-style16" Height="32px" Text="Filtrar" Width="74px" OnClick="btn_1_Click" />
                        <asp:Button ID="btn_4" runat="server" CssClass="auto-style11" Height="27px" Text="Limpiar Filtros" Width="92px" OnClick="btn_limpiarFiltro" />
                        <br />
                    </td>
                    <td class="auto-style13">
            <div style=" text-align: center;">
                <asp:Label ID="Label11" runat="server" Text="Ordenar por" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="ddl_order" runat="server" CssClass="auto-style14">
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" Width="718px" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="ID Articulo">
                            <ItemTemplate>
                                <asp:Label ID="Label_IDART" runat="server" Text='<%# Bind("Id_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Categoria">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_IdCat" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("IdCat_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Material">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_IdMat" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Bind("IdMat_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Nombre">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_Nom" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label16" runat="server" Text='<%# Bind("Nombre_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Descripcion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_Des" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label17" runat="server" Text='<%# Bind("Descripcion_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="URL Imagen">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_URL" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label18" runat="server" Text='<%# Bind("UrlImagen_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Stock">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_Stock" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label19" runat="server" Text='<%# Bind("Stock_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha Ingreso">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_FI" runat="server" TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label20" runat="server" Text='<%# Bind("FechaIngreso_Art") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Precio Unitario">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Edit_PU" runat="server"></asp:TextBox>
                            </EditItemTemplate>
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
                    <EmptyDataTemplate>
                        <asp:Label ID="lblLeyenda" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red">No hay datos relacionados con la busqueda</asp:Label>
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <br />
                        <asp:Label ID="lblLeyenda" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
               </div>
                    </td>
                </tr>
            </table>
                </asp:Panel>
                <asp:Panel ID="PanelAgregar" runat="server" Visible="False">
            <br />
                <asp:Label ID="Label23" runat="server" Text="Agregar" Font-Bold="True" Font-Size="Large"></asp:Label>
                        <br />
                        <br />
                <asp:Label ID="Label24" runat="server" Text="Nombre del Artículo"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_nombreAgregar" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
                <asp:Label ID="Label31" runat="server" Text="Descripcion del Artículo"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_descripcionAgregar" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
                <asp:Label ID="Label30" runat="server" Text="ID del Artículo"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_idArtAgregar" runat="server" CssClass="auto-style2"></asp:TextBox>
                        <br />
                <asp:Label ID="Label25" runat="server" Text="Id Categoría"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_idCatAgregar" runat="server" CssClass="auto-style16"></asp:TextBox>
                        <br />
                <asp:Label ID="Label26" runat="server" Text="Id Material"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_idMatAgregar" runat="server" CssClass="auto-style16" Width="168px"></asp:TextBox>
                        <br />
                <asp:Label ID="Label27" runat="server" Text="Precio Unitario"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_puAgregar" runat="server" CssClass="auto-style16"></asp:TextBox>
                        <br />
                <asp:Label ID="Label29" runat="server" Text="Stock"></asp:Label>
                        <br />
                        <asp:TextBox ID="txt_StockAgregar" runat="server" CssClass="auto-style16"></asp:TextBox>
                        <br />
            <br />
                        <asp:Button ID="btn_3" runat="server" CssClass="auto-style11" Height="43px" Text="Agregar" Width="177px" OnClick="btn_agregar" />
                        <br />
                        <br />
                <asp:Label ID="lbl_leyenda" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </asp:Panel>
        </div>
    </form>
</body>
</html>
