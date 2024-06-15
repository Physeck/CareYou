﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChooseRolePage.aspx.cs" Inherits="CareYou.Views.ChooseRolePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Style/forgotpwstyle.css" rel="stylesheet" />
    <link href="../Style/loginstyle.css" rel="stylesheet" />
    <link href="../Style/chooserolestyle.css" rel="stylesheet" />
</head>
<body style="margin: 0">
    <body>
        <form id="form1" runat="server">
            <div>
                <div class="loginPage-container">
                    <div class="login-page-left-flexbox">
                        <h1 class="app-title-container">
                            <span class="app-title"><span class="app-title_span0">Care</span><span class="app-title_span1">You</span></span>
                        </h1>
                        <h1 class="findacc-text">Choose Your Role</h1>
                    </div>
                    <div class="loginPagebg-container" style="--src: url(/Assets/Login-Register/Rectangle-RegLogin.png)">
                        <div class="middle-container">
                                
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdownlist">
                                <asp:ListItem Value="" CssClass="default-list" Text="Choose Role" Selected="True"></asp:ListItem>
                                <asp:ListItem Value="1" CssClass="selected-list">User</asp:ListItem>
                                <asp:ListItem Value="2" CssClass="selected-list">Organizer</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="bottom-container">
                            <div class="left-container">
                                <asp:Button ID="continue" CssClass="return-btn" runat="server" Text="Continue" OnClick="continue_Click" />
                                <img class="return-png" src="/Assets/Login-Register/ReturnToSignin.png" />
                            </div>
                        </div>
                        <hr class="line" size="1" />
                    </div>
                </div>
            </div>

        </form>
    </body>
</html>
