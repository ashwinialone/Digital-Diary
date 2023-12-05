<%@ Page Title="" Language="C#" MasterPageFile="~/user/UserMasterPage.master" AutoEventWireup="true" CodeFile="upload_photo.aspx.cs" Inherits="user_upload_photo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="tbl-header">
<div class="inner-head">

<asp:Label ID="Label1" runat="server" Text="Upload Photo"></asp:Label>
</div>
</div>
</br>
 


        <asp:FileUpload ID="FileUpload1" runat="server" Height="37px" Width="265px"  />
        </br>
        
        <asp:Button ID="btnsubmit" runat="server"  onclick="btnsubmit_Click" 
                    Text="Submit" class="btn-style hvr-shrink" />
        <asp:Label ID="lblmsg" runat="server" ForeColor="#0000CC" Font-Bold="True"></asp:Label>
        </br>
</div>
</asp:Content>

