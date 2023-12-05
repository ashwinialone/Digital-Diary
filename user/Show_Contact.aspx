<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="Show_Contact.aspx.cs" Inherits="user_Show_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="Contact"></asp:Label>
</div>
</div>
</br>
</br>

    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Width="900px">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" Width="100%" 
            AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlData_Contact" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" Visible="False" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="mail" HeaderText="Email" SortExpression="mail" />
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" 
                    SortExpression="mobile" />
                <asp:BoundField DataField="altno" HeaderText="Alternate No" 
                    SortExpression="altno" />
                <asp:BoundField DataField="photo" HeaderText="Photo" SortExpression="photo" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <img src='photos/<%#Eval("photo") %>' width="100px" height="100px" style="border: thin solid #FFCC00" />
                        <br />
                        <%-- <a href='ViewProfile.aspx?id=<%#Eval("username") %>'>View</a>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                    ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlData_Contact" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DIGITAL_DIARYConnectionString %>" 
            DeleteCommand="DELETE FROM [contact] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [contact] ([name], [mail], [address], [mobile], [altno], [photo], [username) VALUES (@name, @mail, @address, @mobile, @altno, @photo, @username)" 
            SelectCommand="SELECT * FROM [contact] WHERE ([username] = @username) ORDER BY [id] DESC" 
            UpdateCommand="UPDATE [contact] SET [name] = @name, [mail] = @mail, [address] = @address, [mobile] = @mobile, [altno] = @altno, [photo] = @photo, [username] = @username WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="altno" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="mail" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="mobile" Type="String" />
                <asp:Parameter Name="altno" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Panel>
  </div>  
</asp:Content>

