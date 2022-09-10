using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Topic_10
{
    public partial class NewPage : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int page = 0;
            if (Request["page"] != null)
            {
                page = int.Parse(Request["page"]);
            }
            else
            {
                page = 1;
            }

            for (int i = 1; i <= 8; i++)
            {
                if (i == page)
                {
                    Literal1.Text += $"<span class=\"current\">{i}</span>";
                }
                else
                {
                    Literal1.Text += $"<a href=\"?page={i}\">{i}</a>";
                }
            }
        }
    }
}