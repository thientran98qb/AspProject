using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TeamProject.Customer
{
    public partial class GioHang : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["GioHang"] != null)
            {
                GridView1.DataSource = (DataTable)Session["GioHang"];
                GridView1.DataBind();
            }
            if (!IsPostBack)
            {
                Literal1.Text = layDSSPhamLQ();               
            }
        }
        public string layDSSPhamLQ()
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = xl.docDLDataTable("SELECT * FROM SAN_PHAM");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                s += @"
                    <div class='product-item'>
					<div class='pi-pic'>
						<a href='/Customer/ChiTietSanPham.aspx?id=" + dt.Rows[i]["ID_SAN_PHAM"] + @"'><img src = './img/product/" + dt.Rows[i]["HINH_ANH"] + @"' alt=''></a>
						<div class='pi-links'>
							<a href = '#' class='add-card'><i class='flaticon-bag'></i><span>ADD TO CART</span></a>
							<a href = '#' class='wishlist-btn'><i class='flaticon-heart'></i></a>
						</div>
					</div>
					<div class='pi-text'>
						<h6>$35,00</h6>
						<p>Flamboyant Pink Top</p>
					</div>
				</div>";
            }
            return s;
        }

    }
}