using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Appointment : Page
{
  SqlConnection connection;
  SqlCommand command;
  SqlDataReader reader;

  protected void Page_Load(object sender, EventArgs e)
  {
    string connectionString =
      "Data Source = localhost\\SQLEXPRESS;" +
      " Initial Catalog = health;" +
      " Integrated Security = SSPI";

    connection = new SqlConnection(connectionString);
  }

  public void SetAppointment(object s, EventArgs e)
  {
    command = new SqlCommand(
      "INSERT INTO Appointments (FirstName, LastName, VisitDate, VisitTime)" +
      " VALUES (@FirstName, @LastName, @VisitDate, @VisitTime)", connection);
    command.Parameters.AddWithValue("@FirstName", first.Text);
    command.Parameters.AddWithValue("@LastName", last.Text);
    command.Parameters.AddWithValue("@VisitDate", datepicker.Text);
    command.Parameters.AddWithValue("@VisitTime", time.Text);

    // inserting the data into the table
    try
    {
      connection.Open();
      command.ExecuteNonQuery();
      connection.Close();
      confirmation.Text = "Appointment Set";
      first.Enabled = false;
      last.Enabled = false;
      datepicker.Enabled = false;
      time.Enabled = false;
      conf.Enabled = false;
    } // end try
    catch(Exception err)
    {
      confirmation.Text = err.Message;
      connection.Close();
    } // end catch
  } // end function SetAppointment
}