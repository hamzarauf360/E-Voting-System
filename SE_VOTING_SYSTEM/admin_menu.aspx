<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_menu.aspx.cs" Inherits="SE_VOTING_SYSTEM.admin_menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Menu</title>

    <link href="menuu.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 501px;
        }
        .auto-style3 {
            width: 50px;
        }
        .auto-style4 {
            width: 185px;
        }
        .auto-style5 {
            width: 254px;
        }
        .auto-style6 {
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" ForeColor="#0000CC" style="font-weight: 700; font-size: xx-large" Text="Welcome"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" style="font-size: xx-large; font-weight: 700" Text="Admin"></asp:Label>
                </td>
                <td style="margin-left: 80px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>
                 <asp:menu ID="Menu1" runat="server" CssClass="menu">
     <items>
         <asp:menuitem NavigateUrl="voter_reg.aspx" Text="Add Voter"></asp:menuitem>
         <asp:menuitem NavigateUrl="candidate_reg.aspx" Text="Add candidate"></asp:menuitem>
         
         <asp:menuitem NavigateUrl="#" Text="Announce Winner"></asp:menuitem>
         
     </items>

 </asp:menu> </td>
            <td>&nbsp;</td>
        </tr>
    </table>
            </form>

</body>
</html>
