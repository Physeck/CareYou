<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="DashboardPage.aspx.cs" Inherits="CareYou.Views.DashboardPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/dashboardpagestyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="home">
        <div class="main">
            <div class="container">
                <h1 class="dashboard-title">Dashboard</h1>
                <div class="container-box">

                </div>
            </div>
        </div>
    </section>
</asp:Content>
