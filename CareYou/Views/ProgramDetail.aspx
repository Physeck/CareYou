<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="ProgramDetail.aspx.cs" Inherits="CareYou.Views.ProgramDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/programdetailstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="program-detail">
        <asp:Label CssClass="title" ID="ProgramTitleLbl" runat="server"></asp:Label>
        <div class="program-detail-flexbox">
            <div class="program-detail-content">

                <asp:Image ID="ProgramImage" CssClass="program-image" runat="server" />
                <div class="fundraiser-flexbox">
                    <div class="fundraiser">
                        <asp:Image ID="FundraiserImage" CssClass="profile-image" runat="server" alt="alt text" />
                        <div class="fundraiser-detail-flexbox">
                            <asp:Label CssClass="profile-text" ID="FundraiserName" runat="server"></asp:Label>
                            <h2 class="profile-text bold">Organizer</h2>
                        </div>
                    </div>
                    <div class="fundraiser">
                        <img class="profile-image" src="/Assets/Profiles/ProfileDefault.png" alt="alt text" />
                        <div class="fundraiser-detail-flexbox">
                            <asp:Label CssClass="profile-text" ID="BeneficiaryName" runat="server"></asp:Label>
                            <h2 class="profile-text bold">Beneficiary</h2>
                        </div>
                    </div>
                </div>
                <div class="desc-container">
                    <div class="desc-flexbox">
                        <div class="verified-image">
                            <div class="verified-image-flexbox">
                                <img class="verified-image-png" src="/Assets/ProgramDetail/verified.png" alt="alt text" />
                                <h2 class="verified-text">Donation Verified</h2>
                            </div>
                        </div>
                        <hr class="line" size="1" />
                        <asp:Label CssClass="desc" ID="ProgramDescLbl" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="comment-container">
                    <div class="comment-flexbox">
                        <h1 class="comment-title">Supporting words</h1>
                        <hr class="line" size="1" />
                        <div class="comment-content-flexbox">
                            <asp:Repeater ID="CommentRepeater" runat="server">
                                <ItemTemplate>
                                    <div class="comment-content-container">
                                        <img class="profile-image1" src='/Assets/Profiles/<%# Eval("ProfilePicture") %>' alt="alt text" />
                                        <div class="comment-text-flexbox">
                                            <h2 class="profile-text"><%# Eval("UserName") %></h2>
                                            <div class="donated-flexbox">
                                                <h2 class="donation-text">Rp <%# Eval("Amount","{0:N0}") %></h2>
                                                <h3 class="donation-time"><%# Eval("CommentTime") %></h3>
                                            </div>
                                            <h2 class="profile-text3"><%# Eval("Comment") %></h2>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <asp:Button ID="ShowMoreBtn" CssClass="btn" runat="server" Text="Show more" />
                    </div>
                </div>
                <asp:Label CssClass="profile-text4" ID="ProgramCreatedLbl" runat="server"></asp:Label>
                <hr class="line" size="1" style="width: 95%;" />
                <div class="report-btn">
                    <img class="report-img" src="/Assets/ProgramDetail/reportbtn.png" alt="alt text" />
                    <asp:LinkButton CssClass="profile-text5" ID="ReportLB" runat="server" OnClick="ReportLB_Click">Report program</asp:LinkButton>
                </div>
            </div>
            <div class="donate-container">
                <div class="donate-flexbox">
                    <div class="raised-flexbox">
                        <div class="raised-text-flexbox">
                            <asp:Label CssClass="raised-text" ID="TotalRaisedLbl" runat="server"></asp:Label>
                            <asp:Label ID="GoalLbl" runat="server" CssClass="desc1"></asp:Label>
                        </div>
                        <div class="progress-bar">
                            <div id="progressBar" runat="server" class="progress-bar-inner"></div>
                        </div>
                    </div>
                    <asp:Label ID="DonationsCountLbl" runat="server" CssClass="donation-count"></asp:Label>
                    <asp:Button ID="DonateBtn" CssClass="donate-btn" runat="server" Text="Donate Now" OnClick="DonateBtn_Click" />
                    <div class="top-donation-flexbox">
                        <div class="top-donation-title-container">
                            <asp:Label ID="TopDonationLbl" runat="server" Text="Top Donation" CssClass="top-donation-title"></asp:Label>
                        </div>
                        <div class="top-donation-content-flexbox">
                            <asp:Repeater ID="TopDonationRepeater" runat="server">
                                <ItemTemplate>
                                    <div class="top-donater-container">
                                        <img class="profile-image1" src='/Assets/Profiles/<%# Eval("Transaction.User.ProfilePicture") %>' alt="alt text" />
                                        <div class="top-donater-content-flexbox">
                                            <h2 class="profile-text"><%# Eval("Transaction.User.UserName") %></h2>
                                            <div class="donated-flexbox1">
                                                <h2 class="donation-text">Rp <%# Eval("Transaction.Amount","{0:N0}") %></h2>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <button class="btn1">Share</button>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
