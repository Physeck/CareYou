<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="EditProgramDetails.aspx.cs" Inherits="CareYou.Views.EditProgramDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/paymentstyle.css" rel="stylesheet" />
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
                    <h1 class="edit-text" style="width: 1.667vw">:</h1>
                    <asp:Label ID="TopicLb" CssClass="topic-box" runat="server" Text="Label"></asp:Label>
                    <div class="img-box" style="--src: url(/Assets/ProgramDetail/locked.png)"></div>

                </div>

                <div class="edit-program_row">
                    <h1 class="edit-text">Edit your program's title</h1>
                    <h1 class="edit-text" style="width: 1.667vw">:</h1>
                    <asp:Label ID="Label1" CssClass="topic-box" runat="server" Text="Label"></asp:Label>
                    <div class="img-box" style="--src: url(/Assets/ProgramDetail/locked.png)">
                    </div>
                </div>


                <div class="edit-description_row">
                    <h1 class="edit-text-desc">Edit description</h1>
                    <h1 class="edit-text-desc" style="width: 1.667vw">:</h1>
                    <asp:TextBox ID="descTb" CssClass="insert-box-big" placeholder="Description" TextMode="MultiLine" runat="server"></asp:TextBox>

                </div>

                <div class="edit-target_row">
                    <h1 class="edit-text">Edit target donation</h1>
                    <h1 class="edit-text" style="width: 1.667vw">:</h1>
                    <asp:TextBox ID="targetTb" CssClass="insert-box" placeholder="Target" runat="server"></asp:TextBox>
                </div>

                <div class="edit-deadline_row">
                    <h1 class="edit-text">Edit deadline date</h1>
                    <h1 class="edit-text" style="width: 1.667vw">:</h1>
                    <div class="date-flex_col">
                        <asp:TextBox ID="dateTb" CssClass="date-box" placeholder="Date" runat="server"></asp:TextBox>
                        <asp:TextBox ID="monthTb" CssClass="month-box" placeholder="Month" runat="server"></asp:TextBox>
                        <asp:TextBox ID="yearTb" CssClass="year-box" placeholder="Year" runat="server"></asp:TextBox>
                    </div>


                </div>

                <div class="edit-image_row">
                    <h1 class="edit-text">Update image</h1>
                    <h1 class="edit-text" style="width: 1.667vw">:</h1>
                    <asp:Label ID="imageboxLb" runat="server" CssClass="insert-box" Text="Insert Image"></asp:Label>
                    <asp:ImageButton ID="insertimgId" runat="server" CssClass="insert-image" OnClick="insertimgId_Click" ImageUrl="~/Assets/ProgramDetail/imagebtn.png" />
                    
                </div>

                <div class="checkbox-button-content">
                    <asp:CheckBox ID="PlatformFeeCB" runat="server" />
                    <h1 class="checkbox-text">I confirm that the information provided is accurate and complete.</h1>
                </div>

                    <asp:Button ID="sendreqBtn" CssClass="send-request-btn" Text="Send Request" runat="server" OnClick="sendreqBtn_Click" />

            </div>
        </div>
    </div>
</asp:Content>
