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
    public partial class Repeater2 : System.Web.UI.Page
    {
        decimal money = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=ASUS\\MYSERVER;Database=NORTHWND;Trusted_Connection=True;");
            SqlDataAdapter adtr = new SqlDataAdapter("select p.ProductName,p.UnitPrice,c.CategoryName from Products p join Categories c on c.CategoryID=p.CategoryID", con);
            DataTable dt = new DataTable();
            adtr.Fill(dt);
            urunRepeater.DataSource = dt;
            urunRepeater.DataBind();
            
            
        }
        private void Topla()
        {
            foreach (RepeaterItem item in urunRepeater.Items)
            {
                money += decimal.Parse((item.FindControl("mn") as Label).Text);
            }

        }
        protected void urunRepeater_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            
            //if (e.Item.ItemType==ListItemType.Footer)
            //{
            //    Topla();
            //    (e.Item.FindControl("foterBilgi") as Label).Text ="Toplam Ürün Fiyatı:"+ money.ToString();
            //}

            DataTable dt;
            decimal toplam = 0;
            if(e.Item.ItemType==ListItemType.Footer){
                dt = (urunRepeater.DataSource as DataTable);

                if(dt==null){
                    return;
                }
                else
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        toplam += (decimal)row["UnitPrice"];
                    }
                }

                (e.Item.FindControl("foterBilgi") as Label).Text = "toplam : "+toplam.ToString();

            }
        }
    }
}