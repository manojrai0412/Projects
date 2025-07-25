using System;
using System.Web.UI;

namespace StudentRegistration
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Page load logic if needed
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Store the form data in Session
                Session["FirstName"] = txtFirstName.Text.Trim();
                Session["LastName"] = txtLastName.Text.Trim();
                Session["Email"] = txtEmail.Text.Trim();
                Session["Phone"] = txtPhone.Text.Trim();
                Session["Age"] = txtAge.Text.Trim();
                Session["Gender"] = ddlGender.SelectedValue;
                Session["Course"] = ddlCourse.SelectedValue;
                Session["Address"] = txtAddress.Text.Trim();
                Session["RegistrationDate"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                // Redirect to details page
                Response.Redirect("StudentDetails.aspx");
            }
        }
    }
}