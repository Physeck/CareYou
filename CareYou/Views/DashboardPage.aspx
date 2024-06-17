<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="DashboardPage.aspx.cs" Inherits="CareYou.Views.DashboardPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/dashboardpagestyle.css?Version=4" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="main">
            <div class="container">
                <h1 class="dashboard-title">Dashboard</h1>
                <div>
                    <div class="container-box">
                        <div class="flex-div left">
                            <h1 class="title-container">Total User</h1>
                            <h1 class="info-container">1000</h1>
                        </div>
                        <div class="flex-div right">
                            <h1 class="title-container">New User</h1>
                            <h1 class="info-container">5</h1>
                        </div>
                    </div>
                    <div class="container-box">
                        <div class="flex-div left">
                            <h1 class="title-container">Donations</h1>
                            <h1 class="info-container">1 jt</h1>
                        </div>
                        <div class="flex-div right">
                            <h1 class="title-container">Active Projects</h1>
                            <h1 class="info-container">5</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
