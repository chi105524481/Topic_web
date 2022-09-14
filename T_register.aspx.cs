using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Topic_10
{
    public partial class T_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            R_name.Text = "";
            R_passwd.Text = "";
            R_email.Text = "";
            R_tel.Text = "";
            R_address.Text = "";
            if (Session["login"] == "true" && Session["username"] != null)
            {
                register_status.Text = "Hello ! " + Session["username"].ToString();
                CartLink.Text = "<a href=\"T_MyCart.aspx\" class=\"view_cart\">購物車清單</a>";
                logInOut.Text = $"登出";
            }
            else
            {
                register_status.Text = "我的購物車";
                CartLink.Text = "";
                logInOut.Text = $"登入";

            }                
        }

        protected void register_Click(object sender, EventArgs e)
        {

            int reCMD = -1;
            string R_name = this.R_name.Text;
            string R_password = this.R_passwd.Text;
            string R_email = this.R_email.Text;
            string R_tel = this.R_tel.Text;
            string R_address = this.R_address.Text;

            string sql_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["petsConnectionString3"].ConnectionString;

            SqlConnection sqlconn = new SqlConnection(sql_data);
            sqlconn.Open();
            if(Session["reCMD"] != null)
                registerState.Text = Session["reCMD"].ToString();


            if (R_name != "" && R_password != "" && R_email != "" && R_tel != "" && R_address != "")
            {

                string sqlInquire = $"INSERT INTO Customers(name,password,email,tel,address) " +
                    $"VALUES(@name , @password ,@email ,@tel, @address) ";

                SqlCommand cmd = new SqlCommand(sqlInquire, sqlconn);

                cmd.Parameters.Add("@name", SqlDbType.NVarChar);
                cmd.Parameters["@name"].Value = R_name;
                cmd.Parameters.Add("@password", SqlDbType.NVarChar);
                cmd.Parameters["@password"].Value = R_password;
                cmd.Parameters.Add("@email", SqlDbType.NVarChar);
                cmd.Parameters["@email"].Value = R_email;
                cmd.Parameters.Add("@tel", SqlDbType.NVarChar);
                cmd.Parameters["@tel"].Value = R_tel;
                cmd.Parameters.Add("@address", SqlDbType.NVarChar);
                cmd.Parameters["@address"].Value = R_address;

                reCMD = cmd.ExecuteNonQuery();
                Session["reCMD"] = reCMD.ToString();

            }
            sqlconn.Close();
            //Response.Redirect("T_index.aspx");
        }
    }
}