<%@ Page Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminBirth.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
<div style="overflow:scroll; width:530px; height: 282px;">
    &nbsp;
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellSpacing="3"
        CellPadding="4" DataKeyNames="SlNo"
        DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."
         OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" 
        OnRowUpdating="GridView1_RowUpdating" ForeColor="#333333" GridLines="None">
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <Columns>
            <asp:BoundField DataField="SlNo" HeaderText="SlNo" ReadOnly="True" SortExpression="SlNo" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="sex" HeaderText="Sex" SortExpression="sex" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="nameofchild" HeaderText="Name of Child" SortExpression="nameofchild" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="fatherssname" HeaderText="Father's Name" SortExpression="fatherssname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="mothersname" HeaderText="Mother's Name" SortExpression="mothersname" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="placeofbirth" HeaderText="Place of Birth" SortExpression="placeofbirth" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            
            <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                <HeaderStyle Wrap="False" />
            </asp:BoundField>
             
            <asp:CommandField ButtonType="Image" CancelImageUrl="~/images/cancel.png" DeleteImageUrl="~/images/delete.PNG"
                EditImageUrl="~/images/busreport.PNG" HeaderText="Edit" ShowEditButton="True"
                UpdateImageUrl="~/images/save.PNG" SelectText="" />
            
            
            <asp:HyperLinkField AccessibleHeaderText="Generate" 
                NavigateUrl="~/printbirth.aspx" Text="Generate" />
            
            
        </Columns>
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle Wrap="False" BackColor="White" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\admin\Documents\sakala\project\App_Data\BIRTH.mdf;Integrated Security=True;User Instance=True"
         DeleteCommand="DELETE FROM [birthreg] WHERE [SlNo] = @SlNo" InsertCommand="INSERT INTO [birthreg] ([SlNo], [dob], [sex], [nameofchild], [fatherssname], [mothersname], [placeofbirth], [nameoftownvillage], [district], [state]) VALUES (@SlNo, @dob, @sex, @nameofchild, @fatherssname, @mothersname, @placeofbirth, @column1, @district, @state)"
        ProviderName="System.Data.SqlClient" SelectCommand="SELECT [SlNo], [dob], [sex], [nameofchild], [fatherssname], [mothersname], [placeofbirth], [nameoftownvillage] AS column1, [district], [state] FROM [birthreg]"
         UpdateCommand="UPDATE [birthreg] SET [dob] = @dob, [sex] = @sex, [nameofchild] = @nameofchild, [fatherssname] = @fatherssname, [mothersname] = @mothersname, [placeofbirth] = @placeofbirth, [nameoftownvillage] = @column1, [district] = @district, [state] = @state, WHERE [SlNo] = @SlNo">
        <InsertParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="nameofchild" Type="String" />
            <asp:Parameter Name="fatherssname" Type="String" />
            <asp:Parameter Name="mothersname" Type="String" />
            <asp:Parameter Name="placeofbirth" Type="String" />
            
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
           
            
           
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
            <asp:Parameter Name="dob" Type="String" />
            <asp:Parameter Name="sex" Type="String" />
            <asp:Parameter Name="nameofchild" Type="String" />
            <asp:Parameter Name="fatherssname" Type="String" />
            <asp:Parameter Name="mothersname" Type="String" />
            <asp:Parameter Name="placeofbirth" Type="String" />
            
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="district" Type="String" />
            <asp:Parameter Name="state" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="SlNo" Type="Int32" />
        </DeleteParameters>
        
    </asp:SqlDataSource>


</div>

</asp:Content>

