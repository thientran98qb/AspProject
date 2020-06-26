using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TeamProject.Customer
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        XLDL xl = new XLDL();
        private string ID;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] != null)
            {
                ID = Request.QueryString["id"];
            }
           
            if (!IsPostBack)
            {
                Literal1.Text = layDSSPham();
                Literal2.Text = layDSSPhamLQ();
                loadDTL();
            }
        }
        public void loadDTL()
        {
            string[] val = new string[]
                           {
                    ID
                           };
            string[] par = new string[]
            {
                    "@ID_SAN_PHAM"
            };
            DataList1.DataSource = xl.docDLDataTable("SELECT * FROM DanhGia WHERE ID_SAN_PHAM=" + ID);
            DataList1.DataBind();
        }
        public string layDSSPham()
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = xl.docDLDataTable("SELECT * FROM SAN_PHAM WHERE ID_SAN_PHAM = '" + ID + "'");
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                s += laySPTheoMaDM(dt.Rows[i]["ID_SAN_PHAM"].ToString());

            }
            return s;
        }
        public string laySPTheoMaDM(string maTL)
        {
            string s = "";
            DataTable dt = new DataTable();
            dt = xl.docDLDataTable("select * from SAN_PHAM inner join CT_SANPHAM on SAN_PHAM.ID_CT_SP=CT_SANPHAM.ID_CT_SP where ID_SAN_PHAM='" + maTL + "'");
            string link = "";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                link = "/Category.aspx?id=" + dt.Rows[i]["ID_SAN_PHAM"];
                s += @"<div class='col-lg-6'>
                        <div class='product-pic-zoom'>
						<img class='product-big-img' src='img/single-product/" + dt.Rows[i]["HINH_ANH"] + @"' alt=''>
					</div>
					<div class='product-thumbs' tabindex='1' style='overflow: hidden; outline: none;'>
						<div class='product-thumbs-track'>
							<div class='pt active' data-imgbigurl='img/single-product/" + dt.Rows[i]["HINH_ANH"] + @"'><img src = 'img/single-product/" + dt.Rows[i]["HINH_ANH"] + @"' alt=''></div>
							<div class='pt' data-imgbigurl='img/single-product/" + dt.Rows[i]["HINH_ANH2"] + @"'><img src = 'img/single-product/" + dt.Rows[i]["HINH_ANH2"] + @"' alt=''></div>
							<div class='pt' data-imgbigurl='img/single-product/" + dt.Rows[i]["HINH_ANH3"] + @"'><img src = 'img/single-product/" + dt.Rows[i]["HINH_ANH3"] + @"' alt=''></div>
							<div class='pt' data-imgbigurl='img/single-product/" + dt.Rows[i]["HINH_ANH4"] + @"'><img src = 'img/single-product/" + dt.Rows[i]["HINH_ANH4"] + @"' alt=''></div>
						</div>
					</div>
				</div>
				<div class='col-lg-6 product-details'>
					<h2 class='p-title'>" + dt.Rows[i]["TEN_SAN_PHAM"] + @"</h2>
					<h3 class='p-price'>" + dt.Rows[i]["GIA_BAN"] + @"</h3>
					<h4 class='p-stock'>Available: <span>In Stock</span></h4>
					<div class='p-rating'>
						<i class='fa fa-star-o'></i>
						<i class='fa fa-star-o'></i>
						<i class='fa fa-star-o'></i>
						<i class='fa fa-star-o'></i>
						<i class='fa fa-star-o fa-fade'></i>
					</div>
					<div class='p-review'>
						<a href = '' > 3 reviews</a>|<a href = '' > Add your review</a>
					</div>
					
					<div class='quantity'>
						<p>Số Lượng</p>
                        <div class='pro-qty'><input type = 'text' value='1'></div>
                    </div>
					
                        
                         <div id = 'accordion' class='accordion-area'>
						<div class='panel'>
							<div class='panel-header' id='headingOne'>
								<button class='panel-link active' data-toggle='collapse' data-target='#collapse1' aria-expanded='true' aria-controls='collapse1'>information</button>
							</div>
							<div id = 'collapse1' class='collapse show' aria-labelledby='headingOne' data-parent='#accordion'>
								<div class='panel-body'>
									<p>" + dt.Rows[i]["MO_TA"] + @"</p>
								</div>
							</div>
						</div>
						<div class='panel'>
							<div class='panel-header' id='headingTwo'>
								<button class='panel-link' data-toggle='collapse' data-target='#collapse2' aria-expanded='false' aria-controls='collapse2'>care details</button>
							</div>
							<div id = 'collapse2' class='collapse' aria-labelledby='headingTwo' data-parent='#accordion'>
								<div class='panel-body'>
									<img src = './img/cards.png' alt=''>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin pharetra tempor so dales.Phasellus sagittis auctor gravida.Integer bibendum sodales arcu id te mpus. Ut consectetur lacus leo, non scelerisque nulla euismod nec.</p>
								</div>
							</div>
						</div>
						<div class='panel'>
							<div class='panel-header' id='headingThree'>
								<button class='panel-link' data-toggle='collapse' data-target='#collapse3' aria-expanded='false' aria-controls='collapse3'>shipping & Returns</button>
							</div>
							<div id = 'collapse3' class='collapse' aria-labelledby='headingThree' data-parent='#accordion'>
								<div class='panel-body'>
									<h4>7 Days Returns</h4>
									<p>Cash on Delivery Available<br>Home Delivery <span>3 - 4 days</span></p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.Proin pharetra tempor so dales.Phasellus sagittis auctor gravida. Integer bibendum sodales arcu id te mpus.Ut consectetur lacus leo, non scelerisque nulla euismod nec.</p>
								</div>
							</div>
						</div>
					</div>
				
				</div>";
            }
            return s;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];//neu id trống thì bỏ qua
            DataTable gh = new DataTable();
            if (Session["GioHang"] == null)//neu chua co gio hang
            {
                gh.Columns.Add("ID_SAN_PHAM", typeof(int));//tự đặt
                gh.Columns.Add("TEN_SAN_PHAM", typeof(string));
                gh.Columns.Add("HINH_ANH", typeof(string));
                gh.Columns.Add("SO_LUONG", typeof(int));
                gh.Columns.Add("GIA_BAN", typeof(int));
                gh.Columns.Add("THANH_TIEN", typeof(int), "SO_LUONG*GIA_BAN");
            }
            else//da mua hang
            {
                gh = (DataTable)Session["GioHang"];
            }
            bool ktHang = false;
            for (int i = 0; i < gh.Rows.Count; i++)
            {
                if (gh.Rows[i]["ID_SAN_PHAM"].ToString() == id)
                {
                    ktHang = true;
                    gh.Rows[i]["SO_LUONG"] = int.Parse(gh.Rows[i]["SO_LUONG"].ToString()) + 1;
                    break;
                }
            }
            if (!ktHang)//neu trong giỏ đã có
            {
                string[] pars = new string[]
                {
                    "ID_SAN_PHAM"
                };
                string[] vals = new string[]
                {
                     id
                };
                DataTable dt1 = xl.docDLDataTableStored("selectHangHoaByID", vals, pars);
                if (dt1.Rows.Count == 1)
                {
                    DataRow dr = gh.NewRow();//tạo cấu trúc hàng phù hợp với giỏ
                    dr["ID_SAN_PHAM"] = dt1.Rows[0]["ID_SAN_PHAM"];
                    dr["TEN_SAN_PHAM"] = dt1.Rows[0]["TEN_SAN_PHAM"];
                    dr["HINH_ANH"] = dt1.Rows[0]["HINH_ANH"];
                    dr["SO_LUONG"] = 1;
                    dr["GIA_BAN"] = dt1.Rows[0]["GIA_BAN"];
                    gh.Rows.Add(dr);//bỏ hàng vô giỏ
                }
            }
            Session["GioHang"] = gh;
            Response.Write("<script>alert('Hàng đã được bỏ vào giỏ');</script>");
        }

        protected void btn_DanhGia_Click(object sender, EventArgs e)
        {
            string[] par = new string[]
            {
                "@ID_SAN_PHAM",
                "@TEN_NGUOI_DANH_GIA",
                "@NOI_DUNG"
            };
            string[] val = new string[]
            {
                ID,
                txt_TenNguoiDanhGia.Text,
                txt_NoiDung.Text
            };
            xl.capNhatDuLieuStored("insertDanhGia", val, par);
            loadDTL();
        }
    }

}