
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        CurrentTime.Text = DateTime.Now.DayOfWeek.ToString & ", " & DateTime.Now.Date

    End Sub
End Class

