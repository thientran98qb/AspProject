<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TeamProject.Customer.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- letest product section -->
    <section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/motoo.jpg">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-7 text-white">
							<span>Sản Phẩm Đáng Mua</span>
							<h2>Xe Awasaki</h2>
							<p>Kawasaki Z300 2019 là mẫu moto giá rẻ sở hữu ngoại hình ấn tượng, thu hút ánh nhìn với thiết kế theo ngôn ngữ Sugomi truyền thống Nhật Bản. </p>
							<a href="#" class="site-btn sb-line">DISCOVER</a>
							<a href="#" class="site-btn sb-white">Xem Chi Tiết</a>
						</div>
					</div>				
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/Parts.png">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-7 text-white">
							<span>Sản Phẩm Đáng Mua</span>
							<h2>Brixton BX 150</h2>
							<p>Brixton BX 150 Classic LTD là phiên bản giới hạn chỉ 288 chiếc mới được nhập về Việt Nam với mức giá hơn 59 triệu đồng.. </p>
							<a href="#" class="site-btn sb-white">DISCOVER</a>
							<a href="#" class="site-btn sb-line ">Xem Chi Tiết</a>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container">
			<div class="slide-num-holder" id="snh-1"></div>
		</div>
	</section>
    <section class="features-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4 p-0 feature">
					<div class="feature-inner">
						<div class="feature-icon">
							<img src="img/icons/1.png" alt="#">
						</div>
						<h2>Thanh Toán An Toàn Nhanh Chóng</h2>
					</div>
				</div>
				<div class="col-md-4 p-0 feature">
					<div class="feature-inner">
						<div class="feature-icon">
							<img src="img/icons/2.png" alt="#">
						</div>
						<h2>Sản Phẩm Cao Cấp
						</h2>
					</div>
				</div>
				<div class="col-md-4 p-0 feature">
					<div class="feature-inner">
						<div class="feature-icon">
							<img src="img/icons/3.png" alt="#">
						</div>
						<h2>Miễn Phí & Giao Hàng Nhanh</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	    <section class="top-letest-product-section">
		    <div class="container">
			    <div class="section-title">
				    <h2>LATEST PRODUCTS</h2>
			    </div>
			    <%--<div class="product-slider owl-carousel">
				    <div class="product-item">
					    <div class="pi-pic">
						    <img src="./img/product/1.jpg" alt="">
						    <div class="pi-links">
							    <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
							    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
						    </div>
					    </div>
					    <div class="pi-text">
						    <h6>$35,00</h6>
						    <p>Flamboyant Pink Top </p>
					    </div>
				    </div>
				    <div class="product-item">
					    <div class="pi-pic">
						    <div class="tag-new">New</div>
						    <img src="./img/product/2.jpg" alt="">
						    <div class="pi-links">
							    <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
							    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
						    </div>
					    </div>
					    <div class="pi-text">
						    <h6>$35,00</h6>
						    <p>Black and White Stripes Dress</p>
					    </div>
				    </div>
				    <div class="product-item">
					    <div class="pi-pic">
						    <img src="./img/product/3.jpg" alt="">
						    <div class="pi-links">
							    <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
							    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
						    </div>
					    </div>
					    <div class="pi-text">
						    <h6>$35,00</h6>
						    <p>Flamboyant Pink Top </p>
					    </div>
				    </div>
				    <div class="product-item">
						    <div class="pi-pic">
							    <img src="./img/product/4.jpg" alt="">
							    <div class="pi-links">
								    <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
								    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
							    </div>
						    </div>
						    <div class="pi-text">
							    <h6>$35,00</h6>
							    <p>Flamboyant Pink Top </p>
						    </div>
					    </div>
				    <div class="product-item">
						    <div class="pi-pic">
							    <img src="./img/product/6.jpg" alt="">
							    <div class="pi-links">
								    <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
								    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
							    </div>
						    </div>
						    <div class="pi-text">
							    <h6>$35,00</h6>
							    <p>Flamboyant Pink Top </p>
						    </div>
					    </div>
			    </div>--%>
                <form id="form1" runat="server">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="20">
                    <ItemTemplate>                     
                        <div class="product-item">
					        <div class="pi-pic">   
                                <a href="/Customer/ChiTietSanPham.aspx?id=<%#Eval("ID_SAN_PHAM") %>"><img height="410" width="264" src="./img/product/<%#Eval("HINH_ANH") %>" alt="" /></a>                                
						        <div class="pi-links">
							        <a href="/Customer/GioHang.aspx?id=<%#Eval("ID_SAN_PHAM") %>" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>                                 
							        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
						        </div>
					        </div>
					        <div class="pi-text">
						        <h6><%# Eval("GIA_BAN") %> VNĐ</h6>
						        <p><%# Eval("TEN_SAN_PHAM") %> </p>
					        </div>
				        </div>
                            
                     </ItemTemplate>
                </asp:DataList>  
                    </form>
		    </div>
	    </section>
	    <!-- letest product section end -->



	    <!-- Product filter section -->
	    <section class="product-filter-section">
		    <div class="container">
			    <div class="section-title">
				    <h2>BROWSE TOP SELLING PRODUCTS</h2>
			    </div>
			    <ul class="product-filter-menu">
				    <li><a href="#">TOPS</a></li>
				    <li><a href="#">JUMPSUITS</a></li>
				    <li><a href="#">LINGERIE</a></li>
				    <li><a href="#">JEANS</a></li>
				    <li><a href="#">DRESSES</a></li>
				    <li><a href="#">COATS</a></li>
				    <li><a href="#">JUMPERS</a></li>
				    <li><a href="#">LEGGINGS</a></li>
			    </ul>
			    <div class="row">
                   
                <asp:DataList ID="DataList2" runat="server"  RepeatColumns="4" CellPadding="20">
                    <ItemTemplate>
           
					    <div class="product-item">
						    <div class="pi-pic">
                                <a href=""><img height="410" width="264" src="./img/product/<%#Eval("HINH_ANH") %>" alt="" /></a>							    
							    <div class="pi-links">
								    <a href="#" class="add-card"><i class="flaticon-bag"></i><span>ADD TO CART</span></a>
								    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
							    </div>
						    </div>
						    <div class="pi-text">
							    <h6><%# Eval("GIA_BAN") %>VNĐ</h6>
							    <p><%# Eval("TEN_SAN_PHAM") %> </p>
						    </div>
					    </div>
				    </div>
                     </ItemTemplate>
                </asp:DataList>  
                
				   
			    </div>
			    <div class="text-center pt-5">
				    <button class="site-btn sb-line sb-dark">LOAD MORE</button>
			    </div>
		    </div>
	    </section>
	    <!-- Product filter section end -->
</asp:Content>
