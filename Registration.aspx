<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body { font-family: Arial; padding: 20px; background: #f5f5f5; }
        .container { max-width: 600px; margin: 0 auto; background: white; padding: 30px; border-radius: 10px; }
        .form-group { margin: 15px 0; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input, select, textarea { width: 100%; padding: 10px; border: 2px solid #ddd; border-radius: 5px; box-sizing: border-box; }
        button { background: #4CAF50; color: white; padding: 12px 30px; border: none; border-radius: 5px; cursor: pointer; }
        .details { display: none; background: #e8f5e8; padding: 20px; margin-top: 20px; border-radius: 5px; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Registration Form</h2>
        <form id="registrationForm">
            <div class="form-group">
                <label>First Name:</label>
                <input type="text" id="firstName" required>
            </div>
            <div class="form-group">
                <label>Last Name:</label>
                <input type="text" id="lastName" required>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" id="email" required>
            </div>
            <div class="form-group">
                <label>Phone:</label>
                <input type="tel" id="phone" required>
            </div>
            <div class="form-group">
                <label>Age:</label>
                <input type="number" id="age" min="16" max="100" required>
            </div>
            <div class="form-group">
                <label>Gender:</label>
                <select id="gender" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                </select>
            </div>
            <div class="form-group">
                <label>Course:</label>
                <select id="course" required>
                    <option value="">Select Course</option>
                    <option value="Computer Science">Computer Science</option>
                    <option value="IT">Information Technology</option>
                    <option value="Engineering">Engineering</option>
                </select>
            </div>
            <div class="form-group">
                <label>Address:</label>
                <textarea id="address" rows="3" required></textarea>
            </div>
            <button type="submit">Register Student</button>
        </form>

        <div id="details" class="details">
            <h3>Registration Successful!</h3>
            <div id="displayDetails"></div>
            <button onclick="resetForm()">Register Another Student</button>
        </div>
    </div>

    <script>
        document.getElementById('registrationForm').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const formData = {
                firstName: document.getElementById('firstName').value,
                lastName: document.getElementById('lastName').value,
                email: document.getElementById('email').value,
                phone: document.getElementById('phone').value,
                age: document.getElementById('age').value,
                gender: document.getElementById('gender').value,
                course: document.getElementById('course').value,
                address: document.getElementById('address').value,
                date: new Date().toLocaleDateString()
            };
            
            const detailsHTML = `
                <p><strong>Name:</strong> ${formData.firstName} ${formData.lastName}</p>
                <p><strong>Email:</strong> ${formData.email}</p>
                <p><strong>Phone:</strong> ${formData.phone}</p>
                <p><strong>Age:</strong> ${formData.age} years</p>
                <p><strong>Gender:</strong> ${formData.gender}</p>
                <p><strong>Course:</strong> ${formData.course}</p>
                <p><strong>Address:</strong> ${formData.address}</p>
                <p><strong>Registration Date:</strong> ${formData.date}</p>
            `;
            
            document.getElementById('displayDetails').innerHTML = detailsHTML;
            document.getElementById('registrationForm').style.display = 'none';
            document.getElementById('details').style.display = 'block';
        });
        
        function resetForm() {
            document.getElementById('registrationForm').reset();
            document.getElementById('registrationForm').style.display = 'block';
            document.getElementById('details').style.display = 'none';
        }
    </script>
</body>
</html>