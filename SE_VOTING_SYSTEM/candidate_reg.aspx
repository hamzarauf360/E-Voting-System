<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate_reg.aspx.cs" Inherits="SE_VOTING_SYSTEM.candidate_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Candidate Registration</title>
    <link href="cand.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 634px;
        }
        .auto-style2 {
            width: 2px;
        }
        .auto-style3 {
            width: 636px;
        }
        .auto-style4 {
            width: 642px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [candidate_info]"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" ForeColor="#FF0066" style="font-weight: 700; font-size: xx-large" Text="Candidate "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" ForeColor="#3333CC" style="font-weight: 700; font-size: xx-large" Text="Registration"></asp:Label>
                </td>
            </tr>
        </table>
       
        <br />
       
    </div>
        <div class="nsignup-box">

                        <p>Name
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
            
        <br />
                 <p>Phone

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Phone" ></asp:TextBox>
        <br />
              <p>Email
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Email"></asp:TextBox>
            <br />
              <p>Candidate ID
            <asp:TextBox ID="TextBox4" runat="server" placeholder="id"></asp:TextBox>
              <br />
                  <p>Password
            <asp:TextBox ID="TextBox8" runat="server" placeholder="password"></asp:TextBox>
              <br />
                  <p>Party Name
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Party"></asp:TextBox>
              <br />
             <p>Address
            <asp:TextBox ID="TextBox5" runat="server" placeholder="address"></asp:TextBox>
              <br />

             <p>Age

                        <br />

            <asp:TextBox ID="TextBox6" runat="server" placeholder="Age"></asp:TextBox>
              <br />
              <asp:Label ID="invalid" runat="server" ForeColor="Red"></asp:Label>
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
         </div>
    </form>
</body>
</html>
