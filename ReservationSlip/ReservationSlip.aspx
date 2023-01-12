<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReservationSlip.aspx.vb" Inherits="F5_HotelReservationSystem.ReservationSlip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hilton Manila | Reservation Slip</title>
    <link href="ReservationSlip.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
        <asp:Panel runat="server" ID="content" CssClass="content">
            <div class="wrapper">
                <div class="invoice_wrapper">
                    <div class="header">
                        <div class="logo_invoice_wrap">
                            <div class="logo_sec">
                                <img src="pngs/logo_only.png" alt="code logo" width="90" />
                                <div class="title_wrap">
                                    <p class="title bold">Hilton Manila</p>
                                </div>
                            </div>
                            <div class="invoice_sec">
                                <p class="date">
                                    <span class="bold"></span>
                                    <span>1 Newport Blvd, Pasay, 1309 Metro Manila</span>
                                </p>
                                <p class="date">
                                    <span class="bold"></span>
                                    <span>mnlph_hotel@hilton.com</span>
                                </p>
                                <p class="date">
                                    <span class="bold"></span>
                                    <span>0909-691-3713</span>
                                </p>
                                <p class="date">
                                    <span class="bold"></span>
                                    <span>+63 2 7239 7788</span>
                                </p>
                            </div>
                        </div>
                        <div class="bill_total_wrap">
                            <div class="bill_sec">
                                <asp:Label runat="server" class="bold">Name: </asp:Label>
                                <asp:Label runat="server" ID="Label1"></asp:Label>
                                <br />
                                <asp:Label runat="server" class="bold">Contact No. : </asp:Label>
                                <asp:Label runat="server" ID="Label2"></asp:Label>
                            </div>
                            <div class="total_wrap">
                                <asp:Label runat="server" class="bold">Email: </asp:Label>
                                <asp:Label runat="server" ID="Label3"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="body">
                        <div class="main_table">
                            <div class="table_body">
                                <div class="row">
                                    <div class="col col_des">
                                        <asp:Label runat="server" class="bold">Check-In-Date: </asp:Label>
                                        <asp:Label runat="server" ID="Label4"></asp:Label>
                                    </div>
                                    <div class="col col_total">
                                        <asp:Label runat="server" class="bold">Check-Out-Date: </asp:Label>
                                        <asp:Label runat="server" ID="Label5"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col_des">
                                        <asp:Label runat="server" class="bold">Adult: </asp:Label>
                                        <asp:Label runat="server" ID="Label6"></asp:Label>
                                    </div>
                                    <div class="col col_total">
                                        <asp:Label runat="server" class="bold">Child: </asp:Label>
                                        <asp:Label runat="server" ID="Label7"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col col_des">
                                        <asp:Label runat="server" class="bold">Room Type: </asp:Label>
                                        <asp:Label runat="server" ID="Label8"></asp:Label>
                                    </div>
                                    <div class="col col_total">
                                        <asp:Label runat="server" class="bold">No. Of Rooms: </asp:Label>
                                        <asp:Label runat="server" ID="Label9"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <div class="terms">
                            <p class="tc bold">=====================================================================</p>
                            <br />
                            <p>SCREENSHOT OR PRINT THIS FORM AND PRESENT THIS TO THE FRONT DESK OF THE HOTEL. HAVE A NICE STAY!!</p>
                            <br />
                            <p class="tc bold">=====================================================================</p>
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </asp:Panel>

        <div class="btn">
            <asp:Button runat="server" ID="Button1" OnClientClick="window.print();" Text="Print" CssClass="print" />

            <div class="bot">
                <asp:Button runat="server" ID="Button2" Text="Rate Us" CssClass="btnfoot" />
                <asp:Button runat="server" ID="Button3" Text="Back to homepage" CssClass="btnfoot" />
            </div>
        </div>

        <style>
            @media print {
                body * {
                    visibility: hidden;
                }

                #content * {
                    visibility: visible;
                }
            }
        </style>
    </form>
</body>
</html>
