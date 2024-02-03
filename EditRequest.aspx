<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCenter.master" AutoEventWireup="true" CodeFile="EditRequest.aspx.cs" Inherits="EditRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style1 {
            text-align: center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 >
        <strong style="text-align: center">Edit Blood Requests</strong></h2>
    <div class="auto-style1">
        <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RequestID" DataSourceID="SqlDataSource1" style="font-size: medium" Width="50%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="RequestID" HeaderText="RequestID" InsertVisible="False" ReadOnly="True" SortExpression="RequestID" Visible="False" />
            <asp:BoundField DataField="CenterID" HeaderText="CenterID" SortExpression="CenterID" Visible="False" />
            <asp:BoundField DataField="NumberOfUnits" HeaderText="NumberOfUnits" SortExpression="NumberOfUnits" />
            <asp:BoundField DataField="RequestDate" HeaderText="RequestDate" SortExpression="RequestDate" />
            <asp:BoundField DataField="BloodGroup" HeaderText="BloodGroup" />
        </Columns>
        <EmptyDataTemplate>
            No Request Found
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Health_Center_Blood_Request] WHERE ([CenterID] = @CenterID)" DeleteCommand="DELETE FROM [Health_Center_Blood_Request] WHERE [RequestID] = @RequestID" InsertCommand="INSERT INTO [Health_Center_Blood_Request] ([CenterID], [BloodGroup], [NumberOfUnits], [RequestDate]) VALUES (@CenterID, @BloodGroup, @NumberOfUnits, @RequestDate)" UpdateCommand="UPDATE [Health_Center_Blood_Request] SET  [BloodGroup] = @BloodGroup, [NumberOfUnits] = @NumberOfUnits, [RequestDate] = @RequestDate WHERE [RequestID] = @RequestID">
    <DeleteParameters>
        <asp:Parameter Name="RequestID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CenterID" Type="String" />
        <asp:Parameter Name="BloodGroup" Type="String" />
        <asp:Parameter Name="NumberOfUnits" Type="Int32" />
        <asp:Parameter Name="RequestDate" Type="DateTime" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="CenterID" SessionField="UserID" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="CenterID" Type="String" />
        <asp:Parameter Name="BloodGroup" Type="String" />
        <asp:Parameter Name="NumberOfUnits" Type="Int32" />
        <asp:Parameter Name="RequestDate" Type="DateTime" />
        <asp:Parameter Name="RequestID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br /><br />
</asp:Content>


