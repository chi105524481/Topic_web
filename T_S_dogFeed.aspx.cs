using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Topic_10
{
    public partial class T_S_dogFeed : System.Web.UI.Page
    {
        public int Index
        {
            get
            {
                if (ViewState["Index"] == null)
                {
                    ViewState["Index"] = 0;
                }
                else
                {
                    ViewState["Index"] = int.Parse(ViewState["Index"].ToString()) + 1;
                }

                return int.Parse(ViewState["Index"].ToString());
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //購物車提示
            if (Session["login"] == "true" && Session["username"] != null)
            {
                Status.Text = "Hello ! " + Session["username"].ToString();
                cartLink.Text = "<a href=\"T_MyCart.aspx\" class=\"view_cart\">&gt;&gt;購物車清單</a>";
            }
            else
            {
                Status.Text = "尚未登入";
                cartLink.Text = "";
            }
            //連接資料庫
            string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(sql_data);
            sqlconn.Open();
            string sqlInquire = "SELECT *  FROM PetsFood WHERE id > 1601";
            string sqlCount = "SELECT   COUNT(*) FROM      PetsFood";

            // DataSet 獲取全部資料
            SqlCommand cmd = new SqlCommand(sqlInquire, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet dataset = new DataSet();

            // DataTable 獲取數量
            SqlCommand C_cmd = new SqlCommand(sqlCount, sqlconn);
            SqlDataAdapter C_adapter = new SqlDataAdapter(C_cmd);
            DataTable C_dt = new DataTable();
            int totalItems = dataset.Tables.Count;


            int page = 0;
            if (Request["page"] != null)
            {
                page = int.Parse(Request["page"]);
            }
            else
            {
                page = 1;
            }

            adapter.Fill(dataset, (page - 1) * 10, 10, "PetsFood");



            foreach (DataRow dr in dataset.Tables[0].Rows)
            {
                HtmlGenericControl newControl = new HtmlGenericControl($"div class=\"new_prod_box\"");
                newControl.ID = "NEWControl=" + Index;
                newControl.InnerHtml += $" <a href=\"details.html\">{dr["id"]}{dr["pet"]}{dr["kind"]}</a>";
                newControl.InnerHtml += $"<div class=\"new_prod_bg\">";

                newControl.InnerHtml += $"<a href=\"details.html\"><img src={dr["image"]} style=\"height:100px;\" alt=\"\" title=\"\" class=\"thumb\" border=\"0\" /></a>";
                newControl.InnerHtml += $" </div>";


                PlaceHolder1.Controls.Add(newControl);
            }
        }
    }
}