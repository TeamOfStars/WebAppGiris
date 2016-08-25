<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender.aspx.cs" Inherits="StandartKontroller.Calender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lbl1" runat="server"></asp:Label>
        <asp:Calendar ID="cld1" runat="server" OnSelectionChanged="cld1_SelectionChanged" NextMonthText=">>" PrevMonthText="<<"></asp:Calendar>
    </div>
    </form>
</body>
</html>
