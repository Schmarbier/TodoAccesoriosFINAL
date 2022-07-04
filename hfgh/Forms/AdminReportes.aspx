<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReportes.aspx.cs" Inherits="Vista.Forms.WebForm3" %>

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
            margin-left: 0px;
        }
        .auto-style13 {
            margin-top: 0px;
        }
        .auto-style14 {
            width: 324px;
        }
                .derecha {
text-align: right;
}
    </style>
    </head>
<body>
    <form id="form1" runat="server">
                    <div class="derecha">
                 <asp:HyperLink ID="hlIniciarSesion" runat="server" NavigateUrl="~/Forms/IniciarSesion.aspx">Iniciar Sesión</asp:HyperLink>
&nbsp; |&nbsp;<asp:LinkButton ID="lbRegistrarse" runat="server" OnClick="lbRegistrarse_Click" PostBackUrl="~/Forms/Registrarse.aspx">Registrarse</asp:LinkButton>
&nbsp;
            </div>
        <div>
            <asp:HyperLink ID="HyperLink1" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminUsuarios.aspx">Usuarios</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminProductos.aspx">Productos</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" style="margin-left: 30px" runat="server" NavigateUrl="~/Forms/AdminReportes.aspx">Reportes</asp:HyperLink>
            <asp:HyperLink ID="LinkButton8" style="margin-left: 30px; float: right" runat="server">Cerrar Sesión</asp:HyperLink>
            <asp:Label ID="Label1" runat="server" style="margin-left: 2px; float: right" Text="Bienvenido (Usuario)!"></asp:Label>
        </div>
        <div  style=" text-align: center">
        </div>
            <div  style=" text-align: center;">
                <asp:Label ID="Label2" runat="server" Text="Buscar reporte de Venta"></asp:Label>
                <asp:TextBox ID="txtbx_reporte" style="margin-left: 30px" runat="server"></asp:TextBox>
                <asp:Button ID="btn_buscar" style="margin-left: 30px" runat="server" Text="Buscar" />
                <br />
                <br />
               
                </div>
         <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Filtros"></asp:Label>
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <asp:Button ID="btn_hoy" runat="server" Text="Hoy" Width="268px" OnClick="btn_hoy_Click" />
                    <br />
                    <asp:Button ID="btn_7_dias" runat="server" Text="7 Dias" Width="268px" OnClick="btn_7_dias_Click" />
                    <br />
                    <asp:Button ID="btn_15_dias" runat="server" Text="15 Dias" Width="268px" OnClick="btn_15_dias_Click" />
                    <br />
                    <asp:Button ID="btn_30_dias" runat="server" Text="30 Dias" Width="268px" OnClick="btn_30_dias_Click" />
                </td>
                <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="718px" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" CssClass="auto-style13" OnRowCommand="verMas">
                    <Columns>
                        <asp:TemplateField HeaderText="Nº Ventas">
                            <ItemTemplate>
                                <asp:Label ID="label_nroVenta" runat="server" Text='<%# Bind("Nro_Vent") %>'></asp:Label>
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DNI">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_DNI" runat="server" Text='<%# Bind("DniUsuario_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_DNI" runat="server" Text='<%# Bind("DniUsuario_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Tipo Envio">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_ID_TE" runat="server" Text='<%# Bind("IdTipoEnvio_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_IdTE" runat="server" Text='<%# Bind("IdTipoPago_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Localidad">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_IdLoc" runat="server" Text='<%# Bind("IdLoc_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_Idlocalidad" runat="server" Text='<%# Bind("IdLoc_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Provincia">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_IdProv" runat="server" Text='<%# Bind("IdProvLoc_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_IdProvincia" runat="server" Text='<%# Bind("IdLoc_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id Tipo Pago">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_IdTP" runat="server" Text='<%# Bind("IdTipoPago_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_IdTP" runat="server" Text='<%# Bind("IdTipoPago_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Usuario">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Usuario" runat="server" Text='<%# Bind("Usuario_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_Usuario" runat="server" Text='<%# Bind("Usuario_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Email" runat="server" Text='<%# Bind("EmailUsuario_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_Email" runat="server" Text='<%# Bind("EmailUsuario_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Dirección">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_direccion" runat="server" Text='<%# Bind("DireccionUs_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_direccion" runat="server" Text='<%# Bind("DireccionUs_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Telefono">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_telefono" runat="server" Text='<%# Bind("TelefonoUsuario_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_telefono" runat="server" Text='<%# Bind("TelefonoUsuario_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Total" runat="server" Text='<%# Bind("Total_Vent") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_total" runat="server" Text='<%# Bind("Total_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fecha">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox_Fecha" runat="server" Text='<%# Bind("Fecha_Vent") %>' Height="25px" Width="170px"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="label_fecha" runat="server" Text='<%# Bind("Fecha_Vent") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" CommandName="verMas" Text="Ver detalle venta" />
                    </Columns>
                </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Desde"></asp:Label>
                    &nbsp;&nbsp; DIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AÑO<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlDiaD" runat="server" AutoPostBack="True" CssClass="auto-style2" Height="16px" Width="48px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlMesD" runat="server" AutoPostBack="True" CssClass="auto-style2" OnSelectedIndexChanged="ddlMesD_SelectedIndexChanged" Width="55px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlAñoD" runat="server" AutoPostBack="True" CssClass="auto-style2" Height="16px" OnSelectedIndexChanged="ddlAñoD_SelectedIndexChanged" Width="76px">
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Hasta"></asp:Label>
                    &nbsp;&nbsp; DIA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AÑO<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlDiaH" runat="server" AutoPostBack="True" CssClass="auto-style2" Height="16px" Width="48px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlMesH" runat="server" AutoPostBack="True" CssClass="auto-style2" OnSelectedIndexChanged="ddlMesH_SelectedIndexChanged" Width="55px">
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlAñoH" runat="server" AutoPostBack="True" CssClass="auto-style2" Height="16px" OnSelectedIndexChanged="ddlAñoH_SelectedIndexChanged" Width="76px">
                    </asp:DropDownList>
                    <br />
                <asp:Button ID="btn_buscar0" runat="server" Text="Filtrar" Width="170px" CssClass="auto-style2" OnClick="btn_buscar0_Click" />
                </td>
                <td>
                        <asp:Label ID="lblLeyenda" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                        <asp:GridView ID="GridViewDetalleVenta" runat="server">
                        </asp:GridView>
                        </td>
            </tr>
        </table>
             </div>
    </form>
</body>
</html>
