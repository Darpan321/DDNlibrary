<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="library.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            position: absolute;
        }
        
        .content
        {
            position: absolute;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            left: 40px;
            font-weight:bold;
            
        }

        #myVideo
        {
            object-fit: initial;
            width: 100%;
            height: 100%;
           
        }


    </style>
    

</head>
<body style="height: 100%; width: 100%; margin-top:0px;margin-left:0px;margin-bottom:0px;margin-right:0px;">
    <form id="form1" runat="server">
        <div>
            <video autoplay muted loop id="myVideo">
            <source src="bookvideo.mp4" type="video/mp4">
            Your browser does not support HTML5 video.
        </video>
        </div>
        <div class="content" style="position:absolute;top:216px; left: 340px; width: 689px; height: 288px;border:solid black;">
            <asp:Button ID="Button1" runat="server" BackColor="#CFCDCE" Text="Sign in" style="position:absolute; top: 16px; left: 278px; height: 36px; width: 68px;" OnClick="Button1_Click1" />
            <asp:Button ID="Button2" runat="server" BackColor="#CFCDCE" Text="Sign up" style="position:absolute; top: 16px; left: 353px; height: 36px; width: 73px;" OnClick="Button2_Click" />
            <asp:Panel ID="signin" runat="server" style="position:absolute;left:27px; top:71px; height: 180px; width: 303px; border: 10px solid transparent;border-image: url(border.png) 30 stretch; right: 339px;">
                <asp:Label ID="Label1" runat="server" Text="Sign in" style="position:absolute;left:129px; top: 6px;"></asp:Label>
                <asp:Label ID="password0" runat="server" Text="Password" style="position:absolute; top: 91px; left: 23px;"></asp:Label>
                <asp:Label ID="email0" runat="server" style="position:absolute; top: 51px; left: 29px;" Text="Email"></asp:Label>
                <asp:TextBox ID="password" runat="server" style="position:absolute; top: 90px; left: 108px;" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="emailid" runat="server" style="position:absolute; top: 52px; left: 109px;" ToolTip="Enter Password"></asp:TextBox>
                <asp:Button ID="submit" runat="server" Text="Sign in" style="position:absolute; top: 130px; left: 114px;" OnClick="submit_Click"/>
            </asp:Panel>
            <asp:Panel ID="signup" runat="server" style="position:absolute;left:358px; top: 71px; width: 300px; height: 179px; border: 10px solid transparent;border-image: url(border.png) 30 stretch;">
                <asp:Label ID="Label2" runat="server" Text="Sign up" style="position:absolute;left:126px; top: 2px;"></asp:Label>
                <asp:Label ID="password2" runat="server" style="position:absolute; top: 91px; left: 22px;" Text="Password"></asp:Label>
                <asp:Label ID="name" runat="server" style="position:absolute; top: 28px; left: 32px;" Text="Name"></asp:Label>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="position:absolute; top: 115px; left: 104px; width: 174px;" RepeatDirection="Horizontal" >
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Librarian</asp:ListItem>
                </asp:RadioButtonList>
                <asp:TextBox ID="enterpassword" runat="server" style="position:absolute; top: 87px; left: 105px;" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="entername" runat="server" style="position:absolute; top: 24px; left: 105px;" ToolTip="Enter Name"></asp:TextBox>
                <asp:Button ID="submit0" runat="server" style="position:absolute; top: 146px; left: 114px;" Text="Sign up" OnClick="submit0_Click" />
                <asp:Label ID="email3" runat="server" style="position:absolute; top: 59px; left: 32px;" Text="Email"></asp:Label>
                <asp:TextBox ID="enteremailid" runat="server" style="position:absolute; top: 56px; left: 105px;" ToolTip="Enter Email ID"></asp:TextBox>
                <asp:Label ID="type" runat="server" style="position:absolute; top: 120px; left: 35px;" Text="Type"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegiConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
            </asp:Panel>
            <asp:Label ID="M2" runat="server" Text="Welcome Back!<br>To keep connected with us please login with your personal info" style="position:absolute; top: 179px; left: 390px; height: 65px; width: 231px;font-size:18px;"></asp:Label>
            <asp:Label ID="M1" runat="server" Text="Hello, Friend!<br>Enter your personal details and start journey with us" style="position:absolute; top: 178px; left: 63px; height: 75px; width: 231px; right: 395px;font-size:18px;"></asp:Label>
                <asp:Image ID="Image2" runat="server" Height="105px" Width="102px" ImageUrl="~/DDN.png" style="position:absolute; top: 63px; left: 478px;" />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/DDN.png" style="position:absolute; top: 58px; left: 121px; height: 104px; width: 102px;" />
        
        </div>
    </form>
</body>
</html>
