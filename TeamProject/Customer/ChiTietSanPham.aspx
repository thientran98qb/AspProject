<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="TeamProject.Customer.ChiTietSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-top-info">
        <div class="container">
            <h4>Category PAge</h4>
            <div class="site-pagination">
                <a href="">Home</a> /
				<a href="">Shop</a>
            </div>
        </div>
    </div>
    <!-- Page info end -->


    <!-- product section -->
    <section class="product-section">
        <div class="container">
            <div class="back-link">
                <a href="./category.html">&lt;&lt; Back to Category</a>
            </div>
            <div class="row">
                <asp:Literal ID="Literal1" runat="server">                    
                </asp:Literal>

            </div>
            
        <br />
        <section class="related-product-section">
            <div class="container">
                <div class="section-title">
                    <form id="form1" class="align-bottom" runat="server">             
                    <div class="form-group">
                     Tên người đánh giá::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_TenNguoiDanhGia" runat="server" Width="457px" Height="29px"></asp:TextBox>
                    &nbsp;<br />
                    </div>                       
                <div class="form-group">
                    Nội dung:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox ID="txt_NoiDung"  runat="server" Height="147px" TextMode="MultiLine" Width="465px"></asp:TextBox>
                    <br />
                </div>
                <asp:Button ID="btn_DanhGia" runat="server" Text="Đăng đánh giá" OnClick="btn_DanhGia_Click" />  
                        <br /> <br />
                <asp:DataList ID="DataList1" runat="server" Width="100%" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="0" GridLines="Horizontal">
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="White" ForeColor="#333333" />
                    <ItemTemplate>
                        Tên người đánh giá:
                        <asp:Label ID="lbl_TenNguoiDanhGia" runat="server" Text='<%# Eval("TEN_NGUOI_DANH_GIA") %>'></asp:Label>                       
                        <br />
                        Ngày đánh giá :                       
                        <asp:Label ID="lbl_NgayDanhGia" runat="server" Text='<%# Eval("NGAY_DANH_GIA") %>'></asp:Label>
                        <br />
                        Nội dung:&nbsp;&nbsp;
                        <asp:Label ID="lbl_NoiDung" runat="server" Text='<%# Eval("NOI_DUNG") %>'></asp:Label>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                  <br /> <br />
                        <asp:Button ID="Button1" CssClass="btn btn-outline-danger" runat="server" Text="Thêm Hàng Vào Giỏ" OnClick="Button1_Click" />
                    </form>
                </div>
            </div>
        </section>
        </div>
    </section>
    <!-- product section end -->


    <!-- RELATED PRODUCTS section -->
    <section class="related-product-section">
        <div class="container">
            <div class="section-title">
                <h2>RELATED PRODUCTS</h2>
            </div>
            <div class='product-slider owl-carousel'>
                <asp:Literal ID="Literal2" runat="server"></asp:Literal>
            </div>
        </div>
    </section>
</asp:Content>
