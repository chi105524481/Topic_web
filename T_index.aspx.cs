using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Topic_10
{
    public partial class T_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["login"] == "true" && Session["username"] != null)
            {
                index_status.Text = "Hello ! " + Session["username"].ToString() + Session["userID"].ToString();
                CartLink.Text = "<a href=\"cart.html\" class=\"view_cart\">購物車清單</a>";
            }
            else
                index_status.Text = "我的購物車";
            CartLink.Text = "";

            string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(sql_data);
            sqlconn.Open();
            string sqlInquire = "SELECT   top(5)* FROM      PetsFood  order by price DESC";

            // DataSet 獲取全部資料
            SqlCommand cmd = new SqlCommand(sqlInquire, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();

            //使用適配器限定範圍
            adapter.Fill(dataset);

            //迴圈 動態產生
            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                HtmlGenericControl newControl = new HtmlGenericControl($"div class=\"feat_prod_box\"");
                newControl.InnerHtml += $"<div class=\"prod_img\"><img src=\"{dr["image"]}\" style=\"height:100px;\" alt=\"\" title=\"\" border=\"0\" /></div>";
                newControl.InnerHtml += $"<div class=\"prod_det_box\">";
                newControl.InnerHtml += $"<div class=\"box_top\"></div>";
                newControl.InnerHtml += $"<div class=\"box_center\">";
                newControl.InnerHtml += $"<div class=\"prod_title\">{dr["pet"]}{dr["kind"]}</div>";
                newControl.InnerHtml += $"<p class=\"details\">{dr["content"]}</p>";
                newControl.InnerHtml += $"<a href = \"\" class=\"more\"></a>";
                newControl.InnerHtml += $"<div class=\"clear\"></div>";
                newControl.InnerHtml += $"</div>";
                newControl.InnerHtml += $"<div class=\"box_bottom\"></div>";
                newControl.InnerHtml += $"</div>";
                newControl.InnerHtml += $"<div class=\"clear\"></div>";
                newControl.InnerHtml += $"";


                PlaceHolder1.Controls.Add(newControl);


            }
            sqlconn.Close();
        }
    }

}