using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vista.Forms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btn_tarjeta_click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            btn_rp.Visible = false;
            btn_tr.Visible = false;
            btn_tc.Visible = false;
       

        }

        protected void btn_rp_pf_click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
            btn_tc.Visible = false;
            btn_tr.Visible = false;
            btn_rp.Visible = false;
         
        }

        protected void btn_transferencia_click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
            btn_rp.Visible = false;
            btn_tc.Visible = false;
            btn_tr.Visible = false;

        }

        protected void btn_volver(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            btn_rp.Visible = true;
            btn_tc.Visible = true;
            btn_tr.Visible = true;
        }
    }
}