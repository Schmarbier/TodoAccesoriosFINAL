<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="Vista.Forms.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="nav-bar">
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Forms/Inicio.aspx">Inicio</asp:HyperLink>
&nbsp;&gt; Producto</td>
        </tr>
        <tr>
            <td>Articulo<br />
                <br />
                <asp:ListView ID="lvProducto" runat="server" DataKeyNames="Id_Art" GroupItemCount="3">
<%--                    <AlternatingItemTemplate>
                        <td runat="server" style="background-color:#FFF8DC;">Id_Art:
                            <asp:Label ID="Id_ArtLabel" runat="server" Text='<%# Eval("Id_Art") %>' />
                            <br />UrlImagen_Art:
                            <asp:Label ID="UrlImagen_ArtLabel" runat="server" Text='<%# Eval("UrlImagen_Art") %>' />
                            <br />Nombre_Art:
                            <asp:Label ID="Nombre_ArtLabel" runat="server" Text='<%# Eval("Nombre_Art") %>' />
                            <br />PrecioUnitario_Art:
                            <asp:Label ID="PrecioUnitario_ArtLabel" runat="server" Text='<%# Eval("PrecioUnitario_Art") %>' />
                            <br /></td>
                    </AlternatingItemTemplate>--%>
                    <EditItemTemplate>
                        <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">Id_Art:
                            <asp:Label ID="Id_ArtLabel1" runat="server" Text='<%# Eval("Id_Art") %>' />
                            <br />UrlImagen_Art:
                            <asp:TextBox ID="UrlImagen_ArtTextBox" runat="server" Text='<%# Bind("UrlImagen_Art") %>' />
                            <br />Nombre_Art:
                            <asp:TextBox ID="Nombre_ArtTextBox" runat="server" Text='<%# Bind("Nombre_Art") %>' />
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
                            <br />UrlImagen_Art:
                            <asp:TextBox ID="UrlImagen_ArtTextBox" runat="server" Text='<%# Bind("UrlImagen_Art") %>' />
                            <br />Nombre_Art:
                            <asp:TextBox ID="Nombre_ArtTextBox" runat="server" Text='<%# Bind("Nombre_Art") %>' />
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
                            <asp:Label ID="Id_ArtLabel" runat="server" Text='<%# Eval("Id_Art") %>'></asp:Label>
                            <br />
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("UrlImagen_Art") %>' />
                            <br />
                            <asp:Label ID="Nombre_ArtLabel" runat="server" Text='<%# Eval("Nombre_Art") %>' />
                            <br />
                            <asp:Label ID="PrecioUnitario_ArtLabel" runat="server" Text='<%# Eval("PrecioUnitario_Art") %>' />
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
                                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">Id_Art:
                            <asp:Label ID="Id_ArtLabel" runat="server" Text='<%# Eval("Id_Art") %>' />
                            <br />UrlImagen_Art:
                            <asp:Label ID="UrlImagen_ArtLabel" runat="server" Text='<%# Eval("UrlImagen_Art") %>' />
                            <br />Nombre_Art:
                            <asp:Label ID="Nombre_ArtLabel" runat="server" Text='<%# Eval("Nombre_Art") %>' />
                            <br />PrecioUnitario_Art:
                            <asp:Label ID="PrecioUnitario_ArtLabel" runat="server" Text='<%# Eval("PrecioUnitario_Art") %>' />
                            <br /></td>
                    </SelectedItemTemplate>
                </asp:ListView>
                <br />
                <br />
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar al carrito" OnClick="btnAgregar_Click" />
&nbsp;&nbsp;
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>Descripcion<br />
                <br />
                <asp:Label ID="lblDescripcion" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
