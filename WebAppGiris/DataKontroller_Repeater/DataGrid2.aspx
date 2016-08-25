<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataGrid2.aspx.cs" Inherits="DataKontroller_Repeater.DataGrid2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView runat="server" ID="grid" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White" AutoGenerateColumns="false" DataSourceID="source" OnSelectedIndexChanged="grid_SelectedIndexChanged" AllowPaging="true" PageSize="7" OnPageIndexChanging="grid_PageIndexChanging" PagerSettings-Mode="NextPreviousFirstLast" PagerSettings-LastPageText=" >>| " PagerSettings-PreviousPageText=" < " PagerSettings-NextPageText=" > " PagerSettings-FirstPageText=" |<< " >
        <Columns>
            <asp:BoundField HeaderText="Ürün ID" DataField="ProductID"/>
            <asp:BoundField HeaderText="Ürün Adı" DataField="ProductName"/>
            <asp:BoundField HeaderText="Ürün Fiyatı" DataField="UnitPrice"/>
            <asp:CommandField  SelectText="Satın Al" ShowSelectButton="true"/>
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ConnectionString="Server=ASUS\MYSERVER;Database=NORTHWND;Trusted_Connection=True;" ID="source" runat="server" SelectCommand="select ProductID,ProductName,UnitPrice from Products"></asp:SqlDataSource>
        <asp:Label ID="bilgilbl" runat="server"></asp:Label>
        <asp:Label ID="lbl2" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
