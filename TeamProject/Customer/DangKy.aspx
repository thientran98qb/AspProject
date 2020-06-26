<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="TeamProject.Customer.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login">
        <h3 class="text-center text-white pt-5">Đăng Ký Tài Khoản</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form  class="form" runat="server">
                            <h3 class="text-center text-info">Đăng Ký</h3>
                            <div class="form-group">
                                <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label><br />
                                <label for="username" class="text-info">Tên Đăng Nhập:</label><br>
                                
                                 <asp:TextBox ID="txtUserName" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Mật Khẩu:</label><br>
                                 <asp:TextBox ID="txtPass"  class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="name" class="text-info">Họ Tên:</label><br>
                                 <asp:TextBox ID="txtHoTen"  class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">                                                                                               
                                <asp:Button ID="btn_DangKy" class="btn btn-info btn-md" runat="server" Text="Đăng Ký" OnClick="btn_DangKy_Click" />                              
                            </div>                                                                                
                        </form>
                        <br /> <br /> <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
