<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <table bgcolor="White" class="tbl-style">
        <tr class="tbl-header">
            <td align="left"  class="style4">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/web_img/registration.png" 
                    Width="50px" />
            </td>
            <td align="left" >
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                    Text="Customer Registration"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Customer
                Name</td>
            <td align="left">
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#FF3300" ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Gender</td>
            <td align="left">
                <asp:RadioButtonList ID="rbgender" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Profession</td>
            <td align="left">
                <asp:DropDownList ID="ddlprofession" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Teacher</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Engineer</asp:ListItem>
                    <asp:ListItem>Designer</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtocc" runat="server" Width="200px"></asp:TextBox>--%>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ddlocc" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="ddlocc" ErrorMessage="RegularExpressionValidator" 
                    ForeColor="#FF3300" ValidationExpression="[a-zA-Z ]*$">Must be in Alphabets</asp:RegularExpressionValidator>--%>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Address</td>
            <td align="left">
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtadd" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Mobile No.</td>
            <td align="left">
                <asp:TextBox ID="txtmob" runat="server" Width="200px" MaxLength="10"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtmob" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                    ValidationExpression="\d{10}">Must be proper format</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Qualification</td>
            <td align="left">
            <asp:DropDownList runat="server" ID="ddlocc">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>SSC</asp:ListItem>
                    <asp:ListItem>HSC</asp:ListItem>
                    <asp:ListItem>BSC</asp:ListItem>
                    <asp:ListItem>MSC</asp:ListItem>
                    <asp:ListItem>B.Com</asp:ListItem>
                    <asp:ListItem>M.com</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>MA</asp:ListItem>
                    <asp:ListItem>BE</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <%--<asp:TextBox ID="txtqua" runat="server" Width="200px"></asp:TextBox>--%>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Email ID</td>
            <td align="left">
                <asp:TextBox ID="txtemail" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" Display="Dynamic" 
                    ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Must be in Proper Format</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
            Driving Licence
            </td>
            <td align="left" class="style1">
            <asp:TextBox ID="txtdriving" runat="server" Width="200px" 
                    ontextchanged="txtdriving_TextChanged1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtdriving" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                

                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ErrorMessage="Enter Proper Format" ControlToValidate="txtdriving" 
                    ForeColor="#FF3300" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
                

            </td>
        </tr>
           <tr>
            <td align="left" class="style4">
           PanCard
            </td>
            <td align="left" class="style1">
            <asp:TextBox ID="txtpancard" runat="server" Width="200px"></asp:TextBox>
            </td>
            </tr>

               <tr>
            <td align="left" class="style4">
            Adhar Card
            </td>
            <td align="left" class="style1">
            <asp:TextBox ID="txtadharcard" runat="server" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Fill Up The Field" ControlToValidate="txtadharcard" 
                    ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="Enter Proper Format" ControlToValidate="txtadharcard" 
                    ForeColor="#FF3300" ValidationExpression="\d{12}"></asp:RegularExpressionValidator>
            </td>
            </tr>
               <tr>
            <td align="left" class="style4">
            Height
            </td>
            <td align="left" class="style1">
            <asp:TextBox ID="txtheight" runat="server" Width="200px"></asp:TextBox>
            </td>
            </tr>
                 <tr>
            <td align="left" class="style4">
            Weight
            </td>
            <td align="left" class="style1">
            <asp:TextBox ID="txtweight" runat="server" Width="200px"></asp:TextBox>
            </td>
            </tr>
               <tr>
            <td align="left" class="style4">
         Blood Group
            </td>
            <td align="left" class="style1">
                <asp:DropDownList ID="ddlbloodgrup" runat="server">
                    <asp:ListItem>Select </asp:ListItem>
                    <asp:ListItem>A+ve</asp:ListItem>
                    <asp:ListItem>B+ve</asp:ListItem>
                    <asp:ListItem>AB+ve</asp:ListItem>
                    <asp:ListItem>O+ve</asp:ListItem>
                    <asp:ListItem>A-ve</asp:ListItem>
                    <asp:ListItem>B-ve</asp:ListItem>
                    <asp:ListItem>AB-ve</asp:ListItem>
                    <asp:ListItem>O-ve</asp:ListItem>
                </asp:DropDownList>
            <%--<asp:TextBox ID="txtbloodgup" runat="server" Width="200px"></asp:TextBox>--%>
            </td>
            </tr>
               <tr>
            <td align="left" class="style4">
           Passport Number
            </td>
            <td align="left" class="style1">
            <asp:TextBox ID="txtpassport" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        </tr>
        </tr>
        </tr>
        </tr>
        <tr>
            <td align="left" class="style4" style="height: 28px">
                Username</td>
            <td align="left" class="style1" style="height: 28px">
                <asp:TextBox ID="txtuser" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtuser" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Password</td>
            <td align="left" class="style1">
                <asp:TextBox ID="txtpwd" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpwd" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                &nbsp;</td>
            <td align="left" class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style4">
                Choose Photo</td>
            <td align="left" class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                &nbsp;</td>
            <td align="left" class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style4">
            <a href="default.aspx">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/web_img/home.png" 
                    Width="50px" />
                    </a>
            </td>
            <td align="left" class="style1">
                <asp:Button ID="Button1" runat="server"  onclick="Button1_Click" Text="Submit" class="btn-style hvr-shrink" />
            </td>
           

        </tr>
        <tr>
            <td align="left" class="style4">
                &nbsp;</td>
            <td align="left" class="style1">
                <asp:HiddenField ID="hfid" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
                &nbsp;</td>
            <td align="left" class="style1">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#339933"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TRAVEL_RECConnectionString %>" 
                    DeleteCommand="DELETE FROM [Registration] WHERE [id] = @id" 
                    InsertCommand="INSERT INTO [Registration] ([id], [name], [gender], [occupation], [address], [mobile], [qua], [email], [username], [pwd], [photo]) VALUES (@id, @name, @gender, @occupation, @address, @mobile, @qua, @email, @username, @pwd, @photo)" 
                    SelectCommand="SELECT * FROM [Registration]" 
                    
                    
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
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

