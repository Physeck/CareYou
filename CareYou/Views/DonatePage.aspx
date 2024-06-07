<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonatePage.aspx.cs" Inherits="CareYou.Views.DonatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate Page</title>
    <link href="../Style/contentstyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="donatepage">
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
            <asp:Button CssClass="detailprogrambtn" ID="viewmore" runat="server" Text="View More" Onclick="viewmore_Click"/>
        </div>
    </form>
</body>
</html>
