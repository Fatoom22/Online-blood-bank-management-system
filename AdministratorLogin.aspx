<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdministratorLogin.aspx.cs" Inherits="AdministratorLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-style: normal;
        }
        .auto-style5 {
            width: 41%;
            height: 47px;
            text-align: center;
        }
        .auto-style6 {
        width: 369px;
    }
        .auto-style7 {
            width: 186px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td width="30%">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/staff.png" Width="401px" />

        </td>

        <td width="70%" valign="top">
            <h2>Blood Bank Users Login </h2>
        
            <table width="50%" style="height: 152px;border:solid;border-color:black">
                <tr><td class="auto-style5">
                    <h2><strong><em class="auto-style4">Loginname</em></strong></h2>
                    </td><td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style5">
                    <h2><strong><em class="auto-style4">Password</em></strong></h2>
                    </td><td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="259px" TextMode="Password"></asp:TextBox>
                    </td></tr>
                <tr><td class="auto-style5">
                    <h2 class="auto-style7"><strong><em class="auto-style4">User_ Level</em></strong></h2>
                    </td><td class="auto-style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="268px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                    </asp:DropDownList>
                    </td></tr>
                <tr><td class="auto-style5"></td><td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" BackColor="#1A5276" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Login" Width="265px" OnClick="Button1_Click" />
                    </td></tr>
            </table>

               </td>
                                    </tr></table>
</asp:Content>

