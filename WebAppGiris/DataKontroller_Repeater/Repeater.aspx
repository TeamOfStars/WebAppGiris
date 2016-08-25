<%@ page language="C#" autoeventwireup="true" codebehind="Repeater.aspx.cs" inherits="DataKontroller_Repeater.Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #c {
            border: 1px solid blue;
            width: 80px;
        }

        #d {
            border: 1px solid blue;
            width: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Repeater runat="server" ID="repeate1" OnItemCreated="repeate1_ItemCreated">
                <HeaderTemplate>
                    <thead>
                        <tr>
                            <td>Kategori Name</td>
                            <td>Kategori tanım</td>
                        </tr>
                    </thead>
                </HeaderTemplate>
                <ItemTemplate>
                    <table style="border: 1px groove black">
                        <tr>
                            <td id="c">
                                <asp:Label Text='<%#Eval("CategoryName") %>' runat="server" ID="lblKategoryName" /></td>
                            <td id="d">
                                <asp:Label Text='<%#Eval("Description") %>' ID="lblDescription" runat="server" /></td>
                        </tr>
                    </table>
                </ItemTemplate>
                <FooterTemplate>
                    <tfoot>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="lblsonuc" />
                            </td>
                        </tr>
                    </tfoot>

                </FooterTemplate>
            </asp:Repeater>

        </div>

    </form>
</body>
</html>
