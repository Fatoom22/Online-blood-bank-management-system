<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="EditStaff.aspx.cs" Inherits="EditStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Edit Staff Information</strong></h2>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserID" DataSourceID="SqlDataSource1" style="font-size: medium" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="UserLoginName" HeaderText="UserLoginName" SortExpression="UserLoginName" />
            <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Is_Admin" HeaderText="Is_Admin" SortExpression="Is_Admin" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Blood_Bank_Users]" DeleteCommand="DELETE FROM [Blood_Bank_Users] WHERE [UserID] = @UserID" InsertCommand="INSERT INTO [Blood_Bank_Users] ([UserLoginName], [UserPassword], [UserName], [Is_Admin]) VALUES (@UserLoginName, @UserPassword, @UserName, @Is_Admin)" UpdateCommand="UPDATE [Blood_Bank_Users] SET [UserLoginName] = @UserLoginName, [UserPassword] = @UserPassword, [UserName] = @UserName, [Is_Admin] = @Is_Admin WHERE [UserID] = @UserID">
    <DeleteParameters>
        <asp:Parameter Name="UserID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserLoginName" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Is_Admin" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserLoginName" Type="String" />
        <asp:Parameter Name="UserPassword" Type="String" />
        <asp:Parameter Name="UserName" Type="String" />
        <asp:Parameter Name="Is_Admin" Type="String" />
        <asp:Parameter Name="UserID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br /><br />
</asp:Content>

