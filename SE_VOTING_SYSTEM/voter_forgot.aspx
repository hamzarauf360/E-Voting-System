<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voter_forgot.aspx.cs" Inherits="SE_VOTING_SYSTEM.voter_forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Forgot</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 423px;
        }
        .auto-style3 {
            width: 373px;
        }
        .auto-style4 {
            width: 103px;
        }
        .auto-style5 {
            width: 130px;
        }
        .auto-style6 {
            width: 309px;
        }
        .auto-style7 {
            width: 475px;
        }
        .auto-style8 {
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" BackColor="Red" style="font-weight: 700; font-size: xx-large" Text="Password Reset"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
                </td>
            </tr>
        </table>
    
    </div>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Image ID="Image1" runat="server" Height="45px" ImageUrl="~/images/welcome.png" Width="107px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Enter your Id"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td>
                    <asp:Label ID="invalid" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
