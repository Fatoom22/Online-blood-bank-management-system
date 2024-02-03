<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Health_Center_Register.aspx.cs" Inherits="Health_Center_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style5 {
            font-style: normal;
        }
    .auto-style7 {
            width: 188px;
        }
    .auto-style9 {
        height: 290px;
        width: 72%;
    }
        .auto-style11 {
            height: 328px;
        }
        .auto-style12 {
            width: 168px;
        }
        .auto-style13 {
            width: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td width="30%" class="auto-style11">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Doctor2.png" Width="461px" Height="352px" />

        </td>

        <td width="70%" valign="top" class="auto-style11">
            <h2>Health Center Registration </h2>
        
            <table style="border:medium solid black; " class="auto-style9">
                <tr><td class="auto-style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: Medium"></asp:Label>
                    </td></tr>
                <tr><td class="auto-style7">
                    <h3><strong><em class="auto-style5">Center&nbsp; Name</em></strong></h3>
                    </td><td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td><td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;</td></tr>
                <tr><td class="auto-style7">
                    <h3><strong><em class="auto-style5">User&nbsp; Name</em></strong></h3>
                    </td><td class="auto-style12">
                    <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td><td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;</td></tr>
                <tr><td class="auto-style7">
                    <h3><strong><em class="auto-style5">Loginname</em></strong></h3>
                    </td><td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="259px"></asp:TextBox>
                    </td><td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="**"></asp:RequiredFieldValidator>
&nbsp;</td></tr>
                <tr><td class="auto-style7">
                    <h3><strong><em class="auto-style5">Password</em></strong></h3>
                    </td><td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server" Height="31px" Width="259px" TextMode="Password"></asp:TextBox>
                    </td><td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="auto-style7">&nbsp;</td><td class="auto-style12">
                    
                    <asp:Button ID="Button1" runat="server" BackColor="#1A5276" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Register" Width="265px" OnClick="Button1_Click" />
                    </td><td class="auto-style13">&nbsp;</td></tr>
                </table>

               </td>
                                    </tr></table>
</asp:Content>
