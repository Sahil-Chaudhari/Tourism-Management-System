<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit10'])){
  $useremail=$_SESSION['login'];
  $fullname=$_POST['fullname'];
  $email=$_POST['email'];
  $message=$_POST['message'];

  $sql = "INSERT INTO contact(useremail, fullname, email, message) VALUES(:useremail, :fullname, :email, :message)";

//   echo $sql;
  $query = $dbh->prepare($sql);
	$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);
	$query->bindParam(':fullname',$fullname,PDO::PARAM_STR);
	$query->bindParam(':email',$email,PDO::PARAM_STR);
	$query->bindParam(':message',$message,PDO::PARAM_STR);
	$query->execute();
	$lastInsertId = $dbh->lastInsertId();
	if($lastInsertId)
	{
		echo '<script>alert("Message Sent. Thank you")</script>';
	}
	else 
	{
		echo '<script>alert("Something Went Wrong. Please try again")</script>';
	}
}
?>

<contact>
<section id="contactUs" class="page-section secPad">
  <div class="container">
    <div class="row">
      <div class="heading text-center">
        <!-- Heading -->
        <h2>Let's Keep In Touch!</h2>
        <p>Thank you for visiting out my profile. If you would like to get into contact with me, please fill out the form below.</p>
      </div>
    </div>
    <div class="row mrgn30">
      <div class="col-sm-12 col-md-8">
        <form name="sentMessage" id="contactForm" method="post">
          <h3>Contact Form</h3>
          <div class="control-group">
            <div class="controls">
              <input type="text" class="form-control" 
              placeholder="Full Name" id="name" name="fullname" required
              data-validation-required-message="Please enter your name" />
              <p class="help-block"></p>
            </div>
          </div> 	
          <div class="control-group" style="margin-bottom: 8px;">
            <div class="controls">
              <input type="email" name="email" class="form-control" placeholder="Email" 
              id="email" required
              data-validation-required-message="Please enter your email" />
            </div>
          </div> 	

          <div class="control-group" style="margin-bottom: 8px;">
            <div class="controls">
              <textarea rows="10" cols="100" class="form-control" 
              placeholder="Message" name="message" id="message" required
              data-validation-required-message="Please enter your message" minlength="5" 
              data-validation-minlength-message="Min 5 characters" 
              maxlength="999" style="resize:none"></textarea>
            </div>
          </div> 		 
          <div id="success"> </div> <!-- For success/fail messages -->
          <button type="submit" name="submit10" class="btn btn-primary pull-right">Send</button><br />
        </form>
      </div> 

      <!-- signup -->
      <?php include('includes/signup.php');?>     
      <!-- //signu -->
      <!-- signin -->
      <?php include('includes/signin.php');?>     
      <!-- //signin -->
      <div class="col-sm-12 col-md-4">
      <h4>Address:</h4>
        <address>
          Vishwakarma Institute of Information Technology <br>
        VIM Private Rd
<br>
Kapil Nagar, Kondhwa<br>
Pune, Maharashtra 411048

          <br>
        </address>
        <h4>Phone:</h4>
        <address>
          9999999999<br>
        </address>
      </div>
    </div>
  </div>
  <!--/.container-->
</section>
</contact>