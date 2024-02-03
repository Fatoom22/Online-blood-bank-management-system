<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDonor.master" AutoEventWireup="true" CodeFile="DonorBlood_Donation_Campaigns.aspx.cs" Inherits="DonorBlood_Donation_Campaigns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Donor View Blood_Donation_Campaigns</h2>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CampaignID" DataSourceID="SqlDataSource1" GridLines="None" style="font-size: medium" Width="1072px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CampaignID" HeaderText="CampaignID" ReadOnly="True" SortExpression="CampaignID" InsertVisible="False" />
            <asp:BoundField DataField="CampaignDate" HeaderText="CampaignDate" SortExpression="CampaignDate" />
            <asp:BoundField DataField="CampaignLoaction" HeaderText="CampaignLoaction" SortExpression="CampaignLoaction" />
        </Columns>
        <EmptyDataTemplate>
            No Request Found
        </EmptyDataTemplate>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Blood_Donation_Campaigns]">
</asp:SqlDataSource>
    <br />
    <br />
</asp:Content>



