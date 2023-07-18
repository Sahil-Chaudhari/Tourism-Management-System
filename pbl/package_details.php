<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit2']))
{
	$pid=intval($_GET['pkgid']);
	$useremail=$_SESSION['login'];
	$fromdate=$_POST['fromdate'];
	$todate=$_POST['todate'];
	$comment=$_POST['comment'];
	$status=0;
	$sql="INSERT INTO tblbooking(PackageId,UserEmail,FromDate,ToDate,Comment,status) VALUES(:pid,:useremail,:fromdate,:todate,:comment,:status)";
	$query = $dbh->prepare($sql);
	$query->bindParam(':pid',$pid,PDO::PARAM_STR);
	$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);
	$query->bindParam(':fromdate',$fromdate,PDO::PARAM_STR);
	$query->bindParam(':todate',$todate,PDO::PARAM_STR);
	$query->bindParam(':comment',$comment,PDO::PARAM_STR);
	$query->bindParam(':status',$status,PDO::PARAM_STR);
	$query->execute();
	$lastInsertId = $dbh->lastInsertId();
	if($lastInsertId)
	{
		echo '<script>alert("Booked Successfully . Thank you")</script>';
	}
	else 
	{
		echo '<script>alert("Something Went Wrong. Please try again")</script>';
	}

}
?>
<!doctype html>
<html lang="en-gb" class="no-js">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<title>My Travel - Package details</title>
	<meta name="description" content="Traveller">
	<meta name="author" content="WebThemez">

	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/styles.css" />
	
</head>

<body>

	<!--Package-->
	<section id="packages" class="secPad" style="background: rgb(34,193,195);
	background: linear-gradient(0deg, rgba(34,193,195,1) 0%, rgba(253,187,45,1) 100%);">
		<div class="container">
			<div class="heading text-center">
				<!-- Heading -->
				<h2>Package Details</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
			</div>
			<!--- selectroom ---->
			<div class="selectroom">
				<div class="container">
					<?php if($error){?>
					<div class="errorWrap"><strong>ERROR</strong>:
						<?php echo htmlentities($error); ?>
					</div>
					<?php } 
					else if($msg){?>
					<div class="succWrap"><strong>SUCCESS</strong>:
						<?php echo htmlentities($msg); ?>
					</div>
					<?php }?>
					<?php 
					$pid=intval($_GET['pkgid']);
					$sql = "SELECT * from tbltourpackages where PackageId=:pid";
					$query = $dbh->prepare($sql);
					$query -> bindParam(':pid', $pid, PDO::PARAM_STR);
					$query->execute();
					$results=$query->fetchAll(PDO::FETCH_OBJ);
					$cnt=1;
					if($query->rowCount() > 0)
					{
						foreach($results as $result)
						{ 
							?>

					<div class="selectroom_top" style="background: white">
						<div class="col-md-4 selectroom_left wow fadeInLeft animated" data-wow-delay=".5s">
							<img src="pacakgeimages/<?php echo htmlentities($result->PackageImage);?>"
								class="img-responsive" alt="">
						</div>
						<div class="col-md-8 selectroom_right wow fadeInRight animated" data-wow-delay=".5s">
							<h2>
								<?php echo htmlentities($result->PackageName);?>
							</h2>
							<p class="dow">#PKG-
								<?php echo htmlentities($result->PackageId);?>
							</p>
							<p><b>Package Type :</b>
								<?php echo htmlentities($result->PackageType);?>
							</p>
							<p><b>Package Location :</b>
								<?php echo htmlentities($result->PackageLocation);?>
							</p>
							<p><b>Features</b>
								<?php echo htmlentities($result->PackageFetures);?>
							</p>

							<div class="clearfix"></div>
							<div class="grand">
								<p>Grand Total</p>
								<h3>Rs.
									<?php echo htmlentities($result->PackagePrice);?>
								</h3>
							</div>
						</div>
						<h3>Package Details</h3>
						<p style="padding-top: 1%">
							<?php echo htmlentities($result->PackageDetails);?>
						</p>
						<div class="clearfix"></div>
					</div>
					<form name="book" method="post">
						<div class="selectroom_top">
							<div class="selectroom-info animated wow fadeInUp animated" data-wow-duration="1200ms"
								data-wow-delay="500ms"
								style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp; margin-top: -70px">
								<div class="ban-bottom">
									<div class=" col-md-6 mr-2 ">
										<label class="inputLabel">From</label>
										<input class="form-control" id="datepicker" type="date" placeholder="dd-mm-yyyy"
											name="fromdate" required="">
									</div>
									<div class=" col-md-6">
										<label class="inputLabel">To</label>
										<input class="form-control" id="datepicker1" type="date"
											placeholder="dd-mm-yyyy" name="todate" required="">
									</div>
								</div>
								<ul>

									<li class="spe">
										<label class="inputLabel">Comment</label>
										<textarea class="form-control" rows="4" cols="4" type="text" name="comment"
											required=""></textarea>
									</li>
									<?php if($_SESSION['login'])
											{?>
									<li class="spe" align="center">
										<button type="submit" name="submit2" class="btn-primary btn">Book</button>
									</li>
									<?php 
											} else {?>
									<li class="sigi" align="center" style="margin-top: 1%">
										<a href="#" data-toggle="modal" data-target="#myModal4" class="btn-primary btn">
											Book</a>
									</li>
									<?php
											} ?>
									<div class="clearfix"></div>
								</ul>
							</div>
						</div>
					</form>
					<?php 
						}
					} ?>
				</div>
			</div>
			<!--- /selectroom ---->
		</div>
	</section>
	<a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i></a>
	<?php include('includes/footer.php');?>
	<!-- signup -->
	<?php include('includes/signup.php');?>
	<!-- //signu -->
	<!-- signin -->
	<?php include('includes/signin.php');?>
	<!-- //signin -->
	
</body>

</html>
