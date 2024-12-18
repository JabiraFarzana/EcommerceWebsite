<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_asp.Childpg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 280px;
        }
        .auto-style2 {
            width: 295px;
        }
        .auto-style3 {
            width: 285px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">
                <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="199px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Password" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="193px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Copperplate Gothic Bold" ForeColor="#660033" Text="Login" Width="96px" OnClick="Button1_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
