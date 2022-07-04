<%@ Page Title="" Language="C#" UnobtrusiveValidationMode="None" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs"Inherits="Vista.Forms.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 414px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="nav-bar">
    <tr>
        <td class="auto-style1">
            <br />
        </td>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblResultados" runat="server"></asp:Label>
&nbsp; Resultados de busqueda</td>
    </tr>
    <tr>
        <td class="auto-style1">Filtro de Busqueda<br />
            <br />
            Nombre del articulo:&nbsp;
            <asp:TextBox ID="txtNobreArt" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            &nbsp; 
            <asp:Button ID="Button2" runat="server" Text="Buscar" OnClick="Button2_Click1" />
            <br />
            <br />
            Ordenar por<br />
            <br />
            <asp:DropDownList ID="ddlOrden" runat="server" Height="19px" Width="157px">
                <asp:ListItem Value="FechaIngreso_Art ASC">Primeros lanzamientos</asp:ListItem>
                <asp:ListItem Value="FechaIngreso_Art DESC">Ultimos lanzamientos</asp:ListItem>
                <asp:ListItem Value="PrecioUnitario_Art ASC">Precio (menor a mayor)</asp:ListItem>
                <asp:ListItem Value="PrecioUnitario_Art DESC">Precio (mayor a menor)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            Categorias<br />
            <br />
            <asp:RadioButtonList ID="rbCategoria" runat="server">
                <asp:ListItem Value="1">Cadenas</asp:ListItem>
                <asp:ListItem Value="2">Aros</asp:ListItem>
                <asp:ListItem Value="3">Pulseras</asp:ListItem>
                <asp:ListItem Value="4">Anillos</asp:ListItem>
                <asp:ListItem Value="5">Dijes</asp:ListItem>
                <asp:ListItem Value="6">Tobilleras</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Material<br />
            <br />
            <asp:RadioButtonList ID="rbMaterial" runat="server">
                <asp:ListItem Value="1">Oro 18K</asp:ListItem>
                <asp:ListItem Value="2">Plata 925</asp:ListItem>
                <asp:ListItem Value="3">Vermeil</asp:ListItem>
                <asp:ListItem Value="4">Bronce enchapado en oro</asp:ListItem>
                <asp:ListItem Value="5">Acero inoxidable</asp:ListItem>
                <asp:ListItem Value="6">Incrusaciones de diamante</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <br />
            Precio<br />
            <br />
            $ Min&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ Max<br />
            <asp:TextBox ID="txtPrecio1" runat="server"></asp:TextBox>
&nbsp;&nbsp; -&nbsp;
            <asp:TextBox ID="txtPrecio2" runat="server"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrecio1" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]{4}$">*Ingrese solo numeros</asp:RegularExpressionValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrecio2" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]{4}$">*Ingrese solo numeros</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" Width="127px" OnClick="btnFiltrar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnQuitar" runat="server" Text="Quitar filtros" Width="132px" OnClick="btnQuitar_Click" />
        </td>
        <td>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id_Art" GroupItemCount="3" OnPagePropertiesChanging="ListView1_PagePropertiesChanging">
<%--                <AlternatingItemTemplate>
                    <td runat="server" style="background-color:#FFF8DC;">Id_Art:
                        <asp:Label ID="Id_ArtLabel" runat="server" Text='<%# Eval("Id_Art") %>' />
                        <br />Nombre_Art:
                        <asp:Label ID="Nombre_ArtLabel" runat="server" Text='<%# Eval("Nombre_Art") %>' />
                        <br />UrlImagen_Art:
                        <asp:Label ID="UrlImagen_ArtLabel" runat="server" Text='<%# Eval("UrlImagen_Art") %>' />
                        <br />PrecioUnitario_Art:
                        <asp:Label ID="PrecioUnitario_ArtLabel" runat="server" Text='<%# Eval("PrecioUnitario_Art") %>' />
                        <br /></td>
                </AlternatingItemTemplate>--%>
                <EditItemTemplate>
                    <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Id_Art:
                        <asp:Label ID="Id_ArtLabel1" runat="server" Text='<%# Eval("Id_Art") %>' />
                        <br />Nombre_Art:
                        <asp:TextBox ID="Nombre_ArtTextBox" runat="server" Text='<%# Bind("Nombre_Art") %>' />
                        <br />UrlImagen_Art:
                        <asp:TextBox ID="UrlImagen_ArtTextBox" runat="server" Text='<%# Bind("UrlImagen_Art") %>' />
                        <br />PrecioUnitario_Art:
                        <asp:TextBox ID="PrecioUnitario_ArtTextBox" runat="server" Text='<%# Bind("PrecioUnitario_Art") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                        <br /></td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No se han devuelto datos.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
<td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">Id_Art:
                        <asp:TextBox ID="Id_ArtTextBox" runat="server" Text='<%# Bind("Id_Art") %>' />
                        <br />Nombre_Art:
                        <asp:TextBox ID="Nombre_ArtTextBox" runat="server" Text='<%# Bind("Nombre_Art") %>' />
                        <br />UrlImagen_Art:
                        <asp:TextBox ID="UrlImagen_ArtTextBox" runat="server" Text='<%# Bind("UrlImagen_Art") %>' />
                        <br />PrecioUnitario_Art:
                        <asp:TextBox ID="PrecioUnitario_ArtTextBox" runat="server" Text='<%# Bind("PrecioUnitario_Art") %>' />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                        <br /></td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color:#DCDCDC;color: #000000;">
                        <asp:Label ID="Id_ArtLabel" runat="server" Text='<%# Eval("Id_Art") %>' />
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UrlImagen_Art") %>'/>
                        <br />
                        <asp:Label ID="Nombre_ArtLabel" runat="server" Text='<%# Eval("Nombre_Art") %>' />
                        <br />
                        <asp:Label ID="PrecioUnitario_ArtLabel" runat="server" Text='<%# Eval("PrecioUnitario_Art") %>' />
                        <br />
                        <asp:Button ID="btnVer" runat="server" CommandArgument='<%# Eval("Id_Art")+"-"+Eval("UrlImagen_Art")+"-"+Eval("Nombre_Art")+"-"+Eval("PrecioUnitario_Art") %>' CommandName="comandoVer" OnCommand="btnVer_Command1" Text="Ver Mas" />
                        <br /></td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                        <asp:NumericPagerField />
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Id_Art:
                        <asp:Label ID="Id_ArtLabel" runat="server" Text='<%# Eval("Id_Art") %>' />
                        <br />Nombre_Art:
                        <asp:Label ID="Nombre_ArtLabel" runat="server" Text='<%# Eval("Nombre_Art") %>' />
                        <br />UrlImagen_Art:
                        <asp:Label ID="UrlImagen_ArtLabel" runat="server" Text='<%# Eval("UrlImagen_Art") %>' />
                        <br />PrecioUnitario_Art:
                        <asp:Label ID="PrecioUnitario_ArtLabel" runat="server" Text='<%# Eval("PrecioUnitario_Art") %>' />
                        <br /></td>
                </SelectedItemTemplate>
            </asp:ListView>
        </td>
    </tr>
</table>
</asp:Content>
