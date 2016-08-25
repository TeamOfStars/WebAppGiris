using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataKontroller_Repeater
{
    public partial class DataGrid2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            bilgilbl.Text = grid.SelectedRow.Cells[0].Text + " idli ürünü " + grid.SelectedRow.Cells[2].Text + " fiyata aldınız!";
        }

        protected void grid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            /*sayfa değiştirildiğinde tetiklenen olay, sayfa indexini yeni sayfa indexi olcak şekilde ayarlıyoruz ve grid i tekrardan bind ediyoruz*/
            grid.PageIndex = e.NewPageIndex;
            grid.DataBind();
            lbl2.Text=(grid.PageIndex.ToString())+"/"+(grid.PageCount.ToString());
        }
    }
}