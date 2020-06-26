<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="DatHang.aspx.cs" Inherits="TeamProject.Customer.DatHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-top-info">
		<div class="container">
			<h4>Your cart</h4>
			<div class="site-pagination">
				<a href="">Home</a> /
				<a href="">Your cart</a>
			</div>
		</div>
	</div>
	<!-- Page info end -->


	<!-- checkout section  -->
	<section class="checkout-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 order-2 order-lg-1">
					<form class="checkout-form" runat="server">
                        <%if (Session["id"] != null)
                            {%>
						<div class="cf-title">Billing Address</div>
						<div class="row">
							<div class="col-md-7">
								<p>*Billing Information</p>
							</div>
							<div class="col-md-5">																
							</div>
						</div>
						<div class="row address-inputs">
							<div class="col-md-12">
                             Họ Tên   <asp:TextBox ID="txtHoTen" runat="server" ></asp:TextBox>
                             Địa Chỉ    <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>                                							
							</div>
							<div class="col-md-6">
                            Email    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
							</div>
							<div class="col-md-6">
                            Số điện thoại    <asp:TextBox ID="txtSoDienThoai" runat="server"></asp:TextBox>
							</div>
						</div>
                        <asp:Button class="site-btn submit-order-btn" ID="Button1" runat="server" Text="Đặt Hàng" OnClick="Button1_Click" />		
                    <%}
                        else
                        {%>
                        <p>Bạn Hãy Đăng Nhập <a href="/Customer/DangNhap.aspx">Đăng Nhập</a></p>
                        <%} %>
					</form>
				</div>
				
			</div>
		</div>
	</section>
</asp:Content>
