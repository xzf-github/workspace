<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3-1.aspx.cs" Inherits="_3_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:40%;">
                <tr>
                    <td style="text-align:right">用户名：</td>
                    <td><asp:TextBox ID="username" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="text-align:right">密码：</td>
                    <td><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="Button1" runat="server" PostBackUrl="~/3-2.aspx" Text="登录" />
                    </td>
                </tr>
            </table>
            
            
        </div>
    </form>
</body>
</html>
