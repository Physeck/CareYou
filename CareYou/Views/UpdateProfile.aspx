<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="UpdateProfile.aspx.cs" Inherits="CareYou.Views.UpdateProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style/Styling.css" rel="stylesheet" />

    <div class="profileContainer">
        <div class="detailProfileContainer">

            <img id="uPLogo" class="uPLogo" runat="server" src="../Assets/Logo/orgverifyLogo.png" />

            <div class="detailPP">

                <img id="uPPp" src="../Assets/Profiles/<%= curr.ProfilePicture %>"  class="uPPp" />
            
                <div class="detailDataPP">
                    <div id="showpp" runat="server">
                        <div class="PPName">
                            <%= curr.UserName %>
                        </div>

                        <div class="PPEmail">
                            <%= curr.UserEmail %>
                        </div>

                        <asp:Button ID="UPBtn" class="UPBtn" runat="server" Text="Update Profile" OnClick="UPBtn_Click" />
                    </div>

                    <div id="updatePP" runat="server">
                        <div class="PPNameTBC">
                            <asp:TextBox ID="PPNameTB" class="PPNameTB" runat="server"></asp:TextBox>
                            <div>
                                <asp:Label ID="eNup" runat="server" class="errorlblUp" Text=""></asp:Label>
                            </div>
                        </div>

                        <div class="PPEmailTBC">
                            <asp:TextBox ID="PPEmailTB" class="PPEmailTB" runat="server"></asp:TextBox>
                            <div>
                                <asp:Label ID="eEup" runat="server" class="errorlblUp" Text=""></asp:Label>
                            </div>
                        </div>

                        <div id="UPPass" runat="server">
                             <div class="PPPassTBC">
                                 <asp:TextBox ID="PPPassTB" TextMode="Password" placeholder="Password" class="PPPassTB" runat="server"></asp:TextBox>
                                 <div>
                                     <asp:Label ID="ePup" runat="server" class="errorlblUp" Text=""></asp:Label>
                                 </div>
                             </div>

                             <div class="PPCPassTBC">
                                <asp:TextBox ID="PPCPassTB" TextMode="Password" placeholder="Confirm Password" class="PPCPassTB" runat="server"></asp:TextBox>
                                 <div>
                                    <asp:Label ID="eCPup" runat="server" class="errorlblUp" Text=""></asp:Label>
                                 </div>
                             </div>
                        </div>
                   

                        <div class="changePassUP" runat="server">
                            <asp:LinkButton ID="changePassU" class="changePassU" OnClick="changePassU_Click" runat="server">Change Password</asp:LinkButton>
                            <asp:LinkButton ID="cancelChangeUP" class="changePassU" OnClick="cancelChangeUP_Click" runat="server">Cancel</asp:LinkButton>
                        </div>

                        <asp:Button ID="updtP2" class="UPBtn" runat="server" Text="Update Profile" OnClick="updtP2_Click" />
                    </div>
                

                    <div class="regcom">
                        <asp:HyperLink ID="regComlnk" class="regComlnk" runat="server" NavigateUrl="~/Views/insertUser.aspx">Register as Community</asp:HyperLink>
                    </div>
                

                    <div class="uPdetailInfoContainer">

                        <div class="totalDonation">
                            <asp:Label ID="tDLblUP" runat="server" Text="Total Donation"></asp:Label>
                            <div class="totDonation">
                                <%= totalDonate %>
                            </div>
                        </div>

                        <div class="rank">
                            <asp:Label ID="rLbl" runat="server" Text="Rank"></asp:Label>
                            <div class="uPrank">
                                <%= rank %>
                            </div>
                        </div>

                        <div class="joinDate">
                            <asp:Label ID="jDLbl" runat="server" Text="Join Date"></asp:Label>
                            <div class="uPJD">
                                <%= curr.JoinDate.Year %>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="uPlogoutContainer">
                <asp:Button ID="uPLogoutBtn" class="uPLogoutBtn" runat="server" Text="Logout" />
            </div>
        </div>

        <div class="uPBadgeContainer">
            <div class="uPBadgeHeader">
                <asp:Label ID="uPBadgeLbl" class="uPBadgeLbl" runat="server" Text="Badge"></asp:Label>
                <div class="uPTotBadge">
                    <div class="uPtotLbl">
                        Total:
                    </div>
                     <%= badgeOfUser.totalBadge %>
                </div>
            </div>

            <asp:DataList ID="uPBadges" class="uPBadges" runat="server" RepeatColumns="4">
                <ItemTemplate>
                    <img id="uPBadge" src="../Assets/Badges/<%# Eval("BadgeImage") %>"  class="uPBadge" />
                </ItemTemplate>
            </asp:DataList>

            <asp:Label ID="noBadgeLbl" class="noBadgeLbl" runat="server" Text="No Badge"></asp:Label>
        </div>

    </div>
</asp:Content>