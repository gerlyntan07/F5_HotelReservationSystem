Imports System.Data
Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page
    Dim MyConn As SqlConnection
    Dim MyCmd As SqlCommand
    Dim MyReader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'generate form
        Else
            'process submitted data
        End If
    End Sub

    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        MyConn = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        Dim query As String = "Select * from dbo.LoginAdmin WHERE Email=@Email and Password=@Password"
        MyConn.Open()
        MyCmd = New SqlCommand(query, MyConn)
        MyCmd.Parameters.AddWithValue("@Email", txtEmail.Text)
        MyCmd.Parameters.AddWithValue("@Password", txtPwd.Text)
        MyReader = MyCmd.ExecuteReader()
        If MyReader.Read Then
            Session("Email") = txtEmail.Text()
            Response.Redirect("admin_bookings.aspx")
        Else
            msglabel.Visible = True
            MyConn.Close()
        End If
    End Sub

    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Response.Redirect("Homepage.aspx")
    End Sub
End Class