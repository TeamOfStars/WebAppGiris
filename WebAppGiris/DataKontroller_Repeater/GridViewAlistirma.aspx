<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewAlistirma.aspx.cs" Inherits="DataKontroller_Repeater.GridViewAlistirma" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView runat="server" DataSourceID="mysource" AutoGenerateColumns="false" RowStyle-BackColor="Yellow" AlternatingRowStyle-BackColor="Red" ForeColor="Orange" HeaderStyle-BackColor="Black" HeaderStyle-ForeColor="White">
        <Columns>
            <asp:BoundField HeaderText="Şirket Adı" DataField="CompanyName"/>
            <asp:BoundField HeaderText ="Şirket Telefonları" DataField="Phone"/>
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource runat="server" ID="mysource" ConnectionString="Server=ASUS\MYSERVER;Database=NORTHWND;Trusted_Connection=True;" SelectCommand="select CompanyName,Phone from Shippers"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
