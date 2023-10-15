<?php
$hostname="localhost";
				$username= "root";
				$password= "";
        $database="db_employee";

// Create a database connection
$conn = new mysqli($servername, $username, $password);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Create the table for employee registration
$sql = "CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uname VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50) NOT NULL
)";

if ($conn->query($sql) === TRUE) {
    echo "Table 'employees' created successfully.";
} else {
    echo "Error creating table: " . $conn->error;
}
$sql="CREATE TABLE visitors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    purpose VARCHAR(255),
    contact VARCHAR(100),
    approved BOOLEAN
)";
if ($conn->query($sql) === TRUE) {
    echo "Table 'visitors' created successfully.";
} else {
    echo "Error creating table: " . $conn->error;
}

// Close the database connection
$conn->close();
?>
