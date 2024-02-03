<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDonor.master" AutoEventWireup="true" CodeFile="DonorPage.aspx.cs" Inherits="DonorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style4 {
            color: #003399;
        }
        .auto-style5 {
            text-align: left;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Update Donor Information</strong></h2>
    <strong>
    <div class="auto-style5">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="60%" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px" CellPadding="4" CellSpacing="2" DataKeyNames="DonorID" DataSourceID="SqlDataSource1" ForeColor="Black" CssClass="auto-style4">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="DonorID" HeaderText="DonorID" InsertVisible="False" ReadOnly="True" SortExpression="DonorID" />
            <asp:BoundField DataField="DonorName" HeaderText="DonorName" SortExpression="DonorName" />
            <asp:BoundField DataField="LoginName" HeaderText="LoginName" SortExpression="LoginName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="DonorAddress" HeaderText="DonorAddress" SortExpression="DonorAddress" />
            <asp:BoundField DataField="Last_Donation_Date" HeaderText="Last_Donation_Date" SortExpression="Last_Donation_Date" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>
    </div>
    </strong>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Donor] WHERE ([DonorID] = @DonorID)" DeleteCommand="DELETE FROM [Donor] WHERE [DonorID] = @DonorID" InsertCommand="INSERT INTO [Donor] ([DonorName], [LoginName], [Password], [Email], [ContactNumber], [BloodGroup], [Age], [DonorAddress], [Last_Donation_Date]) VALUES (@DonorName, @LoginName, @Password, @Email, @ContactNumber, @BloodGroup, @Age, @DonorAddress, @Last_Donation_Date)" UpdateCommand="UPDATE [Donor] SET [DonorName] = @DonorName, [LoginName] = @LoginName, [Password] = @Password, [Email] = @Email, [ContactNumber] = @ContactNumber, [BloodGroup] = @BloodGroup, [Age] = @Age, [DonorAddress] = @DonorAddress, [Last_Donation_Date] = @Last_Donation_Date WHERE [DonorID] = @DonorID">
    <DeleteParameters>
        <asp:Parameter Name="DonorID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="DonorName" Type="String" />
        <asp:Parameter Name="LoginName" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="ContactNumber" Type="String" />
        <asp:Parameter Name="BloodGroup" Type="String" />
        <asp:Parameter Name="Age" Type="Int32" />
        <asp:Parameter Name="DonorAddress" Type="String" />
        <asp:Parameter Name="Last_Donation_Date" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="DonorID" SessionField="DonorID" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="DonorName" Type="String" />
        <asp:Parameter Name="LoginName" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
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


