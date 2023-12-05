<%@ Page Title="" Language="C#" MasterPageFile="~/MainAdmin/MainAdminMasterPage.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="MainAdmin_UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="User Details"></asp:Label>
</div>
</div>
</br>
</br>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="150px" Width="300px" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="occupation" HeaderText="occupation" 
                SortExpression="occupation" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
            <asp:BoundField DataField="qua" HeaderText="qua" SortExpression="qua" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo"  Visible="false"/>
              <asp:TemplateField HeaderText="Photo">
                            <ItemTemplate>
                                <img src="../user/photos/<%#Eval("photo") %>" width="100px" height="100px" style="border: thin solid #FFCC00" />
                                
                                
                            </ItemTemplate>

                        </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DIGITAL_DIARYConnectionString %>" 
        DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Registration] ([id], [name], [gender], [occupation], [address], [mobile], [qua], [email], [username], [pwd], [photo]) VALUES (@id, @name, @gender, @occupation, @address, @mobile, @qua, @email, @username, @pwd, @photo)" 
        SelectCommand="SELECT * FROM [Registration] WHERE ([id] = @id)" 
        UpdateCommand="UPDATE [Registration] SET [name] = @name, [gender] = @gender, [occupation] = @occupation, [address] = @address, [mobile] = @mobile, [qua] = @qua, [email] = @email, [username] = @username, [pwd] = @pwd, [photo] = @photo WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="qua" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="occupation" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="qua" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />

</div>
</asp:Content>

