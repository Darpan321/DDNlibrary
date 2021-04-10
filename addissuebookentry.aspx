<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addissuebookentry.aspx.cs" Inherits="library.issuebook" %>

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
            background: rgba(0, 0, 0, 0.5);
    color:white;
        }
        .panel{
            background: rgba(0, 0, 0,0.7);
    color:white;
        }
        </style>
</head>
<body style="height:657px; width:1366px;margin:0px;background-image:url('issuebookup.png'); background-repeat:no-repeat; background-size:100% 100%;">
    <form id="form1" runat="server">
            <div style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;background: rgba(0, 0, 0, 0.5);position:sticky;">
                
                <asp:Button ID="home" runat="server" Text="HOME" style="border-style: none; border-color: inherit; border-width: medium; position:absolute; top: 8px; left: 514px; z-index:1000; color:white; height: 36px; width: 76px; font-size:18px; background:none; " OnClick="home_Click" />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/logout.png" style="position:absolute; top: 7px; left: 1294px; z-index:1000; height: 36px; width: 36px;" OnClick="ImageButton1_Click" />
                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList1" runat="server" style="position:absolute; top: 12px; left: 600px; height: 29px; width: 111px; right: 383px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Books</asp:ListItem>
                    <asp:ListItem>Add Books</asp:ListItem>
                    <asp:ListItem>Remove Books</asp:ListItem>
                    <asp:ListItem>Update Books</asp:ListItem>
                    <asp:ListItem>Available Books</asp:ListItem>
                    <asp:ListItem>All Books</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList2" runat="server" style="position:absolute; top: 12px; left: 741px; height: 29px; width: 125px; right: 226px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Issue Books</asp:ListItem>
                    <asp:ListItem>Add issue Book</asp:ListItem>
                    <asp:ListItem>Issued Booklist</asp:ListItem>
                    
                </asp:DropDownList>

                <asp:DropDownList CssClass="dropdownlist1" ID="DropDownList3" runat="server" style="position:absolute; top: 12px; left: 895px; height: 29px; width: 125px; right: 72px;" Font-Size="Large" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>Return Books</asp:ListItem>
                    <asp:ListItem>Add return Book</asp:ListItem>
                    <asp:ListItem>Return Booklist</asp:ListItem>
                    
                </asp:DropDownList>
          
            </div>
            
            <div class="hf" style="height: 53px;margin-top:0px;margin-bottom:0px;z-index:1000;position:absolute; width: 162px; margin-left: 657px; top: 53px; left: 0px;">
            <asp:Label ID="Label2" runat="server" style="position:absolute; top: 16px; left: 19px; height: 20px; width: 124px; z-index:1000;color:white; right: 19px;"></asp:Label>
            </div>
            <div class="hf" style="height: 53px;margin-top:0px;top:604px; margin-bottom:0px;z-index:1000;position:absolute; width: 100%; left: 0px;">
            <asp:Label ID="Label1" runat="server" style="position:absolute; top: 15px; left: 567px; height: 20px; width: 317px; z-index:1000;color:white; right: 482px;">Copyright ©️ DDN LIbrary. All Rights Reserved.</asp:Label>
            </div>
            
      <asp:Panel CssClass="panel" ID="Panel1" runat="server" style="position:absolute; top: 127px; left: 292px; width: 834px; height: 437px;border:solid black;">
          <asp:Label ID="Label3" runat="server" Text="ISSUE BOOKS" style="position:absolute; top: 20px; left: 362px;" Font-Size="X-Large"></asp:Label>
          <asp:Button ID="submitbutton" runat="server" Text="SUBMIT" style="position:absolute; top: 390px; left: 570px; height: 26px;" OnClick="submitbutton_Click" />
            <asp:Label ID="Label4" runat="server" Font-Size="Large" style="position:absolute; top: 87px; left: 60px; right: 623px;" Text="BOOK ID:"></asp:Label>
          <asp:Label ID="Label5" runat="server" Font-Size="Large" style="position:absolute; top: 198px; left: 59px; right: 621px;" Text="BOOK NAME:"></asp:Label>
          <asp:Label ID="Label6" runat="server" Font-Size="Large" style="position:absolute; top: 241px; left: 59px; right: 620px;" Text="AUTHOR NAME:"></asp:Label>
          <asp:Label ID="Label8" runat="server" Font-Size="Large" style="position:absolute; top: 330px; left: 60px; right: 629px;" Text="BOOK TYPE:"></asp:Label>
          <asp:TextBox ID="bookid" runat="server" CssClass="textbox" style="position:absolute; top: 86px; left: 230px;" ToolTip="Enter Book ID"></asp:TextBox>
          <asp:TextBox ID="bookname" runat="server" CssClass="textbox" style="position:absolute; top: 197px; left: 230px;" ToolTip="Enter Book name"></asp:TextBox>
          <asp:TextBox ID="authorname" runat="server" CssClass="textbox" style="position:absolute; top: 241px; left: 230px;" ToolTip="Enter Author name"></asp:TextBox>
          <asp:TextBox ID="isbnnumber" runat="server" CssClass="textbox" style="position:absolute; top: 286px; left: 229px;" ToolTip="Enter ISBN number"></asp:TextBox>
          <asp:TextBox ID="booktype" runat="server" CssClass="textbox" style="position:absolute; top: 329px; left: 228px;" ToolTip="Enter Book Type"></asp:TextBox>
          <asp:TextBox ID="issueid" runat="server" CssClass="textbox" style="position:absolute; top: 86px; left: 616px;" ToolTip="Enter Book ID"></asp:TextBox>
          <asp:TextBox ID="customername" runat="server" CssClass="textbox" style="position:absolute; top: 139px; left: 615px;" ToolTip="Enter Customer name"></asp:TextBox>
          <asp:TextBox ID="contactno" runat="server" CssClass="textbox" style="position:absolute; top: 187px; left: 615px;" ToolTip="Enter Contact NO"></asp:TextBox>
          <asp:TextBox ID="emailid" runat="server" CssClass="textbox" style="position:absolute; top: 236px; left: 614px;" ToolTip="Enter Email ID"></asp:TextBox>
          <asp:TextBox ID="address" runat="server" CssClass="textbox" style="position:absolute; top: 287px; left: 613px;" ToolTip="Enter Address"></asp:TextBox>
          <asp:Label ID="Label13" runat="server" Font-Size="Large" style="position:absolute; top: 287px; left: 437px; right: 239px;" Text="ADDRESS:"></asp:Label>
          
          <asp:Label ID="Label12" runat="server" Font-Size="Large" style="position:absolute; top: 238px; left: 439px; right: 230px;" Text="EMAIL ID:"></asp:Label>
          
          <asp:Label ID="Label11" runat="server" Font-Size="Large" style="position:absolute; top: 187px; left: 439px; right: 230px;" Text="CONTACT NO:"></asp:Label>
          
          <asp:Label ID="Label10" runat="server" Font-Size="Large" style="position:absolute; top: 139px; left: 440px; right: 231px;" Text="CUSTOMER NAME:"></asp:Label>
          
          <asp:Label ID="Label9" runat="server" Font-Size="Large" style="position:absolute; top: 87px; left: 443px; right: 236px;" Text="ISSUE ID:" ToolTip="Enter Issue ID"></asp:Label>
          <asp:Label ID="Label7" runat="server" Font-Size="Large" style="position:absolute; top: 287px; left: 60px; right: 626px;" Text="ISBN NUMBER:"></asp:Label>
          <asp:Button ID="check" runat="server" Text="Check" style="position:absolute; top: 135px; left: 162px;" OnClick="check_Click"  />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [BOOK]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [issuebook]"></asp:SqlDataSource>
          <asp:Label ID="Label14" runat="server" Font-Size="Large" style="position:absolute; top: 340px; left: 437px; right: 239px;" Text="DATE OF ISSUE:"></asp:Label>
          <asp:TextBox ID="date" runat="server" CssClass="textbox" style="position:absolute; top: 338px; left: 613px;" ToolTip="Enter Address" TextMode="Date"></asp:TextBox>
            </asp:Panel>
            
      
        
            
      
        
    </form>
</body>
</html>
