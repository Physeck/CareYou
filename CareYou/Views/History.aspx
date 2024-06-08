<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="CareYou.Views.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList ID="history2Above" class="top4Above" runat="server" >
                <ItemTemplate>
                    <%--<asp:LinkButton ID="top4LB" class="top4to10" runat="server" CommandName="redirectPP" CommandArgument= '<%# Eval("Id") %>'>--%>
                        <div class="top4to10">

                            <%--<img id="Image1" src="../Assets/Programs/<%# Eval("ProgramImage") %>"  class="ppTD4" />--%>

                            <div class="programInfo">
                                <div class="rankTD4">
                                    <%# Eval("TransactionDate") %>
                                </div>

                                <div class="rankTD4">
                                    <%# Eval("Transaction.Donation.ProgramTitle") %>
                                </div>

                                <div class="rankTD4">
                                    <%# Eval("Transaction.Donation.ProgramTitle") %>
                                </div>
                            </div>
                            

                            

                            <%--<div class="nameTD4">
                                <%# Eval("name") %>
                            </div>

                            <div class="donateContainer">
                                <asp:Label ID="lblDnt" class="donateTD4Lbl" runat="server" Text="Donated"></asp:Label>
                                <div class="donateTD4">
                                    Rp <%# Eval("amount") %>
                                </div>
                            </div>
                        </div>--%>
                    <%--</asp:LinkButton>--%>
        
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</body>
</html>
