<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style3 {
            width: 27%;
        }
        .auto-style5 {
            font-style: normal;
        }
    .auto-style8 {
        text-decoration: underline;
    }
        .auto-style9 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td width="30%">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/staff.png" Width="350px" />

        </td>

        <td width="70%" valign="top">
            <h2 class="auto-style8">Add New Staff User</h2>
        
            <table style="height: 152px; width: 83%;">
                <tr><td class="auto-style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: Medium"></asp:Label>
                    </td></tr>
                <tr><td>
                    <h3><strong><em class="auto-style5">Staff Name</em></strong></h3>
                    </td><td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;</td></tr>
                <tr><td>
                    <h3><strong><em class="auto-style5">Loginname</em></strong></h3>
                    </td><td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="**"></asp:RequiredFieldValidator>
&nbsp;</td></tr>
                <tr><td>
                    <h3><strong>User_Level</strong></h3>
                    </td><td>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="264px" Font-Bold="True" Font-Size="Medium">
                            <asp:ListItem>Admin</asp:ListItem>
                            
                            <asp:ListItem>Staff</asp:ListItem>
                            
                        </asp:DropDownList>
                                                                                    </td><td class="auto-style3"></td></tr>
                <tr><td>
                    <h3><strong><em class="auto-style5">Password</em></strong></h3>
                    </td><td>
                    
                    <asp:TextBox ID="TextBox6" runat="server" Height="31px" Width="259px" TextMode="Password"></asp:TextBox>
                                                                                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;</td></tr>
                <tr><td class="auto-style2"></td><td>
                    <asp:Button ID="Button1" runat="server" BackColor="#ad1f48" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Save Staff" Width="265px" OnClick="Button1_Click" CssClass="auto-style9" />
                    </td><td class="auto-style3"></td></tr>
            </table>

               </td>
                                    </tr></table>
</asp:Content>


