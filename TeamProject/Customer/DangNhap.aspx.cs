using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TeamProject.Customer
{
    public partial class DangNhap : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_DangNhap_Click(object sender, EventArgs e)
        {
            string[] vals = new string[]
            {
                txtUserName.Text,
                txtPass.Text

            };
            string[] pars = new string[]
            {
                "@tdn",
                "@mk"
            };
            DataTable dt = xl.docDLDataTableStored("dangNhap", vals, pars);
            if (dt.Rows.Count == 1)
            {
                Session["ID"] = dt.Rows[0]["ID_TAI_KHOAN"].ToString();
                Session["User"] = dt.Rows[0]["TEN_DANG_NHAP"].ToString();
                Session["Name"] = dt.Rows[0]["HO_TEN"].ToString();
                if (chRemember.Checked)
                {
                    HttpCookie ck = new HttpCookie("dn");
                    ck.Value = Session["User"].ToString();
                    ck.Expires = DateTime.Today.AddDays(30);
                    Response.Cookies.Add(ck);
                }
                Response.Redirect("/Customer/index.aspx");
            }
            else
            {
                lblThongBao.Text = "Tên đang nhập tài khoản không đúng ";
                lblThongBao.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}