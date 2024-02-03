<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ViewDonors.aspx.cs" Inherits="ViewDonors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Donors Information</strong></h2>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DonorID" DataSourceID="SqlDataSource1" style="font-size: medium" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DonorID" HeaderText="DonorID" InsertVisible="False" ReadOnly="True" SortExpression="DonorID" />
            <asp:BoundField DataField="DonorName" HeaderText="DonorName" SortExpression="DonorName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="DonorAddress" HeaderText="DonorAddress" SortExpression="DonorAddress" />
            <asp:BoundField DataField="Last_Donation_Date" HeaderText="Last_Donation" SortExpression="Last_Donation_Date" />
        </Columns>
        <EmptyDataTemplate>
            No Information
        </EmptyDataTemplate>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#ad1f48" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
    </strong>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DonorID], [DonorName], [Email], [ContactNumber], [BloodGroup], [Age], [DonorAddress], [Last_Donation_Date] FROM [Donor]" DeleteCommand="DELETE FROM [Donor] WHERE [DonorID] = @DonorID" InsertCommand="INSERT INTO [Donor] ([DonorName], [Email], [ContactNumber], [BloodGroup], [Age], [DonorAddress], [Last_Donation_Date]) VALUES (@DonorName, @Email, @ContactNumber, @BloodGroup, @Age, @DonorAddress, @Last_Donation_Date)" UpdateCommand="UPDATE [Donor] SET [DonorName] = @DonorName, [Email] = @Email, [ContactNumber] = @ContactNumber, [BloodGroup] = @BloodGroup, [Age] = @Age, [DonorAddress] = @DonorAddress, [Last_Donation_Date] = @Last_Donation_Date WHERE [DonorID] = @DonorID">
    <DeleteParameters>
        <asp:Parameter Name="DonorID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DonorName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="BloodGroup" Type="String" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="DonorAddress" Type="String" />
        <asp:Parameter Name="Last_Donation_Date" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="DonorName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="BloodGroup" Type="String" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="DonorAddress" Type="String" />
        <asp:Parameter Name="Last_Donation_Date" Type="String" />
        <asp:Parameter Name="DonorID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br /><br />
</asp:Content>

