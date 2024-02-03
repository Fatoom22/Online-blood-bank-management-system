<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageStaff.master" AutoEventWireup="true" CodeFile="Donation_Campaigns.aspx.cs" Inherits="Donation_Campaigns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style3 {
            width: 27%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td width="30%">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/left.png" Width="302px" Height="330px" />

        </td>

        <td width="70%" valign="top">
            <h2>Add New Blood_Donation_Campaign</h2>
        
            <table style="height: 152px; width: 83%;">
                <tr><td class="auto-style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: Medium"></asp:Label>
                    </td></tr>
                <tr><td><strong>CampaignDate/Time</strong></td><td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="489px"></asp:TextBox>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;</td></tr>
                <tr><td><strong>CampaignLoaction</strong></td><td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="107px" Width="488px" TextMode="MultiLine"></asp:TextBox>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="**"></asp:RequiredFieldValidator>
&nbsp;</td></tr>
                <tr><td>&nbsp;</td><td>
                    
                    &nbsp;</td><td class="auto-style3">
                        <br />
                    </td></tr>
                <tr><td class="auto-style2"></td><td>
                    <asp:Button ID="Button1" runat="server" BackColor="#ad1f48" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Save Campaign" Width="265px" OnClick="Button1_Click" />
                    </td><td class="auto-style3"></td></tr>
            </table>

               </td>
                                    </tr></table>
    <hr />
    <h2>Blood_Donation_Campaigns List</h2>
    <strong>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CampaignID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField CausesValidation="False" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CampaignID" HeaderText="CampaignID" InsertVisible="False" ReadOnly="True" SortExpression="CampaignID" />
            <asp:BoundField DataField="CampaignDate" HeaderText="CampaignDate" SortExpression="CampaignDate" />
            <asp:BoundField DataField="CampaignLoaction" HeaderText="CampaignLoaction" SortExpression="CampaignLoaction" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Blood_Donation_Campaigns] WHERE [CampaignID] = @CampaignID" InsertCommand="INSERT INTO [Blood_Donation_Campaigns] ([CampaignDate], [CampaignLoaction]) VALUES (@CampaignDate, @CampaignLoaction)" SelectCommand="SELECT * FROM [Blood_Donation_Campaigns]" UpdateCommand="UPDATE [Blood_Donation_Campaigns] SET [CampaignDate] = @CampaignDate, [CampaignLoaction] = @CampaignLoaction WHERE [CampaignID] = @CampaignID">
        <DeleteParameters>
            <asp:Parameter Name="CampaignID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CampaignDate" Type="String" />
            <asp:Parameter Name="CampaignLoaction" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CampaignDate" Type="String" />
            <asp:Parameter Name="CampaignLoaction" Type="String" />
            <asp:Parameter Name="CampaignID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />  <br />
</asp:Content>




