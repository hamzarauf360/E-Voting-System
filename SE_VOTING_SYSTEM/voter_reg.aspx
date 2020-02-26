<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voter_reg.aspx.cs" Inherits="SE_VOTING_SYSTEM.voter_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Voter Registration</title>
    <link href="voter_page.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 367px;
        }
        .auto-style3 {
            width: 96px;
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
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF0066" style="font-weight: 700; font-size: xx-large" Text="Voter "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="#3333CC" style="font-weight: 700; font-size: xx-large" Text="Registration"></asp:Label>
                </td>
            </tr>
        </table>
       
        <br />
       
    </div>
         <div class="vsignup-box">

                        <p>Name
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
            
        <br />
                 <p>Phone

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Phone" ></asp:TextBox>
        <br />
              <p>Email
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>
            <br />
              <p>Voter ID
            <asp:TextBox ID="TextBox4" runat="server" placeholder="id"></asp:TextBox>
              <br />
                  <p>Password
            <asp:TextBox ID="TextBox7" runat="server" placeholder="password"></asp:TextBox>
              <br />
             <p>Address
            <asp:TextBox ID="TextBox5" runat="server" placeholder="address" ></asp:TextBox>
              <br />

             <p>Age

                        <br />

            <asp:TextBox ID="TextBox6" runat="server" placeholder="Age" ></asp:TextBox>             
                 
                  <br />
              <asp:Label ID="invalid" runat="server" ForeColor="Red"></asp:Label>
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
         </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [voter_info]"></asp:SqlDataSource>
    </form>
</body>
</html>
