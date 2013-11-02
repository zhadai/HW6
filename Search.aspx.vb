
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub TBSearch_TextChanged(sender As Object, e As EventArgs) Handles TBSearch.TextChanged
        ' Declare a variable
        Dim searchWord As String
        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From [dbo].[Table] where (Name Like '%" + TBSearch.Text.ToString() + "%') or (Epithet Like'%" + TBSearch.Text.ToString() + "%')"
        ' Apply the variable (SQL statement) to the data source
        SqlDataSource1.SelectCommand = searchWord

    End Sub
End Class
