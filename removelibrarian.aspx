<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="removelibrarian.aspx.cs" Inherits="library.removelibrarian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .hf{
            background: rgba(0, 0, 0, 0.5);
        }
        .dropdownlist1 {
    background: rgba(0, 0, 0, 0.5);
    color:white;

}
        .textbox{
            background: rgba(0, 0, 0, 0.2);
    color:white;
        }
        .panel{
            background: rgba(0, 0, 0, 0.5);
            
        }
        </style>

</head>
<body style="height:657px; width:1366px;margin:0px;background-image:url('removelibrarian.png'); background-repeat:no-repeat; background-size:100% 100%;">
    <form id="form1" runat="server">
            <div style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;background: rgba(0, 0, 0, 0.5);position:sticky;">
                
                <asp:Button ID="home" runat="server" Text="HOME" style="border-style: none; border-color: inherit; border-width: medium; position:absolute; top: 8px; left: 514px; z-index:1000; color:white; height: 36px; width: 76px; font-size:18px; background:none; " OnClick="home_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logout.png" style="position:absolute; top: 7px; left: 1294px; z-index:1000; width: 36px;" OnClick="ImageButton1_Click" />
                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList1" runat="server" style="position:absolute; top: 12px; left: 600px; height: 29px; width: 111px; right: 383px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Librarian</asp:ListItem>
                    <asp:ListItem>Add Librarian</asp:ListItem>
                    <asp:ListItem>Remove Librarian</asp:ListItem>
                    <asp:ListItem>Update Librarian</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList2" runat="server" style="position:absolute; top: 12px; left: 741px; height: 29px; width: 125px; right: 226px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Issue Books</asp:ListItem>
                    <asp:ListItem>Issued Booklist</asp:ListItem>
                    
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList3" runat="server" style="position:absolute; top: 12px; left: 895px; height: 29px; width: 125px; right: 72px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Books</asp:ListItem>
                    <asp:ListItem>All Books</asp:ListItem>
                    <asp:ListItem>Available Books</asp:ListItem>
                    
                </asp:DropDownList>

          
            </div>
            
            <div class="hf" style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;position:absolute; width: 162px; margin-left: 657px; top: 53px; left: 0px;">
            <asp:Label ID="Label2" runat="server" style="position:absolute; top: 16px; left: 19px; height: 20px; width: 124px; z-index:1000;color:white; right: 19px;"></asp:Label>
            </div>
            <div class="hf" style="height: 53px;margin-top:0px;top:604px; margin-bottom:0px;z-index:1000;position:absolute; width: 100%; left: 0px;">
            <asp:Label ID="Label1" runat="server" style="position:absolute; top: 15px; left: 567px; height: 20px; width: 317px; z-index:1000;color:white; right: 482px;">Copyright ©️ DDN LIbrary. All Rights Reserved.</asp:Label>
            </div>
            
      <asp:Panel CssClass="panel" ID="Panel1" runat="server" style="position:absolute; top: 194px; left: 178px; width: 417px; height: 256px; border:solid black;">
          <asp:Label ID="Label3" runat="server" Text="REMOVE LIBRARIAN" style="color:white;position:absolute; top: 20px; left: 83px;" Font-Size="X-Large"></asp:Label>
          <asp:Button ID="submitbutton" runat="server" Text="SUBMIT" style="position:absolute; top: 185px; left: 168px;" OnClick="submitbutton_Click"/>
            <asp:Label ID="Label4" runat="server" Font-Size="Large" style="color:white;position:absolute; top: 87px; left: 47px; right: 233px;" Text="LIBRARIAN ID:"></asp:Label>
          <asp:Label ID="Label5" runat="server" Font-Size="Large" style="color:white;position:absolute; top: 137px; left: 44px; right: 202px;" Text="LIBRARIAN NAME:"></asp:Label>
          <asp:TextBox CssClass="textbox" ID="librarianid" runat="server" style="position:absolute; top: 86px; left: 220px;" ToolTip="Enter Librarian ID"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="librarianname" runat="server" style="position:absolute; top: 134px; left: 220px;" ToolTip="Enter Librarian name"></asp:TextBox>
            
            </asp:Panel>
            
      
        
            
      
        
    </form>
</body>
</html>