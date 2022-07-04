<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Vista.Forms.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            text-align: center;
        }
        .auto-style3 {
            width: 561px;
        }
        .auto-style4 {
            width: 651px;
        }
        .auto-style6 {
            width: 561px;
            text-align: right;
            height: 29px;
        }
        .auto-style7 {
            width: 561px;
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 651px;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
            text-align: right;
        }
        .auto-style13 {
            width: 651px;
            height: 27px;
        }
        .auto-style14 {
            width: 561px;
            text-align: right;
            height: 27px;
        }
        .auto-style15 {
            height: 27px;
        }
        .auto-style16 {
            height: 27px;
            text-align: right;
        }

        .auto-style17 {
            margin-left: 162px;
        }
        .auto-style18 {
            margin-right: 0px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a><span><strong>CARRITO</strong></span></a><table class="auto-style2">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="grdCarrito" runat="server" CssClass="auto-style17" Width="243px">
                    </asp:GridView>
                    <asp:Label ID="lblNoProductos" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style6">
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnVaciar" runat="server" Text="Vaciar carrito" CssClass="auto-style18" OnClick="btnVaciar_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style10">&nbsp; TOTAL: <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style14">
                    </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="btnComprar" runat="server" Text="Comprar" OnClick="btnComprar_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style16">
                    <asp:HyperLink ID="hyVerMas" runat="server" NavigateUrl="~/Forms/Inicio.aspx">Ver mas productos</asp:HyperLink>
                </td>
            </tr>
        </table>
</asp:Content>


