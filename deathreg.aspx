<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="deathreg.aspx.cs" Inherits="Default4" Title="Death Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
    <table id="TABLE1" style="width: 669px" onclick="return TABLE1_onclick()">
        <tr>
            <td colspan="2" style="height: 26px" align="center">
                <asp:Label ID="Label17" runat="server" Style="text-align: center" Text="Death Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large"></asp:Label></td>
            <td align="center" colspan="1" style="height: 26px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 26px">
            </td>
            <td align="center" colspan="1" style="height: 26px">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 26px; text-align: left;">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label></td>
            <td align="center" colspan="1" style="height: 26px; text-align: left">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 2px;" valign="top">
                <asp:Label ID="Label1" runat="server" Text="Date of death" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="119px"></asp:Label></td>
            <td style="width: 3px; height: 2px;" valign="top">
                <table style="width: 84px">
                    <tr>
                        <td style="width: 100px; height: 44px;">
                            <input id="dob" name="dob" style="width: 143px" type="text" />&nbsp;
                &nbsp;
                        <td style="width: 2544px; height: 44px;" valign="top">
                            <a href="#" onclick="displayDatePicker('dob','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a></td>
                    </tr>
                </table>
                
                
                
            </td>
            <td style="width: 3px; height: 2px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 26px;">
                <asp:Label ID="Label3" runat="server" Text="Name" Width="204px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px; height: 26px;">
                <asp:TextBox ID="txtdeceased" runat="server"></asp:TextBox></td>
            <td style="width: 3px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 26px;">
                <asp:Label ID="Label2" runat="server" Text="Father's/husband's name" Width="225px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px; height: 26px;">
                <asp:TextBox ID="txtrelativename" runat="server"></asp:TextBox></td>
            <td style="width: 3px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 1px;" valign="top">
                <asp:Label ID="Label4" runat="server" Text="Gender" Width="212px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px; height: 1px;">
                <table style="width: 154px">
                    <tr style="width:300px; ">
                        <td style="width:100px;"><asp:RadioButton id="rtbnmale" runat="server" Text="Male" GroupName="sex" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Checked="True"></asp:RadioButton></td>
                        <td style="width:100px;"><asp:RadioButton id="rbtnfemale" runat="server" Text="Female" Height="20px" Width="78px" GroupName="sex" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:RadioButton></td>
                    </tr>
                </table>               
                </td>
            <td style="width: 3px; height: 1px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 21px">
                <asp:Label ID="Label5" runat="server" Text="Age" Width="202px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px; height: 21px">
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox></td>
            <td style="width: 3px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 24px;">
                <asp:Label ID="Label6" runat="server" Text="Place of death" Width="200px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px; height: 24px;">
                <asp:TextBox ID="txtdeathplace" runat="server"></asp:TextBox></td>
            <td style="width: 3px; height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 26px;">
                <asp:Label ID="Label9" runat="server" Text="Name of town/village" Width="165px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px; height: 26px;">
                <asp:TextBox ID="txttown" runat="server"></asp:TextBox></td>
            <td style="width: 3px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px">
                <asp:Label ID="Label10" runat="server" Text="Name of District" Width="189px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px">
                <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px">
                <asp:Label ID="Label11" runat="server" Text="Name of state" Width="173px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
            <td style="width: 3px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 26px">
                &nbsp;</td>
            <td style="width: 3px; height: 26px">
                &nbsp;</td>
            <td style="width: 3px; height: 26px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px">
                &nbsp;</td>
            <td style="width: 3px">
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnsubmit_Click" /></td>
            <td style="width: 3px">
                            <asp:Button ID="btnreset" runat="server" Text="Reset" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnreset_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 34px">
                &nbsp;</td>
            <td style="width: 3px">
                &nbsp;</td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 10px;">
                &nbsp;</td>
            <td style="width: 3px; height: 10px;">
                &nbsp;</td>
            <td style="width: 3px; height: 10px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 17px">
                &nbsp;</td>
            <td style="width: 3px; height: 17px">
                &nbsp;</td>
            <td style="width: 3px; height: 17px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 8px" valign="top">
                &nbsp;</td>
            <td style="width: 3px; height: 8px" valign="top">
                
                <table style="width: 156px">
                    <tr style="height:30px">
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td style="width: 100px">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td style="width: 3px; height: 8px" valign="top">
            </td>
        </tr>
        <tr>
            <td style="width: 34px">
                &nbsp;</td>
            <td style="width: 3px">
                &nbsp;</td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px">
            </td>
            <td style="width: 3px">
            </td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr>
            <td style="width: 34px; height: 26px;" align="right">
                &nbsp;</td>
            <td style="width: 3px; height: 26px;" align="right">
                            &nbsp;</td>
            <td align="right" style="width: 3px; height: 26px">
                            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

