<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStaff.master" AutoEventWireup="true" CodeFile="StaffAddDonation.aspx.cs" Inherits="StaffAddDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 85px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 61px;
        }
        .auto-style6 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong>Add New Donation Record</strong></h2>
    <table width="70%">
        <tr><td><strong>Enter Donor Contact Number</strong></td><td>
            <asp:TextBox ID="TextBox1" runat="server" Width="264px"></asp:TextBox></td><td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="**"></asp:RequiredFieldValidator>
            </td><td class="auto-style3">
                &nbsp;</td><td>
                <asp:Button ID="Button1" runat="server" Text="Get Donor Information" OnClick="Button1_Click" BackColor="#ad1f48" Height="50px" style="font-weight: 700" ForeColor="White" CssClass="auto-style4" /></td></tr>
        <tr><td>
            <strong>
            <asp:Label ID="Label3" runat="server" Text="Donor Name" Visible="False"></asp:Label>
            </strong>
            </td><td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
            </td><td class="auto-style5">
                <strong>
                <asp:Label ID="Label4" runat="server" Text="Blood Group" Visible="False"></asp:Label>
                </strong>
            </td><td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Label" Visible="False" CssClass="auto-style6"></asp:Label>
            </td><td>
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Visible="False" CssClass="auto-style6"></asp:Label>
            </td></tr>
        <tr><td>
            <strong>
            <asp:Label ID="Label7" runat="server" Text="Last_Donation_Date" Visible="False"></asp:Label>
            </strong>
            </td><td>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Label" Visible="False"></asp:Label>
            </td><td class="auto-style5">
                &nbsp;</td><td class="auto-style3">
                &nbsp;</td><td>
                &nbsp;</td></tr>
        <tr><td>&nbsp;</td><td>
            &nbsp;</td><td class="auto-style5">
                &nbsp;</td><td class="auto-style3">
                &nbsp;</td><td>
                <asp:Button ID="Button2" runat="server" Text="Save Donation"  Visible="False" OnClick="Button2_Click" BackColor="#ad1f48" Height="48px" style="font-weight: 700" ForeColor="White" /></td></tr>
    </table>

</asp:Content>

