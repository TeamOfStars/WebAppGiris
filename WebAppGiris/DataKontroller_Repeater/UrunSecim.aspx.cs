using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DataKontroller_Repeater
{
    public partial class UrunSecim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drop1.DataValueField = "OrderId";

        }
        SqlConnection bag = new SqlConnection(@"Server=ASUS\MYSERVER;Database=NORTHWND;Trusted_Connection=True;");
        protected void drop1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter adtr = new SqlDataAdapter("SiparisinUrunleriniGetir", bag);
            adtr.SelectCommand.CommandType = CommandType.StoredProcedure;
            adtr.SelectCommand.Parameters.AddWithValue("siparisID", drop1.Text);
            DataTable dt = new DataTable();
            adtr.Fill(dt); 
            urunlerGrid.DataSource = dt;
           
            urunlerGrid.DataBind();
            decimal money = 0;
            foreach (GridViewRow item in urunlerGrid.Rows)
            {
                money += Decimal.Parse(item.Cells[4].Text);
            }
            lbl.Text = "Toplam Tutar:" + money.ToString() + " TL";

        }
    }
}