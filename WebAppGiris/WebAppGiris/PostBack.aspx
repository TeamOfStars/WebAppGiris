<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostBack.aspx.cs" Inherits="WebAppGiris.PostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #s1{
            text-decoration:underline;
            color:green;
        }
        #s2{
            font-weight:bold;

        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            <span id="s1">Günün tarih ve zamanı :</span>
            <span id="s2"><% Response.Write(DateTime.Now.ToString()); %></span>
        </p>
         
     <asp:Label ID="lbl1" runat="server"></asp:Label>
        <asp:Button ID="btn1" runat="server" Text="postback" />
        
    </div>
    </form>
</body>
</html>
