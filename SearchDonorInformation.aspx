<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCenter.master" AutoEventWireup="true" CodeFile="SearchDonorInformation.aspx.cs" Inherits="SearchDonorInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style2 {
            font-size: Medium;
        }
        
        .auto-style3 {
            text-align: center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Search For Donor Information</strong></h2>
    <h3 >
        <span class="auto-style2">Select Blood Group</span>:&nbsp;
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="248px" Font-Bold="True" Font-Size="Medium">
                            <asp:ListItem>A-</asp:ListItem>
                            
                            <asp:ListItem>B-</asp:ListItem>
                            
                            <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            
                            <asp:ListItem>O+</asp:ListItem>
                        </asp:DropDownList>
                                                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#ad1f48" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="39px" Text="Search" Width="176px" OnClick="Button1_Click" />
                    </h3>
    <div class="auto-style3">
        <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" style="font-size: medium" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" DataKeyNames="DonorID">
        <Columns>
            <asp:BoundField DataField="DonorID" HeaderText="DonorID" SortExpression="DonorID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="DonorName" HeaderText="DonorName" SortExpression="DonorName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="DonorAddress" HeaderText="DonorAddress" SortExpression="DonorAddress" />
            <asp:BoundField DataField="Last_Donation_Date" HeaderText="Last_Donation_Date" SortExpression="Last_Donation_Date" />
        </Columns>
        <EmptyDataTemplate>
            No Units Found
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
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [DonorID], [DonorName], [Email], [ContactNumber], [BloodGroup], [Age], [DonorAddress], [Last_Donation_Date] FROM [Donor] WHERE ([BloodGroup] = @BloodGroup)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="BloodGroup" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br /><br />
</asp:Content>


