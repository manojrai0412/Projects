<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="StudentRegistration.StudentDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 700px;
            margin: 0 auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 30px;
            border-bottom: 3px solid #4CAF50;
            padding-bottom: 10px;
        }
        .success-message {
            background-color: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
            text-align: center;
        }
        .details-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }
        .details-table th, .details-table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .details-table th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }
        .details-table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .details-table tr:hover {
            background-color: #f5f5f5;
        }
        .btn {
            background-color: #008CBA;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            display: inline-block;
            margin-right: 10px;
        }
        .btn:hover {
            background-color: #007B9A;
        }
        .btn-secondary {
            background-color: #6c757d;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
        .error-message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #f5c6cb;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Student Registration Details</h2>
            
            <asp:Panel ID="pnlSuccess" runat="server" CssClass="success-message">
                <strong>Registration Successful!</strong><br />
                Your registration has been completed successfully. Here are your details:
            </asp:Panel>

            <asp:Panel ID="pnlError" runat="server" CssClass="error-message" Visible="false">
                <strong>Error!</strong><br />
                No registration data found. Please complete the registration form first.
            </asp:Panel>

            <asp:Panel ID="pnlDetails" runat="server">
                <table class="details-table">
                    <tr>
                        <th>Field</th>
                        <th>Details</th>
                    </tr>
                    <tr>
                        <td><strong>First Name</strong></td>
                        <td><asp:Label ID="lblFirstName" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Last Name</strong></td>
                        <td><asp:Label ID="lblLastName" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Full Name</strong></td>
                        <td><asp:Label ID="lblFullName" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Email Address</strong></td>
                        <td><asp:Label ID="lblEmail" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Phone Number</strong></td>
                        <td><asp:Label ID="lblPhone" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Age</strong></td>
                        <td><asp:Label ID="lblAge" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Gender</strong></td>
                        <td><asp:Label ID="lblGender" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Course</strong></td>
                        <td><asp:Label ID="lblCourse" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Address</strong></td>
                        <td><asp:Label ID="lblAddress" runat="server" /></td>
                    </tr>
                    <tr>
                        <td><strong>Registration Date</strong></td>
                        <td><asp:Label ID="lblRegistrationDate" runat="server" /></td>
                    </tr>
                </table>
            </asp:Panel>

            <div class="button-container">
                <a href="Default.aspx" class="btn">Register Another Student</a>
                <asp:Button ID="btnPrint" runat="server" Text="Print Details" 
                    CssClass="btn btn-secondary" OnClientClick="window.print(); return false;" />
            </div>
        </div>
    </form>
</body>
</html>