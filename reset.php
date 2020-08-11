<?php 
$req = $_POST; 
$username = $req['username'];
$conn = mysqli_connect('localhost', 'root', '', 'Admin');
session_start();
if($req['object'] == 'forgot'){ 
if($req['newpassword'] == $req['confirmpassword']) {
		// $hash = sodium_crypto_pwhash_str(
		// 	$password,
		// 	SODIUM_CRYPTO_PWHASH_OPSLIMIT_INTERACTIVE,
		// 	SODIUM_CRYPTO_PWHASH_MEMLIMIT_INTERACTIVE
		//); 
        $update = "UPDATE `doct2` SET 'password' = '" . md5($password) . "' WHERE username = '$username' ";
        $result = mysqli_query($conn, $update);
        $result   = mysqli_query($con, $query);
        if ($result) {
            echo "<div class='form'>
            <h3>Your new password has reset successfully, you can now login.'</h3><br/>
            <p class='link'>Click here to <a href='login.html'>login</a> again.</p>
                  </div>";
        } else {
            echo "<div class='form'>
                  <h3>passwords are not matching try again.'</h3><br/>
                  <p class='link'>Click here to <a href='reset.html'>reset</a> again.</p>
                  </div>";
        }
    
    }
}
?>