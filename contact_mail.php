<?php 
//require_once "vendor/autoload.php"; //PHPMailer Object 

// $mail = new PHPMailer; //From email address and name 
// $mail->From = "your_email"; 
// $mail->FromName = "your_name"; //To address and name 
// $mail->addAddress("gurjarhariom3114@gmail.com", "Nakul");//Recipient name is optional
// $mail->addAddress("your_email"); //Address to which recipient will reply 
// $mail->addReplyTo("reply@yourdomain.com", "Reply"); //CC and BCC 
// $mail->addCC("cc@example.com"); 
// $mail->addBCC("bcc@example.com"); //Send HTML or Plain Text email 
// $mail->isHTML(true); 
// $mail->Subject = "Subject Text"; 
// $mail->Body = "comments";
// $mail->AltBody = "This is the plain text version of the email content"; 
// if(!$mail->send()) 
// {
// echo "Mailer Error: " . $mail->ErrorInfo; 
// } 
// else { echo "Message has been sent successfully"; 
// }
// if(!$mail->send()) 
// { 
// echo "Mailer Error: " . $mail->ErrorInfo; 
// } 
// else 
// { 
// echo "Message has been sent successfully"; 
// }


  
    require ("class.phpmailer.php");
  
    if(isset($_POST['submit'])){
        $name=$_POST['name']; // Get Name value from HTML Form
        $email=$_POST['email'];  // Get Email Value
        $mobile=$_POST['phone'];  // Get Mobile No
        $message=$_POST['comments']; // Get Message Value
          
          
        $mail = new PHPMailer();
          
        $mail->IsSMTP();
        $mail->Host = "websapex.com"; // Your Domain Name
          
        $mail->SMTPAuth = true;
        $mail->Port = 587;
        $mail->Username = "gurjarhariom3114@gmail.com"; // Your Email ID
        $mail->Password = "Harsh@123"; // Password of your email id
          
        $mail->From = "gurjarhariom3114@gmail.com.com";
        $mail->FromName = "$name";
        $mail->AddAddress ("$email"); // On which email id you want to get the message
        $mail->AddCC ($email);
          
        $mail->IsHTML(true);
          
        $mail->Subject = "Enquiry from Website submitted by $name"; // This is your subject
          
        // HTML Message Starts here
          
        $mail->Body = "
        <html>
            <body>
                <table style='width:600px;'>
                    <tbody>
                        <tr>
                            <td style='width:150px'><strong>Name: </strong></td>
                            <td style='width:400px'>$name</td>
                        </tr>
                        <tr>
                            <td style='width:150px'><strong>Email ID: </strong></td>
                            <td style='width:400px'>$email</td>
                        </tr>
                        <tr>
                            <td style='width:150px'><strong>Mobile No: </strong></td>
                            <td style='width:400px'>$mobile</td>
                        </tr>
                        <tr>
                            <td style='width:150px'><strong>Message: </strong></td>
                            <td style='width:400px'>$message</td>
                        </tr>
                    </tbody>
                </table>
            </body>
        </html>
        ";
        // HTML Message Ends here
          
              
        if(!$mail->Send()) {
            // Message if mail has been sent
            echo "<script>
                alert('Submission failed.');
            </script>";
        }
        else {
            // Message if mail has been not sent
            echo "<script>
                alert('Email has been sent successfully.');
            </script>";
        }
  
    }
?>