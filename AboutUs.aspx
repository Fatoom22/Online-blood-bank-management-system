<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 33%;
    }
    .auto-style4 {
        color: #CC0000;
    }
    .auto-style5 {
        width: 413px;
    }
</style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="text-align: left"><tr>
        
        
        
        <td class="auto-style3">

            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Aboutus.png" Width="420px" />

        </td>

        <td width="60%" valign="top">
            <h1> About Us:</h1>
             <h1> Project Title:<span class="auto-style4">Online Blood Bank Management System</span></h1>
           <h2>Supervisor : <span class="auto-style4">Dr. Manal Al Khammash</span></h2>
            <hr />
           
        <table style="width: 72%">
    <tr><td class="auto-style5" ><h2 style="width: 456px">Fatoom Hamdi</h2>
</td><td ><h2>202007105 </h2></td></tr>
            <tr><td class="auto-style5" ><h2>Zakariah Jily </h2>
</td><td ><h2>202006409</h2></td></tr>
           
           
            
           
        </table>


               </td>
                                    </tr></table>
</asp:Content>



