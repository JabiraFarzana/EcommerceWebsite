<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userreg.aspx.cs" Inherits="Project_asp.Userreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
        height: 440px;
    }
    .auto-style4 {
        height: 22px;
    }
    .auto-style6 {
        width: 150px;
    }
    .auto-style9 {
        height: 22px;
        width: 150px;
    }
    .auto-style10 {
        width: 352px;
    }
    .auto-style13 {
        height: 22px;
        width: 352px;
    }
    .auto-style14 {
        width: 150px;
        height: 36px;
    }
    .auto-style15 {
        width: 352px;
        height: 36px;
    }
    .auto-style16 {
        height: 36px;
    }
        .auto-style17 {
            width: 150px;
            height: 32px;
        }
        .auto-style18 {
            width: 352px;
            height: 32px;
        }
        .auto-style19 {
            height: 32px;
        }
    .auto-style20 {
        height: 18px;
        width: 150px;
    }
    .auto-style21 {
        height: 18px;
        width: 352px;
    }
    .auto-style22 {
        height: 18px;
    }
    .auto-style23 {
        height: 20px;
        width: 150px;
    }
    .auto-style24 {
        height: 20px;
        width: 352px;
    }
    .auto-style25 {
        height: 20px;
    }
    .auto-style29 {
        height: 17px;
        width: 150px;
    }
    .auto-style30 {
        height: 17px;
        width: 352px;
    }
    .auto-style31 {
        height: 17px;
    }
    .auto-style32 {
        width: 150px;
        height: 2px;
    }
    .auto-style33 {
        width: 352px;
        height: 2px;
    }
    .auto-style34 {
        height: 2px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">
                &nbsp;</td>
        <td>
            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#FF3300" Text="REGISTRATION"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter the Name" ForeColor="#FF6600" Font-Italic="True"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">
                <asp:Label ID="Label3" runat="server" Text="Address" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">
            </td>
        <td class="auto-style18"></td>
        <td class="auto-style19">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter The Address" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style19"></td>
        <td class="auto-style19"></td>
        <td class="auto-style19"></td>
        <td class="auto-style19"></td>
    </tr>
    <tr>
        <td class="auto-style23">
            </td>
        <td class="auto-style24">
                <asp:Label ID="Label4" runat="server" Text="Phone no" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td class="auto-style25">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style25">
            </td>
        <td class="auto-style25"></td>
        <td class="auto-style25"></td>
        <td class="auto-style25"></td>
    </tr>
    <tr>
        <td class="auto-style6">
            </td>
        <td class="auto-style10"></td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Phone Number" ValidationExpression="^[789]\d{9}$" Font-Italic="True" ForeColor="#FF6600"></asp:RegularExpressionValidator>
            </td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style14">
            </td>
        <td class="auto-style15">
                <asp:Label ID="Label5" runat="server" Text="Pincode" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style16"></td>
        <td class="auto-style16"></td>
        <td class="auto-style16"></td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style6">
            </td>
        <td class="auto-style10"></td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter a valid Pincode" ValidationExpression="^[1-9][0-9]{5}$" Font-Italic="True" ForeColor="#FF6600"></asp:RegularExpressionValidator>
            </td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style20">
            </td>
        <td class="auto-style21">
                <asp:Label ID="Label6" runat="server" Text="State" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td class="auto-style22">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Kerala</asp:ListItem>
                <asp:ListItem>Tamilnadu</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
        <td class="auto-style22"></td>
    </tr>
    <tr>
        <td class="auto-style9">
            </td>
        <td class="auto-style13"></td>
        <td class="auto-style4">
            </td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style29">
            </td>
        <td class="auto-style30">
                <asp:Label ID="Label7" runat="server" Text="District" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td class="auto-style31">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Ernakulam</asp:ListItem>
                <asp:ListItem>Alappuzha</asp:ListItem>
                <asp:ListItem>Thrissur</asp:ListItem>
                <asp:ListItem>Idukki</asp:ListItem>
                <asp:ListItem>Trivandrum</asp:ListItem>
                <asp:ListItem>Kollam</asp:ListItem>
                <asp:ListItem>Kottayam</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="auto-style31">
            </td>
        <td class="auto-style31"></td>
        <td class="auto-style31"></td>
        <td class="auto-style31"></td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style32">
            </td>
        <td class="auto-style33">
                <asp:Label ID="Label8" runat="server" Text="Email" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td class="auto-style34">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style34">
            </td>
        <td class="auto-style34"></td>
        <td class="auto-style34"></td>
        <td class="auto-style34"></td>
    </tr>
    <tr>
        <td class="auto-style6">
            </td>
        <td class="auto-style10"></td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please enter a valid Email" Font-Italic="True" ForeColor="#FF6600" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">
                <asp:Label ID="Label9" runat="server" Text="Username" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox8" ErrorMessage="Please Enter The Username" Font-Italic="True" ForeColor="#FF6600"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
            </td>
        <td class="auto-style15">
                <asp:Label ID="Label10" runat="server" Text="Password" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td class="auto-style16">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style16">
            &nbsp;</td>
        <td class="auto-style16"></td>
        <td class="auto-style16"></td>
        <td class="auto-style16"></td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">
                <asp:Label ID="Label11" runat="server" Text="Confirm Password" Font-Bold="True" Font-Italic="True" Font-Names="Calisto MT" Font-Size="Large" ForeColor="#660033"></asp:Label>
            </td>
        <td>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" ErrorMessage="Password Mismatch" Font-Italic="True" ForeColor="#FF6600"></asp:CompareValidator>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="offset-sm-0" Font-Bold="True" Font-Italic="False" Font-Size="Large" ForeColor="#FF6600" Height="57px" Width="170px" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            <asp:Label ID="Label13" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
