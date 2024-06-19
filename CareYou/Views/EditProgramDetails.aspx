<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="EditProgramDetails.aspx.cs" Inherits="CareYou.Views.EditProgramDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/editprogramstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-container">
        <div class="box-container">
            <div class="edit-flex_col">
                <img class="method-img" src="/Assets/TransactionMethod/back-btn.png" alt="alt text" />
                <h1 class="edit-text">Edit Your Program</h1>
            </div>
            <div class="edit-container"></div>
        </div>
    </div>
</asp:Content>
