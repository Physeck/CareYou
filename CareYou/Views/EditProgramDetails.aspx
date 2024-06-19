<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="EditProgramDetails.aspx.cs" Inherits="CareYou.Views.EditProgramDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/editprogramstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-container">
        <div class="box-container">
            <div class="edit-flex_col">
                <img class="method-img" src="/Assets/TransactionMethod/back-btn.png" alt="alt text" />
                <h1 class="edit-text-header">Edit Your Program</h1>
            </div>
            <div class="edit-container">
                <div class="edit-topic_row">
                    <h1 class="edit-text">Edit your programs topic</h1>
                    <div class="topic-box">

                    </div>
                </div>

                <div class="edit-program_row">
                    <h1 class="edit-text">Edit your program's title</h1>
                </div>

                <div class="edit-description_row">
                    <h1 class="edit-text">Edit description</h1>
                    
                </div>

                <div class="edit-target_row">
                    <h1 class="edit-text">Edit target donation</h1>
                </div>

                <div class="edit-deadline_row">
                    <h1 class="edit-text">Edit deadline date</h1>
                </div>

                <div class="edit-image_row">
                    <h1 class="edit-text">Update image</h1>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
