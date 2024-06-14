<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="CareYou.Views.History1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../Style/Styling.css" rel="stylesheet" />

    <div class="HistoryPage">
        <asp:Label ID="HistoryTitle" class="HistoryTitle" runat="server" Text="History"></asp:Label>

        <div class="HistdescContainer">
            <asp:Label ID="Histdesc" class="Histdesc" runat="server" Text="Select for more details"></asp:Label>
        </div>
        

        <div class="filterHistory">
            <asp:DropDownList ID="dateDDH" class="dDH" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dateDDH_SelectedIndexChanged">
                <asp:ListItem>All</asp:ListItem>
                <asp:ListItem>3 Days Ago</asp:ListItem>
                <asp:ListItem>1 Week Ago</asp:ListItem>
                <asp:ListItem>3 Week Ago</asp:ListItem>
                <asp:ListItem>1 Month Ago</asp:ListItem>
                <asp:ListItem>3 Month Ago</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="typeDDH" class="dDH" runat="server"  OnSelectedIndexChanged="typeDDH_SelectedIndexChanged" AutoPostBack="True" >
                <asp:ListItem>All</asp:ListItem>
                <asp:ListItem>Donation</asp:ListItem>
                <asp:ListItem>Withdrawal</asp:ListItem>
            </asp:DropDownList>
        </div>
    

        <asp:DataList ID="history2Above" class="historyDataContainer" runat="server" >
            <ItemTemplate>
                <div class="historyDataInnerContainer">
                    <asp:LinkButton ID="historyData" class="historyData" runat="server">
                        <div class="hImageContainer">
                            <img id="programH" src="../Assets/Program/<%# Eval("Program.ProgramImage") %>"  class="programH" />
                        </div>
    

                        <div class="historyDetail">
                            <div class="hDateContainer">
                                <asp:Label ID="historyDate" runat="server" Text=""></asp:Label>
                                <%# Eval("TransactionType") %> <%# Eval("TransactionDate", "{0:d}") %>
                            </div>
    
                            <div class="hProgramTitle">
                                <%# Eval("Program.ProgramTitle") %>
                            </div>

                            <div class="hProgramFundraiser">
                                <%# Eval("Program.FundraiserName") %>
                            </div>
                        </div>

                        <div class="hProgramAmount">
                            Rp <%# Eval("Amount") %>
                        </div>
                    </asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
