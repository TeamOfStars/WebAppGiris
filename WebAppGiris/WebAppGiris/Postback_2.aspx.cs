using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppGiris
{
    public partial class Postback_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack){
            sehirler.Items.Add("istanbul");
            sehirler.Items.Add("İzmir");
            sehirler.Items.Add("Isparta");
            sehirler.Items.Add("İzmit");
            sehirler.Items.Add("Aydın");
            lbl1.Text = "Ben ilk yazıldım.";
            }
            else
            {
                lbl1.Text = "Ben  postbackle yazıldım.";
            }


        }

        protected void btn1_Click(object sender, EventArgs e)
        {

        }

        protected void btn1_Click1(object sender, EventArgs e)
        {

        }

    }
}