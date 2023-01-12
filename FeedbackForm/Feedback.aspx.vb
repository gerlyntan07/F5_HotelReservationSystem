Imports System.Data.SqlClient
Imports System.Net.Mime.MediaTypeNames

Public Class Feedback
    Inherits System.Web.UI.Page
    Dim rating As Int16

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub btnYes_Click(sender As Object, e As EventArgs) Handles btnYes.Click
        Dim MyConn As SqlConnection = New SqlConnection("Data Source=DESKTOP-55S13DQ;Initial Catalog=HotelReservationSystem;Integrated Security=True")
        Dim MyCmd As SqlCommand = New SqlCommand("INSERT INTO [dbo].[Feedbacks] values ('" & rating & "', '" & txtBox.Text & "')", MyConn)
        MyConn.Open()
        MyCmd.ExecuteNonQuery()
        Response.Redirect("Homepage.aspx")
        MyConn.Close()
    End Sub

    Private Sub rate1_CheckedChanged(sender As Object, e As EventArgs) Handles rate1.CheckedChanged
        rating = 1
    End Sub

    Private Sub rate2_CheckedChanged(sender As Object, e As EventArgs) Handles rate2.CheckedChanged
        rating = 2
    End Sub

    Private Sub rate3_CheckedChanged(sender As Object, e As EventArgs) Handles rate3.CheckedChanged
        rating = 3
    End Sub

    Private Sub rate4_CheckedChanged(sender As Object, e As EventArgs) Handles rate4.CheckedChanged
        rating = 4
    End Sub

    Private Sub rate5_CheckedChanged(sender As Object, e As EventArgs) Handles rate5.CheckedChanged
        rating = 5
    End Sub

    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Response.Redirect("Homepage.aspx")
    End Sub

End Class