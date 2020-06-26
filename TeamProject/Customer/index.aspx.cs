using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace TeamProject.Customer
{
    public partial class index : System.Web.UI.Page
    {
       
        XLDL xl = new XLDL();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!Page.IsPostBack)
            {
                loadHangHoa();
            }
        }
        private void loadHangHoa()
        {
            DataList1.DataSource = xl.docDLDataTable("SELECT * FROM SAN_PHAM");
            DataList1.DataBind();
            DataList2.DataSource = xl.docDLDataTable("SELECT * FROM SAN_PHAM");
            DataList2.DataBind();
        }
        
    }
}