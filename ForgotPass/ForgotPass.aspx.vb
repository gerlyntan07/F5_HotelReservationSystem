Imports System.Data.SqlClient

Public Class ForgotPass
    Inherits System.Web.UI.Page
    Dim Con As SqlConnection
    Dim Cmd As SqlCommand
    Dim sda As New SqlDataAdapter
    Dim dt As New DataTable

    Private Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        Response.Redirect("Login.aspx")
    End Sub

    Private Sub btnReset_Click(sender As Object, e As EventArgs) Handles btnReset.Click
        Con = New SqlConnection("Server=localhost;Data Source=DESKTOP-55S13DQ;Database=HotelReservationSystem;Integrated Security=True;")
        sda = New SqlDataAdapter("SELECT Password from dbo.LoginAdmin WHERE Email = '" + txtEmail.Text + "' ", Con)
        dt = New DataTable()
        sda.Fill(dt)

        If dt.Rows.Count.ToString() = "1" Then
            If txtNP.Text = txtCP.Text Then
                Con.Open()
                Cmd = New SqlCommand("UPDATE dbo.LoginAdmin SET Password= '" + txtCP.Text + "' WHERE Email = '" + txtEmail.Text + "'", Con)
                Cmd.ExecuteNonQuery()

                Con.Close()
                lblmsg.Visible = True
                lblmsg.ForeColor = System.Drawing.Color.Green
                lblmsg.Text = "Password has been reset successfuly."

            Else
                lblmsg.Visible = True
                lblmsg.ForeColor = System.Drawing.Color.Red
                lblmsg.Text = "New password and confirm new password should be the same!"
            End If
        Else
            lblmsg.Visible = True
            lblmsg.ForeColor = System.Drawing.Color.Red
            lblmsg.Text = "Email is incorrect. Please input a correct email."
        End If
    End Sub
End Class