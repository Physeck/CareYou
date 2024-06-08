<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopDonation.aspx.cs" Inherits="CareYou.Views.TopDonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/Styling.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="topDonationPage">
            <div class="tDContainer">
                <asp:Label ID="tDLbl" class="tDLbl" runat="server" Text="Top Donation"></asp:Label>

                <div class="tDFilterBtn">
                    <asp:Button ID="tDIndividual" class="tDIndividual" runat="server" Text="Individual" OnClick="tDIndividual_Click" />
                    <asp:Button ID="tDOrganization" class="tDOrganization" runat="server" Text="Organization" OnClick="tDOrganization_Click"/>
                </div>

                <div class="top3">
                    <div class="allTop3">
                        <asp:LinkButton ID="LinkButton2" class="top3Container" runat="server" CommandName="redirectPP" CommandArgument= '<%# Eval("Id") %>'>
                            <%--<div class="top3Container">--%>
                                <div class="innerTD3">
                                    <div class="rankTD3">
                                        <asp:Label ID="Label3" class="sec" runat="server" Text="2"></asp:Label>
                                        <asp:Label ID="Label4" class="secnd" runat="server" Text="nd"></asp:Label>
                                    </div>


                                    <img id="pp2" src="../Assets/Profiles/<%= second.image %>"  class="ppTD3" />

                                    <div class="nameTD3">
                                        <%= second.name %>
                                    </div>

                                    <asp:Label ID="Label5" class="donatedTD3" runat="server" Text="Donated"></asp:Label>

                                    <div class="amountTD3">
                                        Rp <%= second.amount %>
                                    </div>
                                </div>
                            <%--</div>--%>
                        </asp:LinkButton>

                        <asp:LinkButton ID="LinkButton1" class="top3Container" runat="server" CommandName="redirectPP" CommandArgument= '<%# Eval("Id") %>'>
                            <%--<div class="top3Container">--%>
                                <div class="innerTD3">
                                    <div class="rankTD3">
                                        <asp:Label ID="Label1" class="fir" runat="server" Text="1"></asp:Label>
                                        <asp:Label ID="Label2" class="first" runat="server" Text="st"></asp:Label>
                                    </div>


                                    <%--<asp:Image ID="ppTD3" class="ppTD3" ImageUrl="../Assets/profile1.png" runat="server" />--%>
                                    <img id="pp1" src="../Assets/Profiles/<%= one.image %>"  class="ppTD3" />

                                    <div class="nameTD3">
                                        <%= one.name %>
                                    </div>

                                    <asp:Label ID="donatedTD3" class="donatedTD3" runat="server" Text="Donated"></asp:Label>

                                    <div class="amountTD3">
                                        Rp <%= one.amount %>
                                    </div>
                                </div>
                            <%--</div>--%>
                        </asp:LinkButton>

                        <asp:LinkButton ID="top3LB" class="top3Container" runat="server" CommandName="redirectPP" CommandArgument= '<%# Eval("Id") %>'>
                            <%--<div class="top3Container">--%>
                                <div class="innerTD3">
                                    <div class="rankTD3">
                                        <asp:Label ID="Label6" class="thi"  runat="server" Text="3"></asp:Label>
                                        <asp:Label ID="Label7" class="third" runat="server" Text="rd"></asp:Label>
                                    </div>


                                    <%--<asp:Image ID="Image2" class="ppTD3" ImageUrl="../Assets/profile1.png" runat="server" />--%>
                                    <img id="pp3" src="../Assets/Profiles/<%= three.image %>"  class="ppTD3" />

                                    <div class="nameTD3">
                                        <%= three.name %>
                                    </div>

                                    <asp:Label ID="Label8" class="donatedTD3" runat="server" Text="Donated"></asp:Label>

                                    <div class="amountTD3">
                                        Rp <%= three.amount %>
                                    </div>
                                </div>
                            <%--</div>--%>
                        </asp:LinkButton>
                    </div>

                    
                </div>
                
                <div class="top10">
                    <asp:DataList ID="top4Above" class="top4Above" runat="server" OnItemCommand="top4Above_ItemCommand" >
                        <ItemTemplate>
                            <asp:LinkButton ID="top4LB" class="top4to10" runat="server" CommandName="redirectPP" CommandArgument= '<%# Eval("Id") %>'>
                                <%--<div class="top4to10">--%>
                                    <div class="rankTD4">
                                        <%# Eval("rank") %>
                                    </div>

                                    <img id="Image1" src="../Assets/Profiles/<%# Eval("image") %>"  class="ppTD4" />

                                    <div class="nameTD4">
                                        <%# Eval("name") %>
                                    </div>

                                    <div class="donateContainer">
                                        <asp:Label ID="lblDnt" class="donateTD4Lbl" runat="server" Text="Donated"></asp:Label>
                                        <div class="donateTD4">
                                            Rp <%# Eval("amount") %>
                                        </div>
                                    </div>
                                <%--</div>--%>
                            </asp:LinkButton>
                            
                        </ItemTemplate>
                    </asp:DataList>
                </div>

                
            </div>

        </div>
    </form>
</body>
</html>
