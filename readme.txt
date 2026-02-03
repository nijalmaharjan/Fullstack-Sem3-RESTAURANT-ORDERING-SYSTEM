HERALD COLLEGE KATHMANDU – RESTAURANT ORDERING SYSTEM
Student Name: Nijal Maharjan
Student ID: 2501431
Website URL: https://student.heraldcollege.edu.np/~NP03CS4A240039/Assesment




LOGIN CREDENTIALS

ADMIN ACCESS:

Email:admin@college.com

Password:admin123

CUSTOMER ACCESS:

Email: nijal@gmail.com

Password:nijal


Email:prince@gmail.com

Password:Prince123#

NOTE:
Admin accounts are created manually by inserting a hashed password into the database.
Customer accounts are created using the registration form.

SYSTEM SETUP INSTRUCTIONS

DATABASE SETUP:

Create a MySQL / MariaDB database named:
NP03CS4A240039

Import the provided SQL file to create required tables:
users
menu
orders

Ensure the database credentials are correctly set in:
db.php

FILE CONFIGURATION:

Upload the “Assesment” folder inside public_html

Example path:
~/public_html/Assesment/

Ensure the following folder has write permission for image uploads:
uploads/foods/

Command:
chmod 777 ~/public_html/Assesment/uploads/foods

KEY FEATURES

USER AUTHENTICATION
Customer registration and login system using sessions.

ADMIN PANEL
Admin can add, edit, and delete food items.
Admin can view pending and completed orders.

CUSTOMER DASHBOARD
Customers can place food orders.
Quantity-based ordering system.

ORDER MANAGEMENT
Orders are stored with:

User ID

Food ID

Quantity

Total Price

Phone Number

Location

Order Date

Status (Pending / Completed)





DYNAMIC ORDER VIEW
Admin panel displays customer name, phone number, location, and order details using SQL JOINs.

CLEAN UI
Simple green-themed user interface using HTML and CSS.

KNOWN ISSUES / LIMITATIONS

No online payment gateway (cash on delivery only).

No order cancellation feature for customers.

No email notification system.

SERVER DETAILS

Server IP: 103.41.173.36
SSH Port: 50222

Command to access server:
ssh -p 50222 username@103.41.173.36