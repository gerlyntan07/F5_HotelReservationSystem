<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="F5_HotelReservationSystem.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hilton Manila | Admin Login</title>
    <link href="Fpass.css" rel="stylesheet" />
</head>
<body>

    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="logo">
                    <img src="pngs/logofinal.png" style="height: 100px;" />
                </div>

                <div class="note">
                    <h7>*NOTE: This site is for admins only*</h7>
                </div>
                <div class="wrapper">
                    <div class="title">
                        Sign In
                    </div>
                    <div class="form">
                        <div class="inputfield">
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" class="textbox" runat="server" CssClass="input" BorderStyle="NotSet" ForeColor="dimgray" TextMode="SingleLine"></asp:TextBox>
                        </div>
                        <div class="inputfield">
                            <label>Password</label>
                            <asp:TextBox ID="txtPwd" class="textbox" runat="server" TextMode="Password" CssClass="input" ForeColor="dimgray" ReadOnly="False"></asp:TextBox>
                        </div>
                        <asp:Label runat="server" ID="msglabel" Visible="false" Text="Invalid Email or Password" ForeColor="red" CssClass="lbl"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <div class="btns">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btnL" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn1" />
                        <br />
                        <br />
                    </div>
                    <a href="ForgotPass.aspx" class="forPass">Forgot Password</a>
                </div>

                <script type="text/javascript">
                    function preventBack() { window.history.forward(); }
                    setTimeout("preventBack()", 0);
                    window.onunload = function () { null };
                </script>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnLogin" />
            </Triggers>
        </asp:UpdatePanel>
    </form>
</body>
</html>
