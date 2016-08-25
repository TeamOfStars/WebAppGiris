<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repeater2.aspx.cs" Inherits="DataKontroller_Repeater.Repeater2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="1">
        <asp:Repeater runat="server" ID="urunRepeater" OnItemCreated="urunRepeater_ItemCreated" >
            <HeaderTemplate><tr><td>Ürün Ad</td><td>Ürün Fiyatı</td><td>Kategori Adı</td></tr></HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ProductName") %></td>
                    <td>
                        <asp:Label Text='<%# Eval("UnitPrice") %>' runat="server" ID="mn"/></td>
                    <td><%# Eval("CategoryName") %></td>
                </tr></ItemTemplate>
            <FooterTemplate>
                <tr>
                    <td colspan="3">
                        <asp:Label Text="" runat="server" ID="foterBilgi"/></td>
                </tr>
            </FooterTemplate>
        </asp:Repeater>
    </table>
    </div>
    </form>
</body>
</html>
