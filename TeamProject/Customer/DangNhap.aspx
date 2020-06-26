<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="TeamProject.Customer.DangNhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form  class="form" runat="server">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label><br />
                                <label for="username" class="text-info">Username:</label><br>
                                
                                 <asp:TextBox ID="txtUserName" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                 <asp:TextBox ID="txtPass"  class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">                                                                                               
                                <asp:Button ID="btn_DangNhap" class="btn btn-info btn-md" runat="server" Text="Đăng Nhập" OnClick="btn_DangNhap_Click" />
                                <asp:CheckBox ID="chRemember" runat="server" /><span>Remember me</span>
                                <div id="register-link" class="text-right">
                                <a href="#" class="text-info">Register here</a>
                            </div>                               
                            </div>                            
                        </form>
                        <br /> <br /> <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
