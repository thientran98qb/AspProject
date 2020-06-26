using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamProject.Customer
{
    public partial class DangKy : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_DangKy_Click(object sender, EventArgs e)
        {
            string[] vals = new string[]
            {
                txtUserName.Text,
                txtPass.Text,                
                txtHoTen.Text
            };
            string[] pars = new string[]
            {
                "@UserName",
                "@Pass",
                "@HoTen"
            };
            int kq = xl.capNhatDuLieuStored("dangkyTK", vals, pars);
            if (kq >= 1)
            {
                lblThongBao.Text = "Đăng Ký Thành Công";
                lblThongBao.ForeColor = System.Drawing.Color.Blue;
            }
            else
            {
                lblThongBao.Text = "Đăng Ký Thất Bại";
                lblThongBao.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}