
Imports System.Net.Mail
Imports Microsoft.VisualBasic

Partial Class ContactUs
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        TBMail.Text = String.Empty
        TBMessage.Text = String.Empty

    End Sub

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles BtnSubmit.Click
        Dim emailMessage As New MailMessage()
        Try
            emailMessage.From = New MailAddress("ui.6k183@gmail.com")
            emailMessage.To.Add("zhaoyang-dai@uiowa.edu")
            emailMessage.Subject = "Question"
            emailMessage.Body = "This message is send from " & CStr(TBMail.Text) & ". Here is the message text. " & CStr(TBMessage.Text)
            Dim smtp As New SmtpClient("smtp.gmail.com")
            smtp.Port = 587
            smtp.EnableSsl = True
            smtp.Credentials = New System.Net.NetworkCredential("ui.6k183@gmail.com", "6k183U*I")
            smtp.Send(emailMessage)

        Catch ex As Exception

        End Try
        MsgBox("Your message has been sent. Administrator will reply you in next 24 hrs through email.", MsgBoxStyle.OkOnly, "Sent!")
        TBMail.Text = String.Empty
        TBMessage.Text = String.Empty
    End Sub
End Class
