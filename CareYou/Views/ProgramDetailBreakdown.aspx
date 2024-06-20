<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="ProgramDetailBreakdown.aspx.cs" Inherits="CareYou.Views.ProgramDetailBreakdown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/programbreakdownstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <% if (deleteClicked)
        { %>
    <div id="deletePopup" class="modal">
        <div class="delete-modal" style="--src: url(/Assets/ProgramDetail/delete-popup.svg)">
            <div class="delete-flexbox">
                <h1 class="delete-title">Warning!</h1>
                <div class="delete-col">
                    <h1 class="delete-text">Deleting your CareYou campaign will permanently remove all data and access to funds. Ensure all supporters are informed before proceeding.</h1>
                    <div class="delete-btn-row">
                        <button class="delete-buttons">Yes</button>
                        <button class="delete-buttons">No</button>
                    </div>
                </div>
            </div>
            <img class="warning-img" src="/Assets/ProgramDetail/warning.png" alt="alt text" />
        </div>
    </div>
    <% } %>
    <div class="page-container">
        <div class="help-text-flex_col">
            <asp:Label CssClass="title-text" ID="titleLb" runat="server" Text="Label"></asp:Label>
            <h1 class="breakdown-detail-text">Breakdown details</h1>
            <h1 class="deletion-text">Deletion is only available before a withdrawal is made. After deleting, the donations will be refunded</h1>
        </div>

        <div class="goal-container">
            <div class="raise-text-flex_col">
                <h1 class="raised-text">Raised</h1>
                <span class="rp-text">Rp. 
                    <asp:Label ID="raisedLb" CssClass="rp-text" runat="server" Text="Label"></asp:Label></span>
                <span class="rp-goal-text"><span>Rp. </span>
                    <asp:Label ID="targetLb" CssClass="rp-goal-text" runat="server" Text="Label"></asp:Label><span> goal</span></span>

            </div>
            <div class="progress-bar">
                <div id="progressBar" runat="server" class="progress-bar-inner"></div>
            </div>
        </div>
        <div class="details-container">
            <div class="balance-container">
                <div class="balance-text-flex_col">
                    <h1 class="balance-text">Balance</h1>
                    <span class="rp-balance-text"><span>Rp </span>
                        <asp:Label ID="balanceLb" runat="server" Text="Label"></asp:Label></span>
                </div>
            </div>
            <div class="balance-container">
                <div class="transferred-text-flex_col">
                    <h1 class="balance-text">Transferred</h1>
                    <span class="rp-balance-text"><span>Rp </span>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                </div>
            </div>

            <div class="balance-container">
                <div class="processed-text-flex_col">
                    <h1 class="balance-text">Processed</h1>
                    <span class="rp-balance-text"><span>Rp </span>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
                </div>
            </div>

            <div class="balance-container">
                <div class="fees-text-flex_col">
                    <h1 class="balance-text">Transaction Fees</h1>
                    <span class="rp-balance-text"><span>Rp </span>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
                </div>
            </div>
        </div>

        <div class="buttons-container">
            <asp:Button ID="withdrawBtn" CssClass="withdrawbtn" runat="server" Text="Withdraw Donation" OnClick="withdrawBtn_Click" />
            <asp:Button ID="deleteBtn" CssClass="deletebtn" runat="server" Text="Delete Program" OnClick="deleteBtn_Click" />
            <asp:Label ID="nodeleteLb" runat="server" CssClass="non-deletebtn" Text="Delete Program" Visible="false"></asp:Label>
            <asp:Button ID="editBtn" CssClass="editbtn" runat="server" Text="Edit Program Details" OnClick="editBtn_Click" />
        </div>
    </div>
    <script>
        var delModal = document.getElementById("deletePopup");
        var delContent = document.querySelector(".delete-content");

        document.addEventListener("click", function (event) { 
            if (event.target !== delContent && delContent != null && !delContent.contains(event.target)) {
                delModal.style.display = "none";
            }
        });
    </script>
</asp:Content>
