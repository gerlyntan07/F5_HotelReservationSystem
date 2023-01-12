Imports System.Data.SqlClient

Public Class admin_bookings
    Inherits System.Web.UI.Page
    Dim MyConn As SqlConnection
    Dim MyCmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dt As DataTable

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        MyConn = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        Dim cmd As New SqlCommand("SELECT * FROM dbo.Reservation WHERE GuestId=@GuestID", MyConn)
        cmd.Parameters.Add("GuestID", SqlDbType.Int).Value = txtSearch.Text
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        MyConn = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        MyCmd = New SqlCommand("SELECT * from dbo.Reservation", MyConn)
        da = New SqlDataAdapter(MyCmd)
        dt = New DataTable()
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Private Sub logOut_Click(sender As Object, e As EventArgs) Handles logOut.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Homepage.aspx")
    End Sub

    Private Sub ilogOut_Click(sender As Object, e As EventArgs) Handles ilogOut.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Homepage.aspx")
    End Sub

    Private Sub admin_bookings_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
        MyConn = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")

        Dim query As String = "SELECT COUNT(GuestId) from dbo.Reservation"

        MyConn.Open()
        Dim MyCmd As SqlCommand = New SqlCommand(query, MyConn)

        Dim rows_count As Int32 = Convert.ToInt32(MyCmd.ExecuteScalar())
        MyCmd.Dispose()
        MyConn.Close()

        lblBookings.Text = rows_count.ToString()


        If Session("Email") Is Nothing Then
            Response.Redirect("Login.aspx")
        End If
    End Sub

End Class