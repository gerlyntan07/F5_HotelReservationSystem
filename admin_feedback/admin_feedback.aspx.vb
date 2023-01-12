Imports System.Data.SqlClient

Public Class admin_feedback
    Inherits System.Web.UI.Page
    Dim MyConn As SqlConnection
    Dim Myrdr As SqlDataReader
    Dim MyCmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dt As DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        MyConn = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        MyConn.Open()
        MyCmd = New SqlCommand("SELECT avg(Rating) As avgRating from dbo.Feedbacks", MyConn)

        Myrdr = MyCmd.ExecuteReader()
        Myrdr.Read()
        lblRatings.Text = Myrdr("avgRating")
        lblRatings.Text = String.Format("{0:0.00}", Myrdr("avgRating"))
        MyConn.Close()
    End Sub

    Private Sub logOut_Click(sender As Object, e As EventArgs) Handles logOut.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Homepage.aspx")
    End Sub

    Private Sub admin_dashboard_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        MyConn = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        MyCmd = New SqlCommand("SELECT * from dbo.Feedbacks", MyConn)
        da = New SqlDataAdapter(MyCmd)
        dt = New DataTable()
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()


        If Session("Email") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub

    Private Sub ilogOut_Click(sender As Object, e As EventArgs) Handles ilogOut.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Homepage.aspx")
    End Sub
End Class