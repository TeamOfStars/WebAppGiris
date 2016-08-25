<%@ page language="C#" autoeventwireup="true" codebehind="UserControls.aspx.cs" inherits="ValidationControls.UserControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>  
        function Kontrol(sender,args) {

            //if(args.Value.length != 11 || args.Value%2!=0 || args.Value%2==0){
            //    args.IsValid = false;
            //} else {
            //    args.IsValid = true;
            //}  <<< YÖNTEM 1

            if (isNaN(args.Value)) {
                alert("HATA");
            }
            else {
                if (args.Value.length == 11) {
                    args.IsValid = true;
                }
                else {
                    args.IsValid = false;
                }
            
            }

        }

    </script>

    <style>
        table {
            border: 5px solid blue;
            background-color: azure;
        }

        #butonAlani {
            justify-content: center;
            display: flex;
            align-items: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Label Text="Kullanıcı Adı:" runat="server" ID="lblKul" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtKulAdi" /></td>
                    <td>
   <asp:RequiredFieldValidator id="txtKulAdiValidate" ControlToValidate="txtKulAdi" Display="Dynamic" ErrorMessage="bu alan boş geçilemez" ValidationGroup="kayit" SetFocusOnError="true" Text="*" runat="server"/>
                 
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Parola:" runat="server" ID="lblSifre" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtParola" TextMode="Password" /></td>
                    <td>
                   </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Parola(Tekrar):" runat="server" ID="lblParolaTekrar" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtParola2" TextMode="Password" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="E-Mail:" runat="server" ID="lblMail" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtMail" /></td>
                    <td>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ErrorMessage="Geçersiz gmail adresi" runat="server" Text="*" ValidationGroup="kayit" ControlToValidate="txtMail" ValidationExpression="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$" />

                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Tc Kimlik:" runat="server" ID="lblTc" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtTc" TextMode="Number" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="txtTcValidate" ErrorMessage="bu alan boş geçilemez" ControlToValidate="txtTc" Display="Dynamic" Text="*" runat="server" ValidationGroup="kayit" SetFocusOnError="true"/>
                        <asp:CustomValidator ID="txtTcCustom" ControlToValidate="txtTc" ClientValidationFunction="Kontrol"  ErrorMessage="tc kontrol et"  ValidationGroup="kayit" SetFocusOnError="true" runat="server" Text="*" />
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Yas:" runat="server" ID="lblYas" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtYas" /></td>
                    <td>
                        <asp:RegularExpressionValidator ID="txtYasRegular" ErrorMessage="istenilen formatta değil" runat="server" Text="*" ValidationGroup="kayit" ControlToValidate="txtYas" ValidationExpression="^\d+$" />
                        <asp:RangeValidator ID="txtYasRange" ControlToValidate="txtYas" MinimumValue="18" MaximumValue="35" runat="server" Display="Dynamic" ErrorMessage="yas aralığı 18-35 aralığında olmalıdır" Type="Integer" Text="*" ValidationGroup="kayit"/>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td id="butonAlani">
                        <asp:Button Text="Kaydet" runat="server" ID="kayit" ValidationGroup="kayit"/></td>

                </tr>
                <tr>
                    <td colspan="3">
                   <asp:ValidationSummary ID="validationSummary" ShowMessageBox="true" Visible="true" ValidationGroup="kayit" HeaderText="hata mesajları" runat="server" />
                    </td>
                </tr>

            </table>

        </div>
    </form>
</body>
</html>
