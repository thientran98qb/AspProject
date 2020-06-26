<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Customer/CustomerMasterPage.Master" CodeBehind="TrangChuModulSP.aspx.cs" Inherits="TeamProject.Customer.TrangChuModulSP" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- Category section -->
	<section class="category-section spad">
		<div class="container">
			<div class="row">				               
                    <div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
                        
                        <asp:Literal ID="Literal2" runat="server">

                        </asp:Literal>      
                         
						<div class="text-center w-100 pt-3">
							<button class="site-btn sb-line sb-dark">LOAD MORE</button>
						</div>
					</div>
				</div>
                
				
			</div>
		</div>
	</section>
</asp:Content>