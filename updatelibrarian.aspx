<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatelibrarian.aspx.cs" Inherits="library.updatelibrarian" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> </title>
     <style>
        .hf{
            background: rgba(0, 0, 0, 0.5);
        }
        .dropdownlist1 {
    background: rgba(0, 0, 0, 0.5);
    color:white;

}
        .textbox{
            background: rgba(0, 0, 0, 0.5);
    color:white;
        }

        .panel{
            background: rgba(0, 0, 0, 0.5);
            color:white;
        }
        </style>
</head>
<body style="height:657px; width:1366px;margin:0px;background-image:url('updatelibrarian.jpg'); background-repeat:no-repeat; background-size:100% 100%;">
    <form id="form1" runat="server">
            <div style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;background: rgba(0, 0, 0, 0.5);position:sticky;">
                
                <asp:Button ID="home" runat="server" Text="HOME" style="border-style: none; border-color: inherit; border-width: medium; position:absolute; top: 8px; left: 514px; z-index:1000; color:white; height: 36px; width: 76px; font-size:18px; background:none; " OnClick="home_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logout.png" style="position:absolute; top: 7px; left: 1294px; z-index:1000; height: 36px; width: 36px;" OnClick="ImageButton1_Click" />
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

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList3" runat="server" style="position:absolute; top: 12px; left: 895px; height: 29px; width: 125px; right: -61px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
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
        <asp:Panel CssClass="panel" ID="Panel1" runat="server" style="position:absolute; top: 122px; left: 196px; width: 417px; height: 437px;border:solid black;">
          <asp:Label ID="Label3" runat="server" Text="UPDATE LIBRARIAN" style="position:absolute; top: 24px; left: 124px;" Font-Size="X-Large"></asp:Label>
          <asp:Button ID="submitbutton" runat="server" Text="SUBMIT" style="position:absolute; top: 354px; left: 170px;" OnClick="submitbutton_Click" />
            <asp:Label ID="Label4" runat="server" Font-Size="Large" style="position:absolute; top: 67px; left: 60px; right: 229px;" Text="LIBRARIAN ID:"></asp:Label>
          <asp:Label ID="Label5" runat="server" Font-Size="Large" style="position:absolute; top: 137px; left: 59px; right: 195px;" Text="LIBRARIAN NAME:"></asp:Label>
          <asp:Label ID="Label6" runat="server" Font-Size="Large" style="position:absolute; top: 190px; left: 59px; right: 219px;" Text="CONTACT NO:"></asp:Label>
          <asp:Label ID="Label7" runat="server" Font-Size="Large" style="position:absolute; top: 247px; left: 61px; right: 218px;" Text="EMAIL ID:"></asp:Label>
          <asp:Label ID="Label8" runat="server" Font-Size="Large" style="position:absolute; top: 309px; left: 60px; right: 233px;" Text="ADDRESS:"></asp:Label>

          <asp:TextBox CssClass="textbox" ID="librarianid" runat="server" style="position:absolute; top: 66px; left: 230px;" ToolTip="Enter Librarian Id"></asp:TextBox>
            <asp:TextBox CssClass="textbox"  ID="librarianname" runat="server" style="position:absolute; top: 136px; left: 230px;" ToolTip="Enter Librarian name"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="contactno" runat="server" style="position:absolute; top: 190px; left: 230px;" ToolTip="Enter Contact no"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="emailid" runat="server" style="position:absolute; top: 246px; left: 229px;" ToolTip="Enter email Id"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="address" runat="server" style="position:absolute; top: 308px; left: 228px;" ToolTip="Enter address"></asp:TextBox>
          
            <asp:Button ID="check" runat="server" OnClick="check_Click" style="position:absolute; top: 98px; left: 170px;" Text="SUBMIT" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [librarian]"></asp:SqlDataSource>
          
            </asp:Panel>
            
      
        
            
      
        
    </form>
</body>
</html>
