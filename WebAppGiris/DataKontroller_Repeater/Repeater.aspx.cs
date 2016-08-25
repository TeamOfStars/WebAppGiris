using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataKontroller_Repeater
{
    public partial class Repeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=ASUS\\MYSERVER;Database=NORTHWND;Trusted_Connection=True;");
            //repetater zaten bu işi yapar
           // SqlCommand com = new SqlCommand("select CategoryName,Description from Categories",con);
           // con.Open();
           //SqlDataReader rd=com.ExecuteReader();
           // while(rd.Read()){
           //     Response.Write(rd.GetString(0));
           // }

            SqlDataAdapter da = new SqlDataAdapter("select CategoryName,Description from Categories", con);
            DataTable dt = new DataTable("kategoriler");
            da.Fill(dt);
            repeate1.DataSource = dt;
            repeate1.DataBind();



        }

        protected void repeate1_ItemCreated(object sender, RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType==ListItemType.Footer){

                (e.Item.FindControl("lblsonuc") as Label).Text = "toplam kayıt sayısı :"+(repeate1.DataSource as DataTable).Rows.Count.ToString();
                
            }
        }

   
    }
}