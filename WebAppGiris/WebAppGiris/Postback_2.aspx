<%@ page language="C#" autoeventwireup="true" codebehind="Postback_2.aspx.cs" inherits="WebAppGiris.Postback_2" 
Trace="false"%> 

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <strong>PostBack :</strong>
                bir istemci talepte bulunduğunda ilgili işlemlerin sunucu tarafında yapılması sonucu sayfanın tekrar kendisineyönlendirilmesi olayına denir..
            </p>
            <asp:Label Text="" runat="server" ID="lbl1"/>
            <asp:DropDownList ID="sehirler" runat="server"></asp:DropDownList>
           <asp:Button ID="btn1" Text="postback" OnClick="btn1_Click1" runat="server"/>
        </div>
    </form>
</body>
</html>
