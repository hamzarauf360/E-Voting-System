<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Voter_login.aspx.cs" Inherits="SE_VOTING_SYSTEM.Voter_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voter Login</title>
    <link href="voter_loginn.css" rel="stylesheet" />
    <style type="text/css">
        .avatar {
            height: 100px;
            width: 100px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div class="vlogin-box">
        <img src="images/voter_avatar.jpg" class="avatar"/>
            
        <h1>Voter Login Here</h1>
            <p>Voter Id</p>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="User Name"></asp:TextBox>
            
        <br />
&nbsp;<p>Password</p>

            <br />

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
        <asp:Label ID="invalid" runat="server" ForeColor="Red"></asp:Label>
   
        
                
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="20px" OnClick="Button2_Click" Text="Forgot Password" Width="145px" />
                </td>
            </tr>
        </table>
   
        
                
        <br />
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            

               


    
    </div>
    </form>
</body>
</html>
