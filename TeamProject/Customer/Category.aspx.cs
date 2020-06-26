using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TeamProject.Customer
{
    public partial class Category : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        private string id="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                id = Request.QueryString["id"];
            }
            if (!IsPostBack)
            {
               Literal1.Text= layDSSPham();
            }         
        }
        public string layDSSPham()
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = xl.docDLDataTable("SELECT * FROM THE_LOAI WHERE ID_THE_LOAI='"+id+"'");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
               
                s += laySPTheoMaDM(dt.Rows[i]["ID_THE_LOAI"].ToString());
               
            }
            return s;
        }
        public string laySPTheoMaDM(string maTL)
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = xl.docDLDataTable("select * from SAN_PHAM where ID_THE_LOAI='" + maTL + "'");
            string link = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                link = "/Customer/Category.aspx?id=" + dt.Rows[i]["ID_THE_LOAI"];
                s += @"<div class='col-lg-4 col-sm-6'>
                                    <div class='product-item'>
								<div class='pi-pic'>
									<div class='tag-sale' > ON SALE</div>
									<a href='/Customer/ChiTietSanPham.aspx?id=" + dt.Rows[i]["ID_SAN_PHAM"] + @"'><img src = './img/product/" + dt.Rows[i]["HINH_ANH"] + @"'  alt = '' ></a>

                                    <div class='pi -links' >
										<a href = '#' class='add -card' ><i class='flaticon -bag' ></i><span>ADD TO CART</span></a>
										<a href = '#' class='wishlist -btn' ><i class='flaticon -heart' ></i></a>
									</div>
								</div>
								<div class='pi-text' >
									<h6>" + dt.Rows[i]["GIA_BAN"] + @"VNĐ</h6>
									<p>" + dt.Rows[i]["TEN_SAN_PHAM"] + @"</p>
								</div>
							</div>
						</div>";
            }
            return s;
        }
    }
}