<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Feedback.aspx.vb" Inherits="F5_HotelReservationSystem.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css" />
    <link href="Feedback.css" rel="stylesheet" />
    <title>Hilton Manila | Feedback Form</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <img src="pngs/logofinal.png" style="height: 100px;" />

        <div class="wrapper">
            <div class="title">
                How would you rate us?
                <p>We would like to ask your feedback to improve our website. Tell us how we could satisfy our client experience.</p>
            </div>
            <div class="form">
                <div class="rating">
                    <asp:RadioButton runat="server" value="1" ID="rate1" GroupName="rating" />
                    <asp:RadioButton runat="server" value="2" ID="rate2" GroupName="rating" />
                    <asp:RadioButton runat="server" value="3" ID="rate3" GroupName="rating" />
                    <asp:RadioButton runat="server" value="4" ID="rate4" GroupName="rating" />
                    <asp:RadioButton runat="server" value="5" ID="rate5" GroupName="rating" />
                </div>

                <div class="rating-bot">
                    <ul>
                        <li class="num">1</li>
                        <li class="num">2</li>
                        <li class="num">3</li>
                        <li class="num">4</li>
                        <li class="num">5</li>
                    </ul>
                </div>

                <div class="inputfield">
                    <asp:TextBox runat="server" ID="txtBox" CssClass="textarea" TextMode="MultiLine" placeholder="Your opinion..."></asp:TextBox>
                </div>

                <div class="inputfield">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Submit</button>
                    <asp:Button runat="server" ID="btnCancel" CssClass="btnCancel" Text="Cancel" />
                </div>
            </div>
        </div>

                <!-- The Modal -->
        <div class="modal fade" id="myModal" runat="server">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h3 class="modal-title">Thank you for rating us!</h3>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <div class="icon"><img src="https://img.icons8.com/color/80/null/checked--v1.png"/></div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <p>Click the "okay" button to record your feedback.</p>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <asp:Button runat="server" ID="btnYes" CssClass="btnYes" Text="Okay"/>
                    </div>

                </div>
            </div>
        </div>

    </form>
</body>
</html>

