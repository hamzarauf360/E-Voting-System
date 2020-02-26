<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cast_vote_voter.aspx.cs" Inherits="SE_VOTING_SYSTEM.cast_vote_voter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cast Vote</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 452px;
        }
        .auto-style3 {
            width: 438px;
        }
        .auto-style4 {
            width: 419px;
        }
        .auto-style5 {
            width: 133px;
        }
        .auto-style6 {
            width: 375px;
        }
        .auto-style8 {
            width: 104px;
        }
        .auto-style9 {
            width: 455px;
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
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" style="font-weight: 700; font-size: xx-large" Text="Cast Vote"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="#66FF33" ForeColor="#FF3300" OnClick="Button2_Click" Text="Logout" />
                </td>
            </tr>
        </table>
    
    </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Image ID="Image1" runat="server" Height="47px" ImageUrl="~/images/welcome.png" Width="107px" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Partyname" HeaderText="Partyname" SortExpression="Partyname" />
                            <asp:BoundField DataField="CandidateID" HeaderText="CandidateID" SortExpression="CandidateID" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Partyname], [CandidateID] FROM [candidate_info]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Enter Candidate Id"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF33" ForeColor="#FF3300" OnClick="Button1_Click" Text="Submit Vote" />
                </td>
                <td>
                    <asp:Label ID="invalid" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
