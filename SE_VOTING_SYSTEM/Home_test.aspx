<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_test.aspx.cs" Inherits="SE_VOTING_SYSTEM.Home_test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 366px;
        }
        .auto-style3 {
            width: 128px;
        }
        .auto-style4 {
            width: 44px;
        }
        .auto-style5 {
            width: 98px;
        }
        .auto-style6 {
            width: 96px;
        }
        .auto-style7 {
            width: 494px;
        }
        .auto-style8 {
            width: 526px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" ForeColor="#3333FF" style="font-weight: 700; font-size: xx-large" Text="Welcome "></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: xx-large" Text="To"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" ForeColor="Lime" style="font-weight: 700; font-size: xx-large" Text="Online"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" ForeColor="Red" style="font-weight: 700; font-size: xx-large" Text="Voting"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" ForeColor="#CC9900" style="font-weight: 700; font-size: xx-large" Text="System"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" ForeColor="#3333FF" style="font-weight: 700; font-size: xx-large" Text="Open Login:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/admin_login.aspx" style="font-weight: 700; font-size: xx-large">Admin</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#0000CC" NavigateUrl="~/Voter_login.aspx" style="font-weight: 700; font-size: xx-large">Voter</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Lime" NavigateUrl="~/candidate_login.aspx" style="font-weight: 700; font-size: xx-large">Candidate</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
