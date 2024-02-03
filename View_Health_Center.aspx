<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="View_Health_Center.aspx.cs" Inherits="View_Health_Center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Edit Health_Centers Information</strong></h2>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CenterID" DataSourceID="SqlDataSource1" style="font-size: medium" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CenterID" HeaderText="CenterID" InsertVisible="False" ReadOnly="True" SortExpression="CenterID" />
            <asp:BoundField DataField="HealthCenterName" HeaderText="HealthCenterName" SortExpression="HealthCenterName" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Loginname" HeaderText="Loginname" SortExpression="Loginname" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:TemplateField HeaderText="IsApprove">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("IsApprove") %>'>
                        <asp:ListItem>New</asp:ListItem>
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Not Approve</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Health_Center]" DeleteCommand="DELETE FROM [Health_Center] WHERE [CenterID] = @CenterID" InsertCommand="INSERT INTO [Health_Center] ([HealthCenterName], [Name], [Loginname], [Password], [IsApprove]) VALUES (@HealthCenterName, @Name, @Loginname, @Password, @IsApprove)" UpdateCommand="UPDATE [Health_Center] SET [HealthCenterName] = @HealthCenterName, [Name] = @Name, [Loginname] = @Loginname, [Password] = @Password, [IsApprove] = @IsApprove WHERE [CenterID] = @CenterID">
    <DeleteParameters>
        <asp:Parameter Name="CenterID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="HealthCenterName" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Loginname" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="IsApprove" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="HealthCenterName" Type="String" />
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Loginname" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="IsApprove" Type="String" />
        <asp:Parameter Name="CenterID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br /><br />
</asp:Content>



