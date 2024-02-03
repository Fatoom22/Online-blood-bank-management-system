<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ViewDonorDonation.aspx.cs" Inherits="ViewDonorDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            color: #000066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong>View Donor Donation</strong></h2>
    <p >
        <asp:Label ID="Label1" runat="server" style="font-size: x-Medium" Text="Donor Name : "></asp:Label>
    </p>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DonationID" DataSourceID="SqlDataSource1" GridLines="None" style="font-size: small" Width="513px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="#000" />
        <Columns>
            <asp:BoundField DataField="DonationID" HeaderText="DonationID" InsertVisible="False" ReadOnly="True" SortExpression="DonationID" />
            <asp:BoundField DataField="DonationDate" HeaderText="DonationDate" SortExpression="DonationDate" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
        </Columns>
        <EmptyDataTemplate>
            <span class="auto-style3"><strong>No Donation </strong></span>
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" ForeColor="#000" Font-Bold="True" />
        <HeaderStyle BackColor="#ad1f48" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    </strong>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DonationID], [DonationDate], [BloodGroup] FROM [BloodDonation] WHERE ([DonorID] = @DonorID) ORDER BY [DonationDate]">
        <SelectParameters>
            <asp:QueryStringParameter Name="DonorID" QueryStringField="DonorID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

