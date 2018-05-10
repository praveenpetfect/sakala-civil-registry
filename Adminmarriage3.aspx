<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminmarriage3.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="overflow:scroll; width:530px; height: 282px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="3"
        CellPadding="4" DataKeyNames="SlNo"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
         OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <AlternatingRowStyle BackColor="White" />
        <Columns>

       
                

           <asp:BoundField DataField="SlNo" HeaderText="SlNo" ReadOnly="True" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofregistration" HeaderText="Date of Registration"
                SortExpression="dateofregistration" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomname" HeaderText="Bridegroom's Name" SortExpression="bridegroomname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridename" HeaderText="Bride's Name" SortExpression="bridename" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomfathername" HeaderText="Bridegroom's Father's Name"
                SortExpression="bridegroomfathername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridefathername" HeaderText="Bride's Father Name" SortExpression="bridefathername" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomdateofbirth" HeaderText="Bridegroom's Date of Birth"
                SortExpression="bridegroomdateofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridedateofbirth" HeaderText="Bride's Date of Birth" SortExpression="bridedateofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroompresentaddr" HeaderText="Bridegroom's Present Address"
                SortExpression="bridegroompresentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridepresentaddr" HeaderText="Bride's Present Address"
                SortExpression="bridepresentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroompermanentaddr" HeaderText="Bridegroom's Permanent Address"
                SortExpression="bridegroompermanentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridepermanentaddr" HeaderText="Bride's Permanent Address"
                SortExpression="bridepermanentaddr" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroomvoterno" HeaderText="Bridegroom's Voter no"
                SortExpression="bridegroomvoterno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridevoterno" HeaderText="Bride's Voter no" SortExpression="bridevoterno" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridegroommaritalstatus" HeaderText="Bridegroom's Marital Status"
                SortExpression="bridegroommaritalstatus" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="bridemaritalstatus" HeaderText="Bride's Marital Status"
                SortExpression="bridemaritalstatus" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dateofmarriage" HeaderText="Date of Marriage" SortExpression="dateofmarriage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofmarriage" HeaderText="Place of Marriage" SortExpression="placeofmarriage" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>

             <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.PNG"
                EditImageUrl="~/images/busreport.PNG" HeaderText="Edit" ShowEditButton="True"
                UpdateImageUrl="~/images/save.PNG" SelectText="" />
            
            <asp:HyperLinkField NavigateUrl="~/printmarriage.aspx" Text="Generate" />

            
            
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>



<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True"
         SelectCommand="SELECT [SlNo], [dateofregistration], [bridegroomname], [bridename], [bridegroomfathername], [bridefathername], [bridegroomdateofbirth], [bridedateofbirth], [bridegroompresentaddr], [bridepresentaddr],
         [bridegroompermanentaddr], [bridepermanentaddr],[bridegroomvoterno], [bridevoterno], [bridegroommaritalstatus], [bridemaritalstatus], [dateofmarriage], [placeofmarriage] FROM [marriage3]"
         UpdateCommand="UPDATE [marriage3] SET [bridegroomname] = @bridegroomname, [bridename] = @bridename, [bridegroomfathername] = @bridegroomfathername, [bridefathername] = @bridefathername, [placeofmarriage] = @placeofmarriage, WHERE [SlNo] = @SlNo">
        <InsertParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="dateofregistration" Type="String" />
            <asp:Parameter Name="bridegroomname" Type="String" />
            <asp:Parameter Name="bridename" Type="String" />
            <asp:Parameter Name="bridegroomfathername" Type="String" />
            <asp:Parameter Name="bridefathername" Type="String" />
            <asp:Parameter Name="bridegroomdateofbirth" Type="String" />
            
            <asp:Parameter Name="bridedateofbirth" Type="String" />
            <asp:Parameter Name="bridegroompresentaddr" Type="String" />
            <asp:Parameter Name="bridepresentaddr" Type="String" />
            
             <asp:Parameter Name="bridegroompermanentaddr" Type="String" />
              <asp:Parameter Name="bridepermanentaddr" Type="String" />
               <asp:Parameter Name="bridegroomvoterno" Type="String" />
                <asp:Parameter Name="bridevoterno" Type="String" />
                 <asp:Parameter Name="bridegroommaritalstatus" Type="String" />
                  <asp:Parameter Name="bridemaritalstatus" Type="String" />
                   <asp:Parameter Name="dateofmarriage" Type="String" />
                    <asp:Parameter Name="placeofmarriage" Type="String" />
            
           
            
           
        </InsertParameters>
        <UpdateParameters>
             
            <asp:Parameter Name="bridegroomname" Type="String" />
            <asp:Parameter Name="bridename" Type="String" />
            <asp:Parameter Name="bridegroomfathername" Type="String" />
            <asp:Parameter Name="bridefathername" Type="String" />
            
                    <asp:Parameter Name="placeofmarriage" Type="String" />
           
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
        </DeleteParameters>
        
    </asp:SqlDataSource>
    
    </div>
</asp:Content>

