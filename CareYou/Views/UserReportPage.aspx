<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="UserReportPage.aspx.cs" Inherits="CareYou.Views.UserReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/userreportstyle.css?Version=2" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
    <div class="main">
        <div class="container">
            <h1 class="title">User Reports</h1>
                <div class="container-box top">
                    <div class="flex-div">
                        <h1 class="title-container">Help with 2$ meal for hungry Orphans in Switzerland</h1>
                        <div class="userProfile-container">
                            <asp:ImageButton class="userProfile" ID="UserReportProfile" runat="server" ImageUrl="~/assets/UserReportProfile.svg"/>
                            <h1 class="profileCount">: 2</h1>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="View Detail" class="button"/>
                    </div>
                </div>
        </div>
    </div>
</section>
</asp:Content>
