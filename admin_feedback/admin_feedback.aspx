<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin_feedback.aspx.vb" Inherits="F5_HotelReservationSystem.admin_feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hilton Admin | Feedback</title>
    <link href="adminFeedback.css" rel="stylesheet" />
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet' />

</head>
<body>
    <form id="form1" runat="server">
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
                    <a href="admin_feedback.aspx" class="active">
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
                    <span class="dashboard">Feedback</span>
                </div>
            </nav>

            <div class="home-content">
                <div class="overview-boxes">
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Ratings</div>
                            <asp:Label runat="server" ID="lblRatings" CssClass="number"></asp:Label>
                        </div>
                        <img src="https://img.icons8.com/fluency/80/null/ratings.png" />
                    </div>
                </div>

                <div class="sales-boxes">
                    <div class="table">

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
            </div>
        </section>
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
