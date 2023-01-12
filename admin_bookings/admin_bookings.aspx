<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin_bookings.aspx.vb" Inherits="F5_HotelReservationSystem.admin_bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hilton Admin | Bookings</title>
    <link href="admin_bookings.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />
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
                            <a href="admin_bookings.aspx" class="active">
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
                            <a href="admin_AccSettings.aspx">
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
                            <span class="dashboard">Bookings</span>
                        </div>
                    </nav>
                    <div class="content1">
                        <div class="overview-boxes">
                            <div class="box">
                                <div class="right-side">
                                    <div class="box-topic">Total Bookings</div>
                                    <asp:Label runat="server" ID="lblBookings" CssClass="number"></asp:Label>
                                </div>
                                <img src="https://img.icons8.com/external-flaticons-flat-flat-icons/64/000000/external-booking-vacation-planning-solo-trip-flaticons-flat-flat-icons-3.png" />
                            </div>

                        </div>
                        <div class="table">
                            <div class="searchbar">
                                <p>ID</p>
                                <asp:TextBox runat="server" ID="txtSearch" placeholder="Search here" CssClass="txtSearch"></asp:TextBox>
                                <asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="btnSearch" />
                            </div>

                            <br />
                            <table>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView1" AlternatingRowStyle-BackColor="#e1eaf0" runat="server" RowStyle-CssClass="row" HeaderStyle-CssClass="header" HeaderStyle-BackColor="#6B7AA1" HeaderStyle-ForeColor="White" EmptyDataText="No record found!">
                                        </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </section>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSearch" />
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
