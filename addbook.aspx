<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addbook.aspx.cs" Inherits="library.addbook" %>

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
        </style>
</head>
<body style="height:657px; width:1366px;margin:0px;background-image:url('addbookup.png'); background-repeat:no-repeat; background-size:100% 100%;">
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
            
      <asp:Panel ID="Panel1" runat="server" style="position:absolute; top: 122px; left: 190px; width: 417px; height: 437px;border:solid black;">
          <asp:Label ID="Label3" runat="server" Text="ADD BOOKS" style="position:absolute; top: 24px; left: 151px;" Font-Size="X-Large"></asp:Label>
          <asp:Button ID="submitbutton" runat="server" Text="SUBMIT" style="position:absolute; top: 400px; left: 168px;" OnClick="submitbutton_Click" />
            <asp:Label ID="Label4" runat="server" Font-Size="Large" style="position:absolute; top: 87px; left: 60px; right: 253px;" Text="BOOK ID:"></asp:Label>
          <asp:Label ID="Label5" runat="server" Font-Size="Large" style="position:absolute; top: 137px; left: 59px; right: 235px;" Text="BOOK NAME:"></asp:Label>
          <asp:Label ID="Label6" runat="server" Font-Size="Large" style="position:absolute; top: 190px; left: 59px; right: 219px;" Text="AUTHOR NAME:"></asp:Label>
          <asp:Label ID="Label7" runat="server" Font-Size="Large" style="position:absolute; top: 247px; left: 61px; right: 218px;" Text="ISBN NUMBER:"></asp:Label>
          <asp:Label ID="Label8" runat="server" Font-Size="Large" style="position:absolute; top: 309px; left: 60px; right: 233px;" Text="BOOK TYPE:"></asp:Label>
          <asp:Label ID="Label9" runat="server" Font-Size="Large" style="position:absolute; top: 369px; left: 61px; right: 252px;" Text="PRICE:"></asp:Label>
          <asp:TextBox CssClass="textbox" ID="bookid" runat="server" style="position:absolute; top: 86px; left: 230px;" ToolTip="Enter Book ID"></asp:TextBox>
            <asp:TextBox CssClass="textbox"  ID="bookname" runat="server" style="position:absolute; top: 136px; left: 230px;" ToolTip="Enter Book name"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="authorname" runat="server" style="position:absolute; top: 190px; left: 230px;" ToolTip="Enter Author name"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="isbnnumber" runat="server" style="position:absolute; top: 246px; left: 229px;" ToolTip="Enter ISBN number"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="booktype" runat="server" style="position:absolute; top: 308px; left: 228px;" ToolTip="Enter Book Type"></asp:TextBox>
          <asp:TextBox CssClass="textbox" ID="price" runat="server" style="position:absolute; top: 367px; left: 229px;" ToolTip="Enter Book Type"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [BOOK]"></asp:SqlDataSource>
            </asp:Panel>
            
      
        
            
      
        
    </form>
</body>
</html>
