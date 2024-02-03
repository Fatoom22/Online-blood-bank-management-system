<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCenter.master" AutoEventWireup="true" CodeFile="CenterPage.aspx.cs" Inherits="CenterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style2 {
            font-size: Medium;
        }
        
        .auto-style3 {
            background-color: #AD1F48;
        }
        
        .auto-style4 {
            text-align: center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Search For Blood Units</strong></h2>
    <h2 >
        <span class="auto-style2">Select Blood Group</span>:&nbsp;
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="170px" Font-Bold="True" Font-Size="Medium">
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
                    <asp:Button ID="Button1" runat="server" BackColor="#ad1f48" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="43px" Text="Search" Width="174px" OnClick="Button1_Click" CssClass="auto-style3" />
                    </h2>
    <strong>
    <div class="auto-style4">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" style="font-size: medium" Width="30%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" SortExpression="BloodGroup" />
            <asp:BoundField DataField="count" HeaderText="Units Count" SortExpression="count" />
        </Columns>
        <EmptyDataTemplate>
            No Units Found
        </EmptyDataTemplate>
        <FooterStyle BackColor="#ad1f48" ForeColor="#330099" />
        <HeaderStyle BackColor="#ad1f48" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#ad1f48" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
</asp:GridView>
    </div>
    </strong>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BloodGroup], [count] FROM [View2] WHERE ([BloodGroup] = @BloodGroup)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="BloodGroup" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br /><br />
</asp:Content>

