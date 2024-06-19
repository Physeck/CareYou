<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/AdminNavbar.Master" AutoEventWireup="true" CodeBehind="PendingVerificationPage.aspx.cs" Inherits="CareYou.Views.PendingVerificationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/pendingverificationstyle.css?Version=3" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="main">
            <div class="container">
                <h1 class="title">Pending Verification</h1>
                    <div class="filter-box">
                        <div class="filter-flex-div">
                            <h1 class="filter-container">All</h1>
                            <asp:Image class="filter-Button" ID="filter" src="https://www.svgrepo.com/show/327767/filter-circle.svg" runat="server" />
                        </div>
                    </div>
                    <div class="container-box top">
                        <div class="flex-div">
                            <h1 class="title-container">Join Us in Fighting Forest Fires in Riau</h1>
                            <asp:Button ID="Button1" runat="server" Text="View Detail" class="button"/>
                        </div>
                    </div>
                    <div class="container-box">
                        <div class="flex-div">
                            <h1 class="title-container">Care</h1>
                            <asp:Button ID="Button2" runat="server" Text="View Detail" class="button"/>
                        </div>
                    </div>
                    <div class="container-box">
                        <div class="flex-div">
                            <h1 class="title-container">Help with 2$ meal for hungry Orphans in Switzerland</h1>
                            <asp:Button ID="Button3" runat="server" Text="View Detail" class="button"/>
                        </div>
                    </div>
            </div>
        </div>
    </section>
</asp:Content>
