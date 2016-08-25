using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StandartKontroller
{
    public partial class Calender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cld1_SelectionChanged(object sender, EventArgs e)
        {
            //lbl1.Text = "Bugün :" + cld1.SelectedDate.ToShortDateString();
            Response.Write( cld1.SelectedDate.ToShortDateString());
            string aa;
            //aa.Length
        }
    }
}