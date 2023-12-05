<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="AddContact.aspx.cs" Inherits="user_AddContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>
</div>
</div>
</br>
</br>
<div style="float:left">
    <table bgcolor="White" class="tbl-style">
        
        <tr>
            <td align="left" class="style4">
                Person Name</td>
            <td align="left">
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                
            </td>
        </tr>
         <tr>
            <td align="left" class="style4">
                Email Id</td>
            <td align="left">
                <asp:TextBox ID="txtmail" runat="server" Width="200px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmail" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="RegularExpressionValidator" ControlToValidate="txtmail" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Fill Up Proper</asp:RegularExpressionValidator>
            </td>
        </tr>
      
        <tr>
            <td align="left" class="style4">
                Address</td>
            <td align="left">
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtadd" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td align="left" class="style4">
              Mobile</td>
            <td align="left" class="style1">
                 <asp:TextBox ID="txtmobile" runat="server" Width="200px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtmobile" Display="Dynamic" 
                    ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" 
                    SetFocusOnError="True">Fill Up The Field</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                     ErrorMessage="RegularExpressionValidator" ControlToValidate="txtmobile" 
                     Display="Dynamic" ForeColor="#FF3300" ValidationExpression="\d{10}">Enter valid no.</asp:RegularExpressionValidator>
                     </td>
        </tr>
        <tr>
            <td align="left" class="style4">
               Alternet Number</td>
            <td align="left" class="style1">
                 <asp:TextBox ID="txtalternet" runat="server" Width="200px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                     ErrorMessage="RegularExpressionValidator" ControlToValidate="txtalternet" 
                     Display="Dynamic" ForeColor="#FF3300" ValidationExpression="\d{10}">Enter valid no.</asp:RegularExpressionValidator>
                 
                 </td>
        </tr>
          <tr>
            <td align="left" class="style4">
            Photo
            </td>
            <td align="left" class="style1">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                
            </td>
           

        </tr>
        <tr>
            <td align="left" class="style4">
         
            </td>
            <td align="left" class="style1">
                <asp:Button ID="btnsubmit" runat="server"  onclick="btnsubmit_Click" 
                    Text="Submit" class="btn-style hvr-shrink" />
            </td>
           

        </tr>
   
        <tr>
            <td align="left" class="style4">
                &nbsp;</td>
            <td align="left" class="style1">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#339933"></asp:Label>
                
            </td>
        </tr>
    </table>
    </div>
       
<div style="clear:both">
</br>
<hr color="orange" />
</div>


</div>
</asp:Content>

