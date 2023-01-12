<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Reservation.aspx.vb" Inherits="F5_HotelReservationSystem.Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <title>Hilton Manila | Reservation Form</title>
    <link href="Reservation101.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <img src="pngs/logofinal.png" style="height: 100px;" />

        <div class="wrapper">
            <div class="title">
                Reservation Form
            </div>
            <div class="form">
                <div class="inputfield">
                    <label>Full Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="fName" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" TextMode="SingleLine" CssClass="input" ID="fName"></asp:TextBox>

                </div>

                <div class="inputfield">
                    <label>Contact Number</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="contactNum" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="contactNum" runat="server" placeholder="####-###-####" TextMode="Phone" pattern="[0-9]{4}-[0-9]{3}-[0-9]{4}" CssClass="input"></asp:TextBox>
                </div>

                <div class="inputfield">
                    <label>Email</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Email" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="input" ID="Email" placeholder="Ex. abcd@gmail.com"></asp:TextBox>
                </div>

                <div class="inputfield">
                    <label>Gender</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="Gender" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList runat="server" ID="Gender" CssClass="input">
                        <asp:ListItem Selected hidden></asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="inputfield">
                    <label>Check-in Date</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="checkIn" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="checkIn" runat="server" TextMode="Date" CssClass="input"></asp:TextBox>
                </div>

                <div class="inputfield">
                    <label>Check-out Date</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="checkOut" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="checkOut" runat="server" TextMode="Date" CssClass="input"></asp:TextBox>
                </div>

                <div class="inputfield">
                    <label>Adult (12 Y/O ABOVE)</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="DDLadults" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DDLadults" runat="server" CssClass="input">
                        <asp:ListItem Selected hidden></asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="inputfield">
                    <label>Child (11 Y/O BELOW)</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="DDLchild" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DDLchild" runat="server" CssClass="input">
                        <asp:ListItem Selected hidden></asp:ListItem>
                        <asp:ListItem Value="0">0</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="7">7</asp:ListItem>
                        <asp:ListItem Value="8">8</asp:ListItem>
                        <asp:ListItem Value="9">9</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="inputfield">
                    <label>Room Type</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="room_type" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="room_type" runat="server" CssClass="input">
                        <asp:ListItem Selected hidden></asp:ListItem>
                        <asp:ListItem Value="King Guest Room">King Guest Room</asp:ListItem>
                        <asp:ListItem Value="King Guest Room Pool View">King Guest Room Pool View</asp:ListItem>
                        <asp:ListItem Value="Double Double Guest Room">Double Double Guest Room</asp:ListItem>
                        <asp:ListItem Value="Double Double Guest Room Pool View">Double Double Guest Room Pool View</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="inputfield">
                    <label>No. Of Room/s</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="NumRooms" runat="server" ErrorMessage="*" Display="Static" Text="*" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="NumRooms" runat="server" CssClass="input">
                        <asp:ListItem Selected hidden></asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5 or more</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="inputfield">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Submit</button>
                    <a href="Homepage.aspx" class="btn2">Cancel</a>
                </div>
            </div>
        </div>
        <!-- The Modal -->
        <div class="modal fade" id="myModal" runat="server">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h3 class="modal-title">Are you sure?</h3>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="icon"><img src="https://img.icons8.com/fluency/80/null/high-importance.png" /></div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <p>All the information will be recorded after submitting.</p>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="btnYes" CssClass="btnYes" Text="Yes" />
                        <button type="button" id="btnCancel" class="btnCancel" data-dismiss="modal">Cancel</button>
                    </div>

                </div>
            </div>
        </div>


    </form>
</body>
</html>
