<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="ProgramDetail.aspx.cs" Inherits="CareYou.Views.ProgramDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/programdetailstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="program-detail">
        <div class="program-detail-content">
            <asp:Label CssClass="title" ID="ProgramTitleLbl" runat="server"></asp:Label>
            <asp:Image ID="ProgramImage" CssClass="program-image" runat="server" />
            <div class="fundraiser-flexbox">
                <div class="fundraiser">
                    <asp:Image ID="FundraiserImage" CssClass="profile-image" runat="server" alt="alt text" />
                    <div class="fundraiser-detail-flexbox">
                        <asp:Label CssClass="profile-text" ID="FundraiserName" runat="server"></asp:Label>
                        <h2 class="profile-text-bold">Organizer</h2>
                    </div>
                </div>
                <div class="fundraiser">
                    <img class="profile-image" src="~/Assets/Profile/ProfileDefault.png" alt="alt text" />
                    <div class="fundraiser-detail-flexbox">
                        <asp:Label CssClass="profile-text" ID="BeneficiaryName" runat="server"></asp:Label>
                        <h2 class="profile-text-bold">Beneficiary</h2>
                    </div>
                </div>
            </div>
            <div class="desc-container">
                <div class="desc-flexbox">
                    <div class="verified-image">
                        <div class="verified-image-flexbox">
                            <img class="verified-image-png" src="~/Assets/ProgramDetail/verified.png" alt="alt text" />
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
                    <asp:Repeater ID="CommentRepeater" runat="server">
                        <ItemTemplate>
                            <div class="comment-content-container">
                                <img class="profile-image1" src='/Assets/Profiles/<%# Eval("ProfilePicture") %>'' alt="alt text" />
                                <div class="comment-text-flexbox">
                                    <h2 class="profile-text1"><%# Eval("UserName") %></h2>
                                    <div class="donated-flexbox">
                                        <h2 class="donation-text">Rp <%# Eval("Amount","{0:N0}") %></h2>
                                        <h3 class="donation-time"><%# Eval("CommentTime") %></h3>
                                    </div>
                                    <h2 class="profile-text3"><%# Eval("Comment") %></h2>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                   <!-- <div class="comment-content-flexbox">
                        <div class="comment-content-container">
                            <img class="profile-image1" src="/assets/ad3ef45c3ec55bb79b9df9f1ed6101bb.svg" alt="alt text" />
                            <div class="comment-text-flexbox">
                                <h2 class="profile-text1">Jess Doe</h2>
                                <div class="donated-flexbox">
                                    <h2 class="donation-text">Rp 50.500</h2>
                                    <h3 class="donation-time">2 hrs ago</h3>
                                </div>
                                <h2 class="profile-text3">Let’s help Switzerland !</h2>
                            </div>
                        </div>
                        <div class="comment-content-container">
                            <img class="profile-image1" src="/assets/ad3ef45c3ec55bb79b9df9f1ed6101bb.svg" alt="alt text" />
                            <div class="comment-text-flexbox1">
                                <h2 class="profile-text1">Edward Ferdinant</h2>
                                <div class="donated-flexbox">
                                    <h2 class="donation-text">Rp 10.000</h2>
                                    <h3 class="donation-time">4 hrs ago</h3>
                                </div>
                                <h2 class="profile-text3">May they have peace &lt;3</h2>
                            </div>
                        </div>
                        <div class="comment-content-container">
                            <img class="profile-image1" src="/assets/ad3ef45c3ec55bb79b9df9f1ed6101bb.svg" alt="alt text" />
                            <div class="comment-text-flexbox2">
                                <h2 class="profile-text1">Justin Yandra</h2>
                                <div class="donated-flexbox">
                                    <h2 class="donation-text">Rp 15.000</h2>
                                    <h3 class="donation-time">10 hrs ago</h3>
                                </div>
                                <h2 class="profile-text3">Love from the world!</h2>
                            </div>
                        </div>
                    </div> -->
                    <asp:Button ID="ShowMoreBtn" CssClass="btn" runat="server" Text="Show more" />
                </div>
            </div>
            <h2 class="profile-text4">Created 4 days ago</h2>
            <hr class="line" size="1" style="width: 95%;" />
            <div class="report-btn">
                <img class="report-img" src="/assets/5e7381d5655e083ca8ea2010ed61c00d.svg" alt="alt text" />
                <h2 class="profile-text5">Report fundraiser</h2>
            </div>
        </div>
        <div class="donate-container">
            <div class="donate-flexbox">
                <div class="raised-flexbox">
                    <div class="raised-text-flexbox">
                        <h1 class="raised-text">Rp 100.500</h1>
                        <h2 class="desc1">raised of Rp 1.000.000 goal</h2>
                    </div>
                    <div class="progress-bar">
                        <div class="rect4"></div>
                    </div>
                    <h2 class="donation-count">5 donations</h2>
                </div>
                <button class="donate-btn">Donate Now</button>
                <div class="top-donation-flexbox">
                    <div class="top-donation-title-container">
                        <h2 class="top-donation-title">Top Donation</h2>
                    </div>
                    <div class="top-donation-content-flexbox">
                        <div class="top-donater-container">
                            <img class="profile-image" src="/assets/e3adf11680e91465d497856c82bea2b7.svg" alt="alt text" />
                            <div class="top-donater-content-flexbox">
                                <h2 class="profile-text1">Jess Doe</h2>
                                <div class="donated-flexbox1">
                                    <h2 class="donation-text">Rp 50.500</h2>
                                </div>
                            </div>
                        </div>
                        <div class="top-donater-container">
                            <img class="profile-image" src="/assets/ad3ef45c3ec55bb79b9df9f1ed6101bb.svg" alt="alt text" />
                            <div class="top-donater-content-flexbox1">
                                <h2 class="profile-text1">Edward Ferdinant</h2>
                                <div class="donated-flexbox1">
                                    <h2 class="donation-text1">Rp 10.000</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="btn1">Share</button>
            </div>
        </div>
    </section>
</asp:Content>
