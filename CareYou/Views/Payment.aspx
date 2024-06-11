<%@ Page Title="" Language="C#" MasterPageFile="~/Layouts/navbar.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CareYou.Views.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/paymentstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="paymentPage">
        <div class="payment-page-flexbox">
            <h1 class="payment-title">Payment</h1>
            <div class="payment-amount-container">
                <div class="payment-amount-flexbox">
                    <h1 class="container-title">Amount</h1>
                    <div class="amount_box">
                        <div class="amount-box-content">
                            <h1 class="currency">Rp</h1>
                            <asp:TextBox CssClass="currency-amount" ID="AmountTB" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <h1 class="container-desc">We want to remind you that a platform fee of 4% is applied to each donation made. This fee helps us maintain and improve our services, ensuring that we can continue to support a wide range of projects and creators.</h1>
                    <div class="checkbox-button-flexbox">
                        <div class="checkbox-button-content">
                            <asp:CheckBox ID="PlatformFeeCB" runat="server" />
                            <h1 class="checkbox-text">I understand that a 4% platform fee will be deducted from my donation.</h1>
                        </div>
                        <div class="checkbox-button-content">
                            <asp:CheckBox ID="AnonymousCB" runat="server" />
                            <h1 class="checkbox-text">Don’t display my name publicly and donate anonymously.</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="payment-method-container">
                <div class="payment-method-flexbox">
                    <h1 class="container-title1">Payment Method</h1>
                    <div class="method-list-flexbox">
                        <div class="gopay-container">
                            <div class="method-content-container">
                                <div class="button-text-container">
                                    <asp:RadioButton ID="GoPayRB" runat="server" GroupName="paymentMethod" CssClass="radio-button"/>
                                    <h1 class="method-text">GoPay</h1>
                                </div>
                                <img class="method-img" src="/Assets/TransactionMethod/GoPay.png" alt="alt text" />
                            </div>
                        </div>
                        <div class="ovo-dana-container">
                            <div class="method-content-container">
                                <div class="button-text-container">
                                    <asp:RadioButton ID="OvoRB" runat="server" GroupName="paymentMethod" CssClass="radio-button"/>
                                    <h1 class="method-text">OVO</h1>
                                </div>
                                <img class="method-img" src="/Assets/TransactionMethod/Ovo.png" alt="alt text" />
                            </div>
                        </div>
                        <div class="ovo-dana-container">
                            <div class="method-content-container">
                                <div class="button-text-container">
                                    <asp:RadioButton ID="DanaRB" runat="server" GroupName="paymentMethod" CssClass="radio-button"/>
                                    <h1 class="method-text">DANA</h1>
                                </div>
                                <img class="method-img" src="/Assets/TransactionMethod/Dana.png" alt="alt text" />
                            </div>
                        </div>
                        <div class="cc-container">
                            <div class="method-content-container">
                                <div class="button-text-container">
                                    <asp:RadioButton ID="CreditCardRB" runat="server" GroupName="paymentMethod" CssClass="radio-button"/>
                                    <h1 class="method-text">Credit Card</h1>
                                </div>
                                <img class="cc-img" src="/Assets/TransactionMethod/CreditCard.png" alt="alt text" />
                            </div>
                        </div>
                    </div>
                    <div id="CCForm" class="cc-form-container" runat="server">
                        <asp:TextBox ID="CCNameTB" runat="server" Placeholder="Name on card" CssClass="cc-name"></asp:TextBox>
                        <div class="form-flexbox-line">
                            <asp:TextBox ID="CCNumberTB" runat="server" Placeholder="Card Number" CssClass="card-number-container"></asp:TextBox>
                            <asp:TextBox ID="CCCVVTB" runat="server" Placeholder="CVV" CssClass="cc-cvv"></asp:TextBox>
                        </div>
                        <div class="form-flexbox-line">
                            <asp:TextBox ID="CCExpireTB" runat="server" Placeholder="MM / YY" CssClass="cc-expire"></asp:TextBox>
                            <asp:TextBox ID="CCPostcodeTB" runat="server" Placeholder="Postal Code" CssClass="cc-postcode"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button ID="DonateBtn" CssClass="donate-btn" runat="server" Text="Donate" OnClick="DonateBtn_Click" />
                    <h1 class="container-desc1">By choosing the payment method above, you agree to the CareYou Terms of Service and acknowledge the Privacy Notice.</h1>
                </div>
            </div>
        </div>
    </section>
    <script type="text/javascript">
        window.onload = function () {
            var creditCardRB = document.getElementById('<%= CreditCardRB.ClientID %>');
           var ccForm = document.getElementById('<%= CCForm.ClientID %>');
           var radioButtons = document.getElementsByClassName('radio-button');

           function updateCCFormVisibility() {
               if (creditCardRB.checked) {
                   ccForm.classList.remove('hidden');
               } else {
                   ccForm.classList.add('hidden');
               }
           }

           for (var i = 0; i < radioButtons.length; i++) {
               radioButtons[i].onchange = updateCCFormVisibility;
           }
       }
</script>
</asp:Content>
