<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin_AccSettings.aspx.vb" Inherits="F5_HotelReservationSystem.admin_AccSettings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hilton Admin | Account Settings</title>
    <link href="admin_accsettings.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <asp:UpdatePanel runat="server">

            <ContentTemplate>
                <div class="sidebar">
                    <div class="logo-details">
                        <img src="pngs/logo_only_white.png" />
                        <span class="logo_name">Hilton</span>
                    </div>
                    <ul class="nav-links">
                        <li>
                            <a href="admin_bookings.aspx">
                                <i class='bx bx-book-alt'></i>
                                <span class="links_name">Bookings</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin_feedback.aspx">
                                <i class='bx bxs-dashboard'></i>
                                <span class="links_name">Feedback</span>
                            </a>
                        </li>
                        <li>
                            <a href="admin_AccSettings.aspx" class="active">
                                <i class='bx bx-cog'></i>
                                <span class="links_name">Account Settings</span>
                            </a>
                        </li>
                        <li class="log_out">
                            <a href="#">
                                <i class='bx bx-log-out'>
                                    <asp:Button runat="server" ID="ilogOut" CssClass="ilogOut" /></i>
                                <span class="links-name">
                                    <asp:Button runat="server" ID="logOut" Text="Log out" CssClass="links-name" /></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <section class="home-section">
                    <nav>
                        <div class="sidebar-button">
                            <i class='bx bx-menu sidebarBtn'></i>
                            <span class="dashboard">Account Settings</span>
                        </div>
                    </nav>

                    <div class="home-content">
                        <div class="sales-boxes">
                            <div class="recent-sales box">
                                <br />
                                <div class="modal-dialog">
                                    <br />
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h2 class="modal-title">Change Password</h2>
                                            <br />
                                        </div>
                                        <div class="modal-body">
                                            <div class="inputfield">
                                                <p class="op">Old Password</p>
                                                <asp:TextBox runat="server" ID="txtOP" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                                            </div>
                                            <div class="inputfield">
                                                <p class="np">New Password</p>
                                                <asp:TextBox runat="server" ID="txtNP" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                                            </div>
                                            <div class="inputfield">
                                                <p class="cp">Confirm Password</p>
                                                <asp:TextBox runat="server" ID="txtCP" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:Label runat="server" ID="lblmsg" CssClass="lblmsg"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Button runat="server" ID="btnSave" Text="Save Changes" CssClass="btnSave" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSave" />
            </Triggers>

        </asp:UpdatePanel>

        <script>
            let sidebar = document.querySelector(".sidebar");
            let sidebarBtn = document.querySelector(".sidebarBtn");
            sidebarBtn.onclick = function () {
                sidebar.classList.toggle("active");
                if (sidebar.classList.contains("active")) {
                    sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                } else
                    sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
            }
        </script>

    </form>
</body>
</html>

