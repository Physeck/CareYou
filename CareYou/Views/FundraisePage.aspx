﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FundraisePage.aspx.cs" Inherits="CareYou.Views.FundraisePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fundraise Page</title>
    <link href="../Style/contentstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="fundraisepage">
            <div class="createprogram">
                <asp:Label ID="createT" runat="server" Text="Create your own program here!"></asp:Label>
                <asp:Button ID="startfundraisingbtn" runat="server" Text="Start Fundraising" Onclick="startfundraisingbtn_Click"/>
            </div>
            <asp:Label class="textTitle" ID="fundraiseT" runat="server" Text="Your program(s)"></asp:Label>
            <div class="searchbar">
                <div id="searchinputT">
                    <asp:TextBox ID="searchprogram" runat="server" placeholder="Search Program Here"></asp:TextBox>
                </div>
                <div id="searchI">
                    <asp:Image ID="magnifyingglass" src="https://uxwing.com/wp-content/themes/uxwing/download/user-interface/search-icon.png" runat="server" />
                    <asp:Image ID="filter" src="https://www.svgrepo.com/show/327767/filter-circle.svg" runat="server" />
                </div>
            </div>
            <div class="donateC">
                <div class="donateprogramC">
                    <asp:Image class="programI" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQVua1higrnAKxEJ8ufI9iIJ8Y3_-DGUBEoA&s" runat="server" />
                    <div class="donatecontain2">
                        <div class="donatecontain1">
                            <asp:Label class="donateT" runat="server" Text="Help with 2$ meal for hungry Orphans in Switzerland"></asp:Label>
                            <asp:Label class="donateD" runat="server" Text="10 May 2024"></asp:Label>
                        </div>
                        <asp:Label class="donateN" runat="server" Text="John Doe"></asp:Label>
                        <div class="progressbar">
                            <%-- blm --%>
                        </div>
                        <div class="detailprogramP">
                            <asp:Button class="detailprogrambtn" ID="detailprogram" runat="server" Text="Detail Program" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="pendingC">
                <asp:Label class="textTitle" ID="pendingprogramT" runat="server" Text="Your Pending Program(s)"></asp:Label>
                    <div class="pendingprogramC">
                        <asp:Image class="programI" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQVua1higrnAKxEJ8ufI9iIJ8Y3_-DGUBEoA&s" runat="server" />
                        <div class="donatecontain2">
                            <div class="donatecontain1">
                                <asp:Label class="donateT" id="pendingT" runat="server" Text="Help with 2$ meal for hungry Orphans in Switzerland"></asp:Label>
                                <asp:Label class="donateD" id="pendingD" runat="server" Text="10 May 2024"></asp:Label>
                            </div>
                            <asp:Label class="donateN" id="pendingN" runat="server" Text="John Doe"></asp:Label>
                            <div class="progressbar">
                                <%-- blm --%>
                            </div>
                            <div class="detailprogramP">
                                <asp:Button class="detailprogrambtn" ID="pendingdetailprogram" runat="server" Text="Detail Program" />
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </form>
</body>
</html>
