<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function print_page()
         {
            window.print();
        }
    </script> 
    <style type="text/css">
        .style1
        {
            width: 76%;
            height: 61px;
            margin-left: 0px;
            margin-right: 0px;
        }
        .style2
        {
            width: 238px;
            text-align: left;
        }
        .style3
        {
        }
        .style4
        {
            font-size: medium;
        }
        .style7
        {
            height: 95px;
            width: 1223px;
        }
        .style8
        {
            font-size: x-small;
        }
        .style9
        {
            width: 277px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                
            </tr>
        </table>
      <div>
      <a href="#" onclick="javascript :print_page();"><strong><span class="style1">Click to Print</span></strong></a>
      </div>
        <br />
        <table class="style1" align="center">
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BIRTH CERTIFICATE</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Child Name:</td>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Father Name:</td>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Date of Birth</td>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Mother Name:</td>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Gender:</td>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Place of Birth:</td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="3">
                    This is to certify that the above information has been taken from the original 
                    record of birth<br />
                    which is the register of the State Governament. </td>
            </tr>
            <tr>
                <td class="style9">
                    Place</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    Date:&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style2">
                    &nbsp;</td>
               <td class="style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image3" runat="server" Height="95px" 
                        ImageUrl="~/images/qr.jpg" Width="96px" 
                        style="text-align: center" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td style="text-align: center" class="style8">
                    Signature is computer generated no need of any signature or seal</td>
            </tr>
        </table>
        <br /><div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#" onclick="javascript :print_page();"><strong><span class="style1">Click to Print</span></strong></a>
      </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
