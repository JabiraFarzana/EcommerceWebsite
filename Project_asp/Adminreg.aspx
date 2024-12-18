<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminreg.aspx.cs" Inherits="Project_asp.Adminreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
        width: 167px;
    }
        .auto-style3 {
            height: 32px;
            width: 167px;
        }
        .auto-style24 {
            width: 167px;
            height: 55px;
        }
        .auto-style27 {
            height: 55px;
        }
        .auto-style32 {
            width: 167px;
            height: 52px;
        }
        .auto-style35 {
            height: 52px;
        }
        .auto-style36 {
            width: 167px;
            height: 49px;
        }
        .auto-style39 {
            height: 49px;
        }
        .auto-style40 {
            width: 167px;
            height: 46px;
        }
        .auto-style43 {
            height: 46px;
        }
        .auto-style44 {
            width: 167px;
            height: 51px;
        }
        .auto-style47 {
            height: 51px;
        }
        .auto-style48 {
            height: 34px;
            width: 167px;
        }
        .auto-style51 {
            height: 34px;
        }
        .auto-style52 {
            margin-top: 13;
        }
        .auto-style53 {
            width: 106px;
        }
        .auto-style54 {
            height: 51px;
            width: 106px;
        }
        .auto-style55 {
            height: 46px;
            width: 106px;
        }
        .auto-style56 {
            height: 32px;
            width: 106px;
        }
        .auto-style57 {
            height: 49px;
            width: 106px;
        }
        .auto-style58 {
            height: 52px;
            width: 106px;
        }
        .auto-style59 {
            height: 55px;
            width: 106px;
        }
        .auto-style60 {
            height: 34px;
            width: 106px;
        }
        .auto-style61 {
            width: 236px;
        }
        .auto-style62 {
            width: 236px;
            height: 51px;
        }
        .auto-style63 {
            width: 236px;
            height: 46px;
        }
        .auto-style64 {
            height: 32px;
            width: 236px;
        }
        .auto-style65 {
            width: 236px;
            height: 49px;
        }
        .auto-style66 {
            width: 236px;
            height: 52px;
        }
        .auto-style67 {
            width: 236px;
            height: 55px;
        }
        .auto-style68 {
            height: 34px;
            width: 236px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#CC3300" Text="ADMIN"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="X-Large" Font-Underline="True" ForeColor="#CC3300" Text="   REGISTRATION"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style44"></td>
            <td class="auto-style62">
                <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style54"></td>
            <td class="auto-style47">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style47">
                &nbsp;</td>
            <td class="auto-style47"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the name" ControlToValidate="TextBox1" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40"></td>
            <td class="auto-style63">
                <asp:Label ID="Label2" runat="server" Text="Email" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style55"></td>
            <td class="auto-style43">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style43"></td>
            <td class="auto-style43"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style64"></td>
            <td class="auto-style56"></td>
            <td class="auto-style1">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email" ControlToValidate="TextBox2" Font-Italic="True" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style36"></td>
            <td class="auto-style65">
                <asp:Label ID="Label3" runat="server" Text="Address" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style57"></td>
            <td class="auto-style39">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style39"></td>
            <td class="auto-style39"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the address" ControlToValidate="TextBox3" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32"></td>
            <td class="auto-style66">
                <asp:Label ID="Label4" runat="server" Text="Phone no" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style58"></td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style35"></td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter valid phone number" ControlToValidate="TextBox4" Font-Italic="True" ForeColor="#FF6600" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style67">
                <asp:Label ID="Label5" runat="server" Text="Username" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style59"></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style27"></td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter the username" ControlToValidate="TextBox5" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style48"></td>
            <td class="auto-style68">
                <asp:Label ID="Label6" runat="server" Text="Password" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style60"></td>
            <td class="auto-style51">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style51"></td>
            <td class="auto-style51"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">
                <asp:Label ID="Label7" runat="server" Text="Confirm Password" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
            <td class="auto-style53">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password mismatch" ControlToCompare="TextBox6" ControlToValidate="TextBox7" Font-Italic="True" ForeColor="#FF6600"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style61">&nbsp;</td>
            <td class="auto-style53">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" ForeColor="#FF6600" Height="52px" Width="182px" CssClass="auto-style52" Font-Bold="True" Font-Italic="True" Font-Size="Large" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
