<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="SE_VOTING_SYSTEM.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-box">
        <img src="images/avatar.jpg" class="avatar"/>
            
        <h1>Login Here</h1>
            <p>Username</p>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name"></asp:TextBox>
            
        <br />
&nbsp;<p>Password</p>

            <br />

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="invalid" runat="server" ForeColor="Red"></asp:Label>
        <br />
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            

               


    
    </div>
    </form>
</body>
</html>
