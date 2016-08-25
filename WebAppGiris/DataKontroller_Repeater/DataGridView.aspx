<%@ page language="C#" autoeventwireup="true" codebehind="DataGridView.aspx.cs" inherits="DataKontroller_Repeater.DataGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

          <asp:SqlDataSource runat="server" ConnectionString="Server=ASUS\MYSERVER;Database=NORTHWND;Trusted_Connection=True;" ID="datasourceId" SelectCommand="select CategoryID,CategoryName from categories" SelectCommandType="Text" />
            <asp:GridView ID="dtgridview" runat="server" DataSourceID="datasourceId" HeaderStyle-BackColor="Black" ForeColor="White" HeaderStyle-Font-Underline="true" AllowPaging="true" AllowSorting="true"  >
                <%--<Columns>
                    <asp:BoundField  HeaderText="kategori Id" DataField="CategoryID" />
                    <asp:BoundField HeaderText="Kategori Adı" DataField="CategoryName"  />
                    <asp:CommandField HeaderText="Yönetim" DeleteText="Sil" UpdateText="Güncelle" />
                </Columns>--%>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
