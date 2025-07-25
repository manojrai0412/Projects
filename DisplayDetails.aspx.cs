using System;
using System.Web.UI;

namespace StudentRegistration
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudentDetails();
            }
        }

        private void LoadStudentDetails()
        {
            // Check if session data exists
            if (Session["FirstName"] != null && Session["LastName"] != null)
            {
                // Display the registration details
                lblFirstName.Text = Session["FirstName"].ToString();
                lblLastName.Text = Session["LastName"].ToString();
                lblFullName.Text = Session["FirstName"].ToString() + " " + Session["LastName"].ToString();
                lblEmail.Text = Session["Email"].ToString();
                lblPhone.Text = FormatPhoneNumber(Session["Phone"].ToString());
                lblAge.Text = Session["Age"].ToString() + " years";
                lblGender.Text = Session["Gender"].ToString();
                lblCourse.Text = Session["Course"].ToString();
                lblAddress.Text = Session["Address"].ToString().Replace("\n", "<br />");
                lblRegistrationDate.Text = Session["RegistrationDate"].ToString();

                // Show success panel and details
                pnlSuccess.Visible = true;
                pnlDetails.Visible = true;
                pnlError.Visible = false;
            }
            else
            {
                // Show error message if no data found
                pnlSuccess.Visible = false;
                pnlDetails.Visible = false;
                pnlError.Visible = true;
            }
        }

        private string FormatPhoneNumber(string phoneNumber)
        {
            // Format phone number as (XXX) XXX-XXXX
            if (phoneNumber.Length == 10)
            {
                return $"({phoneNumber.Substring(0, 3)}) {phoneNumber.Substring(3, 3)}-{phoneNumber.Substring(6, 4)}";
            }
            return phoneNumber;
        }
    }
}