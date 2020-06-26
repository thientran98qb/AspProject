using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace TeamProject.Customer
{
    public partial class CustomerMasterPage : System.Web.UI.MasterPage
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = layDSSP();
        }
        public string layDSSP()
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = xl.docDLDataTable("SELECT * FROM THE_LOAI");
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                s += @"<li><a href='/Customer/Category.aspx?id=" + dt.Rows[i]["ID_THE_LOAI"]+@"' title='"+ dt.Rows[i]["TEN_THE_LOAI"] + @"'>"+dt.Rows[i]["TEN_THE_LOAI"]+@"</a></li>";
            }
            return s;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Session["Name"] = null;
            Response.Redirect("/Customer/DangNhap.aspx");
        }
    }
}