<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sy3-1.aspx.cs" Inherits="sy3_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            =<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="+" CommandName="add" OnCommand="Button1_Command"/>
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="-" CommandName="subtract" OnCommand="Button1_Command"/>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="*" CommandName="multiply" OnCommand="Button1_Command"/>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="/" CommandName="divide" OnCommand="Button1_Command"/>
    </form>
</body>
</html>
