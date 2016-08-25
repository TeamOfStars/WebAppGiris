<%@ page language="C#" autoeventwireup="true" codebehind="DataKontroller.aspx.cs" inherits="DataKontroller_Repeater.DataKontroller" %>

<%@import namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <% SqlConnection con = new SqlConnection("Server=ASUS\\MYSERVER;Database=NORTHWND;Trusted_Connection=True;");

            SqlCommand com = new SqlCommand("select CategoryName,Description from Categories",con);
            
            con.Open();
           SqlDataReader rd=com.ExecuteReader();

            while(rd.Read()){
                %><tr> 
                    <td style="border:3px;border-bottom:solid pink;border-top:solid magenta;border-left:solid yellow"><% Response.Write(rd.GetString(0));%></td>
                    <td style="border:3px;border-bottom:solid pink;border-top:solid magenta;border-left:solid green"><% Response.Write(rd.GetString(1));%></td>
                </tr>

                <% 
            }
            rd.Close();
            con.Close();


                %>
            </table>
        </div>
    </form>
</body>
</html>
