<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="FormaPago.aspx.cs" Inherits="Vista.Forms.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        
    <div>
        <br />
        <asp:Label ID="Label7" runat="server" Text="FORMA DE PAGO" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <asp:Button ID="btn_tc" runat="server" Text="Tarjeta de crédito y débito" OnClick="btn_tarjeta_click" /></div>
            <div>
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <asp:Button ID="btn_volver_tc" runat="server" OnClick="btn_volver" Text="Volver a Forma de Pagos Anteriores" Width="296px" />
                    <br />
                    <br />
                <asp:Label ID="Label1" runat="server" Text="Tarjeta de credito" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                <asp:Label ID="lbl_ntc" runat="server" Text="Numero de Tarjeta"></asp:Label>
                    <asp:TextBox ID="txt_nt" runat="server" style="margin-left: 80px"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_ttc" runat="server" Text="Titular de Tarjeta"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 80px"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_venc" runat="server" Text="Vencimiento(MM/AA)"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 80px" Width="57px"></asp:TextBox>
                    <asp:Label ID="lbl_venc0" runat="server" Text="Código Seguridad" style="margin-left: 80px"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 30px" Width="57px"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Cuotas"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" style=" margin-left: 30px">
                    </asp:DropDownList>
                    <br />
                    <asp:Label ID="lbl_ntc0" runat="server" Text="Documento"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" style=" margin-left: 30px">
                        <asp:ListItem Value="0">DNI</asp:ListItem>
                        <asp:ListItem Value="1">Cédula</asp:ListItem>
                        <asp:ListItem Value="2">L.C.</asp:ListItem>
                        <asp:ListItem Value="3">L.E.</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtbox_dni" runat="server" style=" margin-left: 30px"></asp:TextBox>
                    <br />
                       <br />
                    <asp:Label ID="Label5" runat="server" Text="Tarjetas aceptadas por Mercado Pago"></asp:Label>
                    <br />
                    <img alt="visa" src="https://checkout-security.ms.tiendanube.com/img/brands/visa.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="mastercard" src="https://checkout-security.ms.tiendanube.com/img/brands/mastercard.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="amex" src="https://checkout-security.ms.tiendanube.com/img/brands/amex.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="diners" src="https://checkout-security.ms.tiendanube.com/img/brands/diners.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="cabal" src="https://checkout-security.ms.tiendanube.com/img/brands/cabal.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="argencard" src="https://checkout-security.ms.tiendanube.com/img/brands/argencard.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="tarjeta_naranja" src="https://checkout-security.ms.tiendanube.com/img/brands/tarjeta_naranja.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="nativa" src="https://checkout-security.ms.tiendanube.com/img/brands/nativa.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="tarjeta_shopping" src="https://checkout-security.ms.tiendanube.com/img/brands/tarjeta_shopping.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="cencosud" src="https://checkout-security.ms.tiendanube.com/img/brands/cencosud.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="cordobesa" src="https://checkout-security.ms.tiendanube.com/img/brands/cordobesa.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="falabella" src="https://checkout-security.ms.tiendanube.com/img/brands/falabella.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="tarjeta_walmart" src="https://checkout-security.ms.tiendanube.com/img/brands/tarjeta_walmart.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="cabal_debit" src="https://checkout-security.ms.tiendanube.com/img/brands/cabal_debit.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="visa_debit" src="https://checkout-security.ms.tiendanube.com/img/brands/visa_debit.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="maestro" src="https://checkout-security.ms.tiendanube.com/img/brands/maestro.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
                    <img alt="mastercard_debit" src="https://checkout-security.ms.tiendanube.com/img/brands/mastercard_debit.svg" style="box-sizing: border-box; width: 34px; margin: 0px 8px 8px 0px; color: rgb(250, 250, 250); font-family: &quot;Open Sans&quot;; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" />
            </asp:Panel>
                </div>
        <div><asp:Button ID="btn_rp" runat="server" Text="Rapipago o Pago Facil" OnClick="btn_rp_pf_click" /></div>
            
               <div> <asp:Panel ID="Panel2" runat="server" Visible="False">
                     <asp:Button ID="Button1" runat="server" OnClick="btn_volver" Text="Volver a Forma de Pagos Anteriores" Width="296px" />
                     <br />
                     <br />
                     <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" Text="Rapipago/Pago Facil"></asp:Label>
                     <br />
                     <br />
                   <asp:Label ID="Label2" runat="server" Text="Donde desea pagar?"></asp:Label>
                     <asp:DropDownList ID="DropDownList3" runat="server" style="margin-left: 80px">
                         <asp:ListItem Value="0">Rapipago</asp:ListItem>
                         <asp:ListItem Value="1">Pago Facil</asp:ListItem>
                         <asp:ListItem Value="2">Cobro Express</asp:ListItem>
                         <asp:ListItem Value="3">Provincia NET</asp:ListItem>
                     </asp:DropDownList>
                     <br />
                     <br />
                   <asp:Label ID="Label8" runat="server" Text="Podés pagarlo en la sucursal que te quede más cerca."></asp:Label>
                </asp:Panel>
                   
               </div>

       <div> <asp:Button ID="btn_tr" runat="server" Text="Transferencia" OnClick="btn_transferencia_click" /></div>
            <div>   
                <asp:Panel ID="Panel3" runat="server" Visible="False">
                    <asp:Button ID="Button2" runat="server" OnClick="btn_volver" Text="Volver a Forma de Pagos Anteriores" Width="296px" />
                    <br />
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="Pago por Deposito o Transferencia Bancaria" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Datos Bancarios: Banco Santander Río: Cuenta corriente en pesos"></asp:Label>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Sucursal: 111"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Nro de Cuenta: 111111/1"></asp:Label>
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="CUIT: 11-11111111-1"></asp:Label>
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Títular de la cuenta: LA VACA LOLA"></asp:Label>
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="CUIT: 11-11111111-1"></asp:Label>
                    <br />
                </asp:Panel>
                </div>
    <div></div>
    <br />
    <asp:Label ID="Label3" runat="server" Text="NOTAS DEL PEDIDO"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Height="96px" TextMode="MultiLine" Width="690px"></asp:TextBox>
 
    <br />
    <asp:Button ID="Button3" runat="server" Height="49px" Text="Realizar Pedido" Width="690px" />
 
</asp:Content>
