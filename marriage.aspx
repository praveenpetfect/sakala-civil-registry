<%@ Page Language="C#" MasterPageFile="~/masterhome.master" AutoEventWireup="true" CodeFile="marriage.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 655px">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="Large" Text=" Application for registration of marriage"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="text-align: left">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 50px;">
                <asp:Label ID="Label2" runat="server" Text="Select Date of Registration" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="263px"></asp:Label></td>
            <td style="width: 100px; height: 50px;">
            <input id="Text1" name="txtBDOB" type="text" style="width: 101px" readonly="readOnly" />
                <a href="#" onclick="displayDatePicker('txtBDOB','','dmy');">
                <img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a><br />
                </td>
            <td style="width: 100px; height: 50px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="height: 479px">
                <table border="1">
                    <tr>
                        <td style="width: 100px">
                        </td>
                        <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="Husband / Bridegroom Detail" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="152px"></asp:Label></td>
                        <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Text="Wife / Bride Detail" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="133px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Text="Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtnam" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtnamewife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Text="Father Name" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtfath" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtfathwife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label7" runat="server" Text="Date of Birth" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">

                <input id="txtBDOB1" name="txtBDOB1" type="text" style="width: 101px" readonly="readOnly" />
                <a href="#" onclick="displayDatePicker('txtBDOB1','','dmy');">
                <img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a><br />
                (Must be 21 yrs old)</td>
                        <td style="width: 100px">
                             <input id="txtGDOB2" name="txtGDOB2" type="text" style="width: 96px" readonly="readOnly" />
                            <a href="#" onclick="displayDatePicker('txtGDOB2','','dmy');">
                            <img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a><br />
                (Must be 18 yrs old)</td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label8" runat="server" Text="Present Address" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="187px"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtpre" runat="server" TextMode="MultiLine" Width="146px"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtprewife" runat="server" TextMode="MultiLine" Width="147px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label9" runat="server" Text="Permanent Address   " Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="137px"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtper" runat="server" TextMode="MultiLine" Width="146px"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtperwife" runat="server" TextMode="MultiLine" Width="143px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label10" runat="server" Text="Adhar No." Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="158px"></asp:Label></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtvote" runat="server"></asp:TextBox></td>
                        <td style="width: 100px">
                <asp:TextBox ID="txtvotewife" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label11" runat="server" Text="Marital Status at the time of Marriage"
                    Width="251px" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium"></asp:Label></td>
                        <td style="width: 100px">
                <asp:DropDownList ID="dpdnmar" runat="server">
                    <asp:ListItem>Unmarried</asp:ListItem>
                    <asp:ListItem>Widower</asp:ListItem>
                    <asp:ListItem>Divorcee</asp:ListItem>
                </asp:DropDownList></td>
                        <td style="width: 100px">
                <asp:DropDownList ID="dpdnmarwife" runat="server">
                    <asp:ListItem>Unmarried</asp:ListItem>
                    <asp:ListItem>Widow</asp:ListItem>
                    <asp:ListItem>Divorcee</asp:ListItem>
                </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 100px">
                <asp:Label ID="Label12" runat="server" Text="Date of Solemnization of Marriage" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" Width="246px"></asp:Label></td>
                        <td style="width: 100px">
                            &nbsp; &nbsp;
                            <input id="txtMDate" name="txtMDate" type="text" style="width: 101px" readonly="readOnly" /><a href="#" onclick="displayDatePicker('txtMDate','','dmy');"><img src="images/calendar_view_day.png" alt="cal" style="border:none" /></a></td>
                        <td style="width: 100px">
                            &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; height: 28px">
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="Medium" Text=" Place  of Solemnization of Marriage" Width="237px"></asp:Label></td>
                        <td style="width: 100px; height: 28px">
                <asp:TextBox ID="txtsol" runat="server"></asp:TextBox></td>
                        <td style="width: 100px; height: 28px">
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 143px; font-weight: 700; font-family: 'Times New Roman', Times, serif; font-size: medium;" 
                align="left" valign="top">
                            Photo</td>
                        <td>
                            <asp:FileUpload ID="FUphoto" runat="server" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="FUphoto" 
                                ErrorMessage="Please upload image" ForeColor="Red" 
                                Font-Italic="True">*</asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td style="width: 100px">
                </td>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnapp" runat="server" Text="Submit Application" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Medium" OnClick="btnapp_Click" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <p class="standard">
                    &nbsp;</p>
                <p class="standard">
                    <strong>
                    IMPORTANT: The documents &amp; other requirement at the time of Marriage Registration
                    are as under: </strong>
                </p>
                <ol class="standard">
                    <li style="font-size: 11px; font-family: verdana"><strong>Residence proof. (Election I Card)
                        One Attested Photocopy along with original. </strong></li>
                    <li style="font-size: 11px; font-family: verdana"><strong>Date of Birth Proofs of both parties
                        (10th Class Certificate / Date of Birth certificate). One attested copies each along
                        with original. </strong></li>
                    <li style="font-size: 11px; font-family: verdana"><strong>Separate affidavit from Husband &amp;
                        Wife giving details of:<br />
                        &nbsp; &nbsp; &nbsp;1. Date &amp; Place of Marriage.<br />
                        &nbsp; &nbsp; &nbsp;2. Date of birth.<br />
                        &nbsp; &nbsp; &nbsp;3. Marital Status at the time of marriage.<br />
                        &nbsp; &nbsp; &nbsp;4. Affirmation that parties are not related to each other within
                        the prohibited
                        <br />
                        &nbsp; &nbsp; &nbsp; &nbsp; degree of relationship as per Hindu Marriage Act.<br />
                        &nbsp; &nbsp; &nbsp;5. Citizenship. </strong></li>
                    <li class="standard"><strong>Two Passport Size Photograph of Husband &amp; Two Passport Size
                        Photograph of Wife and ONE Photo of Marriage. All should be attested by Gazetted
                        Officer. </strong></li>
                    <li><strong>Marriage Invitation Card, if available. </strong></li>
                    <li style="font-size: 11px; font-family: verdana"><strong>Original copy of divorce decree/order
                        in case of a divorcee and death certificate of spouse in case of widow/widower </strong>
                    </li>
                    <li style="font-size: 11px; font-family: verdana"><strong>In case one of the parties belong
                        to other than Hindu, Budhist, Jain and Sikh religions, a conversion certificate
                        from the priest who solemnized the marriage(in case of Hindu Marriage Act). </strong>
                    </li>
                    <li style="font-size: 11px; font-family: verdana"><strong>In case of one of the applicant is
                        a foreign national, a NO OBJECTION CERTIFICATE in original from the concerned Hingh
                        Commission to be submitted along with the application form. </strong></li>
                    <li style="font-size: 11px; font-family: verdana"><strong>If marriage was solemnized in a religious
                        place, a certificate from the priest is required who solemnized the marriage. </strong></li>
                    <li><strong>One Gazetted Officer (Gazetted Officer should bring OFFICE SEAL and Office Identity
                        Card)</strong></li></ol>
                <p class="standard">
                    <strong>
                    NOTE : The Present Address of Husband OR Wife must be within the jurisdiction of
                    District IN Which You Are Applying.</strong></p>
                <div align="center">
                    &nbsp;</div>
            </td>
        </tr>
    </table>
</asp:Content>

