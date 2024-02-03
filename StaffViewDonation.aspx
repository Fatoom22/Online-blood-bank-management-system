<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStaff.master" AutoEventWireup="true" CodeFile="StaffViewDonation.aspx.cs" Inherits="StaffViewDonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>
          Search Blood Units</h2>
    <table><tr><td>Select Blood Group </td><td><asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="259px" Font-Bold="True" Font-Size="Medium">
                            <asp:ListItem>A-</asp:ListItem>
                            
                            <asp:ListItem>B-</asp:ListItem>
                            
                            <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            
                            <asp:ListItem>O+</asp:ListItem>
                        </asp:DropDownList></td><td>

                            <asp:Button ID="Button1" runat="server" BackColor="#ad1f48" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Search" Width="130px" OnClick="Button1_Click" />
                                                </td></tr></table>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" style="font-size: medium" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="DonationDate" HeaderText="DonationDate" SortExpression="DonationDate" />
            <asp:BoundField DataField="DonorName" HeaderText="DonorName" SortExpression="DonorName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BloodGroup], [DonationDate], [DonorName], [Age], [ContactNumber] FROM [View1] WHERE ([BloodGroup] = @BloodGroup)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="BloodGroup" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
    </asp:SqlDataSource>
    <br />
     <br />
</asp:Content>

