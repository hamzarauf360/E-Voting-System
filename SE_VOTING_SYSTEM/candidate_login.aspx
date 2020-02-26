<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate_login.aspx.cs" Inherits="SE_VOTING_SYSTEM.candidate_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Candidate Login</title>
    <link href="cand_login.css" rel="stylesheet" />
    <style type="text/css">
        .avatar {
            height: 100px;
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="vlogin-box">
        <img src="images/cand_avatar.png" class="avatar"/>
            
        <h1>Candidate Login Here</h1>
            <p>candidate id</p>
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
