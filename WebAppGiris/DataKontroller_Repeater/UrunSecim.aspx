<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UrunSecim.aspx.cs" Inherits="DataKontroller_Repeater.UrunSecim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:SqlDataSource runat="server" ID="mysource" ConnectionString="Server=ASUS\MYSERVER;Database=NORTHWND;Trusted_Connection=True;" SelectCommand="select OrderId from Orders"></asp:SqlDataSource>
        <asp:DropDownList runat="server" DataSourceID="mysource" AutoPostBack="true" 
            ID= "drop1"
            OnSelectedIndexChanged="drop1_SelectedIndexChanged">
           
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView runat="server" ID="urunlerGrid">

        </asp:GridView>
        <br />
        <asp:Label Text="" runat="server" ID="lbl"/>
    </div>
    </form>
</body>
</html>
