using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TeamProject.Customer
{
    public partial class DatHang : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] pars = new string[] {
            "@TEN_KHACH_HANG",
            "@DIA_CHI",
            "@SO_DIEN_THOAI",
            "@EMAIL",
            "@ID_TAI_KHOAN"
        };
            string[] vals = new string[] {
            txtHoTen.Text,
            txtDiaChi.Text
            , txtSoDienThoai.Text
            , txtEmail.Text
            , Session["ID"].ToString()
        };

            string id = xl.docDuyNhatStored("insertHD", vals, pars);
            //Kiem tra Session["GioHang"] có null
            DataTable dt = (DataTable)Session["GioHang"];
            foreach (DataRow dr in dt.Rows)
            {
                string[] pars1 = new string[] {
                "@ID_HOA_DON",
                "@ID_SAN_PHAM",
                "@SO_LUONG",
                "@DON_GIA"
            };
                string[] vals1 = new string[] {
                id
                , dr["ID_SAN_PHAM"].ToString()
                , dr["SO_LUONG"].ToString()
                , dr["GIA_BAN"].ToString()
            };
                xl.docDuyNhatStored("insertCTHD", vals1, pars1);
            }
            Response.Write("<script>alert('Chúc mừng bạn đã  mua hàng thành công');</script>");

            Session["GioHang"] = null;
        }
    }
}