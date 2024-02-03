<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DonorLogin.aspx.cs" Inherits="DonorLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 263px;
        }
    .auto-style4 {
        height: 47px;
        text-align: center;
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td width="30%">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Left6.png" Width="341px" Height="292px" />

        </td>

        <td width="70%" valign="top">
            <h2> Donor Login </h2>
        
            <table width="50%" style="height: 152px;border:solid;border-color:black">
                <tr><td class="auto-style4">
                    <h2><strong>Loginname</strong></h2>
                    </td><td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style2">
                    <h2><strong>Password</strong></h2>
                    </td><td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="259px" TextMode="Password"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style2"></td><td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#1A5276" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Login" Width="265px" OnClick="Button1_Click" />
                    </td></tr>
                <tr><td class="auto-style2" colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: Medium"></asp:Label>
                    </td></tr>
            </table>

               </td>
                                    </tr></table>
</asp:Content>



