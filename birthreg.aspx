<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="birthreg.aspx.cs" Inherits="Default3" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function Radio1_onclick() {

}

// ]]>
</script>

    <table style="width: 350px; height: 522px">
        <tr>
            <td align="center" colspan="2" style="height: 44px"><a name="pos1"></a>
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="X-Large" Text="Birth Registration"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="text-align: left">
                <asp:Label ID="lbl_msg" runat="server" ForeColor="Red" Text="Label" Visible="False" style="font-weight: bold; font-size: 12pt" Width="175px"  Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 46px;" valign="top">
                <asp:Label ID="Label1" runat="server" Text="Date of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td valign="top" style="height: 46px; width: 158px;">
                <input id="dob" name="dob" style="width: 70px" type="text" />
                <a href="#pos1" onclick="displayDatePicker('dob','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a>
                &nbsp;
                </td>
        </tr>
        <tr>
            <td style="width: 288px; height: 22px; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: 700;">
                Gender</td>
            <td style="width: 158px; height: 22px" valign="top">
                &nbsp;<asp:DropDownList ID="drop_sex" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 40px;" valign="top">
                <asp:Label ID="Label3" runat="server" Text="Name of child" Width="142px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 40px;" valign="top">
                <asp:TextBox ID="txtnameofchild" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 26px;">
                <asp:Label ID="Label4" runat="server" Text="Name of the father" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 26px;" valign="top">
                <asp:TextBox ID="txtnameoffather" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 26px;">
                <asp:Label ID="Label5" runat="server" Text="Name of the mother" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 26px;" valign="top">
                <asp:TextBox ID="txtnameofmother" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px">
                <asp:Label ID="Label6" runat="server" Text="Place of birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px" valign="top">
                <asp:TextBox ID="txtplaceofbirth" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px">
                <asp:Label ID="Label10" runat="server" Text="Name of town/village" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px" valign="top">
                <asp:TextBox ID="txtnameofvillage" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 40px;" valign="top">
                <asp:Label ID="Label11" runat="server" Text="Name of District" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 40px;" valign="top">
                <asp:TextBox ID="txtnameofdistrict" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 25px;" valign="top">
                <asp:Label ID="Label12" runat="server" Text="Name of state" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 158px; height: 25px;" valign="top">
                <asp:TextBox ID="txtnameofstate" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 40px" valign="top">
                &nbsp;</td>
            <td style="width: 158px; height: 40px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnsubmit_Click" 
                    style="text-align: left" /></td>
            <td style="width: 158px" valign="top">
                &nbsp;&nbsp;&nbsp; <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnreset_Click" /></td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 16px">
                &nbsp;</td>
            <td style="width: 158px; height: 16px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px">
                </td>
            <td style="width: 158px; height: 21px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 288px; height: 21px" align="right">
                &nbsp;</td>
            <td style="width: 158px; height: 21px" valign="top">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

