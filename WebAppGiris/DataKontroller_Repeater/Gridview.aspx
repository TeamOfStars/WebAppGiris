<%@ page language="C#" autoeventwireup="true" codebehind="Gridview.aspx.cs" inherits="DataKontroller_Repeater.Gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView DataSourceID="mydatasource" runat="server" HeaderStyle-BackColor="Black" HeaderStyle-Font-Underline="true" HeaderStyle-ForeColor="white" AutoGenerateColumns="false" AllowSorting="true" DataKeyNames="CategoryID">
                <Columns>
                    <asp:BoundField DataField="CategoryID" HeaderText="Karegori Id"  SortExpression="CategoryID" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Kategori adı" SortExpression="CategoryName" />
                    <asp:CommandField HeaderText="yönetim" UpdateText="güncelle" DeleteText="sil" ShowDeleteButton="true" ShowEditButton="true"/>
               
                </Columns>
                
            </asp:GridView>
            <asp:SqlDataSource ID="mydatasource"  ConnectionString="Server=ASUS\MYSERVER;Database=NORTHWND;Trusted_Connection=True;" runat="server" SelectCommand="select CategoryID, CategoryName from Categories" UpdateCommand="update Categories set CategoryName=@CategoryName where CategoryID=@CategoryID" DeleteCommand="delete from Categories where CategoryID=@CategoryID" >
                <asp:UpdateParameters>
                    <asp:Parameter Type="String" Name="CategoryName"/> 
                    <asp:Parameter Type="Int32" Name="CategoryID" />
                </asp:UpdateParameters>
                <DeleteParameters>
                    <asp:Parameter Type="Int32" Name="CategoryID" />
                </DeleteParameters>
            </asp:SqlDataSource>
        
        </div>
    </form>
</body>
</html>
