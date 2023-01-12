Imports System.Data.SqlClient

Public Class admin_AccSettings
    Inherits System.Web.UI.Page
    Dim Con As SqlConnection
    Dim Cmd As SqlCommand
    Dim sda As New SqlDataAdapter
    Dim dt As New DataTable

    Private Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        Con = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        sda = New SqlDataAdapter("SELECT Password from dbo.LoginAdmin WHERE Password = '" + txtOP.Text + "' ", Con)
        dt = New DataTable()
        sda.Fill(dt)

        If dt.Rows.Count.ToString() = "1" Then
            If txtNP.Text = txtCP.Text Then
                Con.Open()
                Cmd = New SqlCommand("UPDATE dbo.LoginAdmin SET Password= '" + txtCP.Text + "' WHERE Password = '" + txtOP.Text + "'", Con)
                Cmd.ExecuteNonQuery()

                Con.Close()
                lblmsg.Visible = True
                lblmsg.ForeColor = System.Drawing.Color.Green
                lblmsg.Text = "Password successfully changed"

            Else
                lblmsg.Visible = True
                lblmsg.ForeColor = System.Drawing.Color.Red
                lblmsg.Text = "New password and confirm password should be the same!"
            End If
        Else
            lblmsg.Visible = True
            lblmsg.ForeColor = System.Drawing.Color.Red
            lblmsg.Text = "Old password is incorrect. Please check your old password"
        End If
    End Sub

    Private Sub logOut_Click(sender As Object, e As EventArgs) Handles logOut.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Homepage.aspx")
    End Sub

    Private Sub admin_dashboard_PreLoad(sender As Object, e As EventArgs) Handles Me.PreLoad
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