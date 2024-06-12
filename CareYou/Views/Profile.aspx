<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CareYou.Views.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style/Styling.css" rel="stylesheet" />
    
    <div class="profilePage">
        <div class="detailProfile">
            <div>
                <img id="uPLogo" class="uPLogo" runat="server" src="../Assets/Logo/orgverifyLogo.png" />
            </div>
            
            <div class="pP">
                <img id="pPp" src="../Assets/Profiles/<%= curr.ProfilePicture %>"  class="pPp" />
            </div>
            

            <div class="ProfileName">
                <%= curr.UserName %>
            </div>

            <div class="pdetailInfoContainer">
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

            <div class="vwP">
                <asp:Button ID="pViewPrgrm" class="pViewPrgrm" runat="server" Text="View Program" OnClick="pViewPrgrm_Click" />
            </div>
            
        </div>

        <div class="pBadgeContainer">
            <asp:Label ID="pBadgeLbl" class="pBadgeLbl" runat="server" Text="Badge"></asp:Label>

            <div class="pBadge">
                <div class="pTotBadge">
                    <div class="uPtotLbl">
                        Total:
                    </div>
                     <%= badgeOfUser.totalBadge %>
                </div>

                <asp:DataList ID="uPBadges" class="uPBadges" runat="server" RepeatColumns="4">
                    <ItemTemplate>
                        <img id="uPBadge" src="../Assets/Badges/<%# Eval("BadgeImage") %>"  class="uPBadge" />
                    </ItemTemplate>
                </asp:DataList>

                <asp:Label ID="noBadgeLbl" class="noBadgeLbl" runat="server" Text="No Badge"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
