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
    public partial class T_detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int total = 0;
            int freight = 60;

            //右邊框架顯示(購物車連結)
            if (Session["login"] == "true" && Session["username"] != null)
            {
                Cart_status.Text = "Hello ! " + Session["username"].ToString();
                CartLink.Text = "<a href=\"T_MyCart.aspx\" class=\"view_cart\">購物車清單</a>";
                logInOut.Text = $"登出";
            }
            else
            {
                Cart_status.Text = "我的購物車";
                CartLink.Text = "";
                logInOut.Text = $"登入";
            }


            //左邊框架顯示(訂單)
            if (Session["login"] == "true" && Session["username"] != null)
            { 
                string sqlInquire = "SELECT *  FROM Orders , PetsFood " +
                "where Orders.customersID = 1003 and Orders.PetsFoodID = PetsFood.id";
                string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(s_data);
                if (Session["userID"] != null)
                {
                    sqlInquire = "SELECT *  FROM Orders , PetsFood " +
                    "where Orders.customersID = 1003 and Orders.PetsFoodID = PetsFood.id";
                }
                SqlCommand cmd = new SqlCommand(sqlInquire, conn);
                conn.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);

                //訂單內容
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    TableRow Tr = new TableRow();
                    TableCell Tc = new TableCell();

                    Tc.Controls.Add(new LiteralControl(
                        String.Format($"<tr border=\"1\" class=\"cart_thumb\">" +
                        $"<td>{dr["pet"]}{dr["kind"]}</td>" +
                        //$"<td>{dr["kind"]}</td>" +
                        $"<td>{dr["content"]}</td>" +
                        $"<td>{dr["price"]}</td>" +
                        $"<td>{dr["amount"]}</td>" +
                        $"</tr>")));
                    Tr.Cells.Add(Tc);
                    Table1.Rows.Add(Tr);

                    //總額計算
                    //total += (Convert.ToInt32(dr["price"]) * Convert.ToInt32(dr["amount"]));

                }

            }


        }
    }
}