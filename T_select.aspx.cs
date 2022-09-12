using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Topic_10
{
    public partial class T_select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int total = 0;
            int freight = 60;

            //右邊框架顯示(購物車連結)
            if (Session["login"] == "true" && Session["username"] != null)
            {
                status.Text = "Hello ! " + Session["username"].ToString() + Session["userID"].ToString();
                cartLink.Text = "<a href=\"cart.html\" class=\"view_cart\">購物車清單</a>";
            }
            else
            {
                status.Text = "我的購物車";
                cartLink.Text = "";
            }


            //左邊框架顯示(商品)
            if (Session["login"] == "true" && Session["username"] != null)
            { }
                string sqlInquire = "SELECT *  FROM  PetsFood WHERE id = 3";
                string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(s_data);
                if (Session["userID"] != null)
                {
                    sqlInquire = $"SELECT *  FROM Cart , PetsFood where customerID = {Session["userID"]} " +
                        $"and (Cart.PetsFoodID = PetsFood.id)";
                }
                SqlCommand cmd = new SqlCommand(sqlInquire, conn);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
            

                //購物車內容
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                //TableRow Tr = new TableRow();
                //TableCell Tc = new TableCell();

                //Tc.Controls.Add(new LiteralControl(
                //    String.Format($"<tr border=\"1\" class=\"cart_thumb\">" +
                //    $"<td>{dr["pet"]}{dr["kind"]}</td>" +
                //    //$"<td>{dr["kind"]}</td>" +
                //    $"<td>{dr["content"]}</td>" +
                //    $"<td>{dr["price"]}</td>" +
                //    $"<td>{dr["amount"]}</td>" +
                //    $"</tr>")));
                //Tr.Cells.Add(Tc);
                //Table1.Rows.Add(Tr);
                L_content.Text = dr["content"].ToString();
                L_price.Text = dr["price"].ToString();
                L_image.Text = $"<img src=\"{dr["image"].ToString()}\" alt=\"\" title=\"\" border=\"0\" />";



            }
            

        }


        protected void OnCart_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}