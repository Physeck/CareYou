<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CareYou.Views.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style/Styling.css" rel="stylesheet" />
    
    <div class="profilePage">
        <div class="detailProfile">
            <img id="pPp" src="../Assets/Profiles/<%= curr.ProfilePicture %>"  class="pPp" />
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
        </div>
    </div>

</asp:Content>
