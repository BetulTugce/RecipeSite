using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Comments : System.Web.UI.Page
    {
        sqlclass con = new sqlclass();
        string operation = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["ID"];
                operation = Request.QueryString["operation"];
            }
            Panel2.Visible = false;

            //confirmed comments
            SqlCommand com = new SqlCommand("select * from TBL_COMMENTS where CONFIRMATION=1", con.connection());
            SqlDataReader dataReader = com.ExecuteReader();
            DataList1.DataSource = dataReader;
            DataList1.DataBind();

            //not confirmed comments
            SqlCommand com2 = new SqlCommand("select * from TBL_COMMENTS where CONFIRMATION=0", con.connection());
            SqlDataReader dataReader1 = com2.ExecuteReader();
            DataList2.DataSource = dataReader1;
            DataList2.DataBind();

            if (operation == "delete")
            {
                SqlCommand com3 = new SqlCommand("Delete from TBL_COMMENTS where ID=@id", con.connection());
                com3.Parameters.AddWithValue("@id", id);
                com3.ExecuteNonQuery();
                con.connection().Close();
            }
        }

        protected void btnListTrue_Click(object sender, ImageClickEventArgs e)
        {
            if (btnListTrue.ImageUrl == "Icon/menu2.png")
            {
                Panel2.Visible = false;
                btnListTrue.ImageUrl = "Icon/menu.png";
            }
            else
            {
                Panel2.Visible = true;
                btnListTrue.ImageUrl = "Icon/menu2.png";
            }
        }

        protected void btnListFalse_Click(object sender, ImageClickEventArgs e)
        {
            if (btnListFalse.ImageUrl == "Icon/menu2.png")
            {
                Panel4.Visible = false;
                btnListFalse.ImageUrl = "Icon/menu.png";
            }
            else
            {
                Panel4.Visible = true;
                btnListFalse.ImageUrl = "Icon/menu2.png";
            }
        }
    }
}