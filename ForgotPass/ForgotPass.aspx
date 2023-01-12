<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ForgotPass.aspx.vb" Inherits="F5_HotelReservationSystem.ForgotPass" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hilton Manila | Forgot Password</title>
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
                        Forgot Password
                    </div>
                    <div class="form">
                        <div class="inputfield">
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" class="textbox" runat="server" CssClass="input" BorderStyle="NotSet" ForeColor="dimgray" TextMode="SingleLine"></asp:TextBox>
                        </div>
                        <div class="inputfield">
                            <label>New Password</label>
                            <asp:TextBox ID="txtNP" class="textbox" runat="server" TextMode="Password" CssClass="input" ForeColor="dimgray" ReadOnly="False"></asp:TextBox>
                        </div>
                        <div class="inputfield">
                            <label>Confirm New Password</label>
                            <asp:TextBox ID="txtCP" class="textbox" runat="server" TextMode="Password" CssClass="input" ForeColor="dimgray" ReadOnly="False"></asp:TextBox>
                        </div>
                        <asp:Label runat="server" ID="lblmsg" CssClass="lbl"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <div class="btns">
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btnSP" />
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn1" />
                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnReset" />
            </Triggers>
        </asp:UpdatePanel>
    </form>
</body>
</html>

