<%@ Page Language="C#" AutoEventWireup="true" CodeFile="8-1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线聊天</title>
</head>
<body>
    <form id="form1" runat="server">
    <div >在线聊天室</div>
    <div><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    <div>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCFF" ForeColor="#0033CC" Height="300px" TextMode="MultiLine" Width="100%"></asp:TextBox>
    </div>
    <div >
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox2" runat="server" Width="570px"></asp:TextBox></div>
    <div text-align: center;">
        <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
