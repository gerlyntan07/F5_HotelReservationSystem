Imports System.Data.SqlClient

Public Class Reservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None
    End Sub

    Private Sub btnYes_Click(sender As Object, e As EventArgs) Handles btnYes.Click
        Session("fName") = fName.Text
        Session("Email") = Email.Text
        Session("contactNum") = contactNum.Text
        Session("checkIn") = checkIn.Text
        Session("checkOut") = checkOut.Text
        Session("DDLadults") = DDLadults.Text
        Session("DDLchild") = DDLchild.Text
        Session("room_type") = room_type.Text
        Session("NumRooms") = NumRooms.Text

        Dim MyConn As SqlConnection = New SqlConnection("Data Source=DESKTOP-55S13DQ;Initial Catalog=HotelReservationSystem;Integrated Security=True")
        Dim MyCmd As SqlCommand = New SqlCommand("INSERT INTO [dbo].[Reservation] values('" & fName.Text & "', '" & contactNum.Text & "', '" & Email.Text & "', '" & Gender.Text & "', '" & checkIn.Text & "', '" & checkOut.Text & "', '" & DDLadults.Text & "', '" & DDLchild.Text & "', '" & room_type.Text & "', '" & NumRooms.Text & "')", MyConn)
        MyConn.Open()
        MyCmd.ExecuteNonQuery()
        If Page.IsValid Then
            Response.Redirect("ReservationSlip.aspx")
        Else
            myModal.Visible = False
        End If
        MyConn.Close()

    End Sub
End Class