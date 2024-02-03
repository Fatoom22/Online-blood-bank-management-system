<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageCenter.master" AutoEventWireup="true" CodeFile="AddBloodRequest.aspx.cs" Inherits="AddBloodRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style1 {
            width: 440px;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left;  width:100%; "><tr>
        
        
        
        <td class="auto-style1">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Request.png" Width="423px" Height="376px"/>

        </td>

        <td valign="top" class="auto-style7">
            <h2>New Blood Request </h2>
        
            <table class="auto-style10">
                <tr><td class="auto-style5">
                    <h3><strong>Blood<em class="auto-style2"> </em>Group</strong></h3>
                    </td><td class="auto-style11">
                    
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="259px" Font-Bold="True" Font-Size="Medium">
                            <asp:ListItem>A-</asp:ListItem>
                            
                            <asp:ListItem>B-</asp:ListItem>
                            
                            <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                            <asp:ListItem>AB+</asp:ListItem>
                            
                            <asp:ListItem>O+</asp:ListItem>
                        </asp:DropDownList>
                    </td><td class="auto-style9"></td></tr>
                <tr><td class="auto-style5">
                    <h3><strong>Number<em class="auto-style2"> </em>of<em class="auto-style2"> </em>Units</strong></h3>
                    </td><td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    (1 to 99)</td><td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="**"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Not Valid" ValidationExpression="\d{1,2}"></asp:RegularExpressionValidator>
                    </td></tr>
               
                <tr><td class="auto-style6"></td><td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" BackColor="#ad1f48" BorderColor="#000066" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" Text="Save Request" Width="265px" OnClick="Button1_Click" />
                    </td><td class="auto-style9"></td></tr>
                <tr><td class="auto-style2" colspan="3">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" style="font-size: Medium"></asp:Label>
                    </td></tr>
            </table>

               </td>
                                    </tr></table>
</asp:Content>

