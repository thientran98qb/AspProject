<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="TeamProject.Customer.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-top-info">
		<div class="container">
			<h4>Your cart</h4>
			<div class="site-pagination">
				<a href="">Trang Chủ</a> /
				<a href="">Giỏ Hàng Của Bạn</a>
			</div>
		</div>
	</div>
    <section class="cart-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="cart-table">
						<h3>Giỏ Hàng</h3>
						<div class="cart-table-warp">  
                            <form id="form1" runat="server">
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </form>                           
						</div>
						<div class="total-cost">							
						</div>
					</div>
				</div>
				<div class="col-lg-4 card-right">
					<form class="promo-code-form">
						<input type="text" placeholder="Enter promo code">
						<button>Submit</button>
					</form>
					<a href="/Customer/DatHang.aspx" class="site-btn">Đặt Mua</a>
					<a href="/Customer/index.aspx" class="site-btn sb-dark">Tiếp Tục Mua</a>
				</div>
			</div>
		</div>
	</section>
    <section class="related-product-section">
		<div class="container">
			<div class="section-title text-uppercase">
				<h2>Continue Shopping</h2>
			</div>
			<div class="row">
                 <div class='product-slider owl-carousel'>                   
                    <asp:Literal ID="Literal1" runat="server">

                    </asp:Literal>
                 </div>
			</div>
		</div>
	</section>
</asp:Content>
