<?php
require('db.php');

//check whether submit button is pressed or not
if((isset($_POST['submit'])))
{
  //fetching and storing the form data in variables
$Name = $con->real_escape_string($_POST['name']);
$Email = $con->real_escape_string($_POST['email']);
$Phone = $con->real_escape_string($_POST['phone']);
$comments = $con->real_escape_string($_POST['comments']);
$create_datetime = date("Y-m-d H:i:s");
  //query to insert the variable data into the database
$sql="INSERT INTO contact_form (name, email, phone, comments,create_datetime) VALUES ('".$Name."','".$Email."', '".$Phone."', '".$comments."', '$create_datetime')";
  //Execute the query and returning a message
if(!$result = $con->query($sql)){
die('Error occured [' . $conn->error . ']');
}
else
   echo 
   "<div class='form'>
   <h3>Thank you! We will get in touch with you soon</h3></br>
   <p class='link'>go back to <a href='contact.html'> contact page</a> again.</p>
   </div>";
}
?>