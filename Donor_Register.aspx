<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Donor_Register.aspx.cs" Inherits="Donor_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style3 {
            width: 20%;
        }
        .auto-style5 {
            font-style: normal;
        }
        .auto-style6 {
            width: 76%;
        }
        .auto-style7 {
            width: 248px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td width="30%">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Left6.png" Width="447px" Height="675px" />

        </td>

        <td valign="top" class="auto-style6">
            <h2> New Donor Registration</h2>
        
            <table style="height: 152px; width: 83%; font-weight: 700;;border:solid;border-color:black">
                <tr><td class="auto-style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: Medium"></asp:Label>
                    </td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">Donor Name</em></strong></h2>
                    </td><td class="auto-style7">
                        <h4>
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="319px"></asp:TextBox>
                        </h4>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;</td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">LoginName</em></strong></h2>
                    </td><td class="auto-style7">
                        <h4>
                    <asp:TextBox ID="TextBox7" runat="server" Height="31px" Width="316px"></asp:TextBox>
                        </h4>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">Password</em></strong></h2>
                    </td><td class="auto-style7">
                        <h4>
                    <asp:TextBox ID="TextBox8" runat="server" Height="31px" Width="316px" TextMode="Password"></asp:TextBox>
                        </h4>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td>
                    <h2><strong>Email</strong></h2>
                    </td><td class="auto-style7">
                        <h4>
                    <asp:TextBox ID="TextBox9" runat="server" Height="31px" Width="316px"></asp:TextBox>
                        </h4>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Not Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">ContactNumber</em></strong></h2>
                    </td><td class="auto-style7">
                        <h4>
                    <asp:TextBox ID="TextBox5" runat="server" Height="31px" Width="316px"></asp:TextBox>
                        </h4>
                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="**"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Not Valid Phone" ValidationExpression="0\d{9}"></asp:RegularExpressionValidator>
                    </td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">BloodGroup</em></strong></h2>
                    </td><td class="auto-style7">
                    
                        <h4>
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="42px" Width="319px" Font-Bold="True" Font-Size="Medium">
                            <asp:ListItem>A-</asp:ListItem>
                            
                            <asp:ListItem>B-</asp:ListItem>
                            
                            <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            
                            <asp:ListItem>O+</asp:ListItem>
                        </asp:DropDownList>
                                                                                    </h4>
                                                                                    </td><td class="auto-style3">&nbsp;</td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">Age</em></strong></h2>
                    </td><td class="auto-style7">
                    
                        <h4>
                    
                    <asp:TextBox ID="TextBox6" runat="server" Height="31px" Width="317px"></asp:TextBox>
                                                                                    </h4>
                                                                                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="**"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="From 16 To 60" MaximumValue="60" MinimumValue="16" Type="Integer"></asp:RangeValidator>
                    </td></tr>
                <tr><td>
                    <h2><strong>Address</strong></h2>
                    </td><td class="auto-style7">
                    
                        <h4>
                    
                    <asp:TextBox ID="TextBox10" runat="server" Height="31px" Width="316px"></asp:TextBox>
                                                                                    </h4>
                                                                                    </td><td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox10" ErrorMessage="**"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td>
                    <h2><strong><em class="auto-style5">Last_Donation_Date</em></strong></h2>
                    </td><td class="auto-style7">
                    
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#ad1f48" BorderColor="black" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="23px" NextPrevFormat="FullMonth" Width="329px" SelectedDate="<%# DateTime.Today %>" style="font-size: x-small">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                                                                                    </td><td class="auto-style3">
                        <br />
                    </td></tr>
                <tr><td class="auto-style2">&nbsp;</td><td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" BackColor="#1A5276" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="52px" Text="Donor Registration" Width="286px" OnClick="Button1_Click" />
                    </td><td class="auto-style3">&nbsp;</td></tr>
            </table>

               </td>
                                    </tr></table>
</asp:Content>



