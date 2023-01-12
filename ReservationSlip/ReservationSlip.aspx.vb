Imports System.Data.SqlClient

Public Class ReservationSlip
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label1.Text = Session("fName")
        Label2.Text = Session("contactNum")
        Label3.Text = Session("Email")
        Label4.Text = Session("checkIn")
        Label5.Text = Session("checkOut")
        Label6.Text = Session("DDLadults")
        Label7.Text = Session("DDLchild")
        Label8.Text = Session("room_type")
        Label9.Text = Session("NumRooms")
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Feedback.aspx")
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("Homepage.aspx")
    End Sub
End Class