<?php 
include 'connection.php';
if(isset($_POST['login']))
	{
		$email= $_POST['email'];
		$pass = $_POST['password'];
		$sql=mysqli_query($conn,"select * from users where username='$email' and password='$pass'");
		if(mysqli_num_rows($sql)==1)
		{
			if (isset( $_POST['remember'])) 
			{
				setcookie('email', $email, time()+60*60*10);
				setcookie('pass', $pass, time()+60*60*10);	
			}
			session_start();
			$_SESSION['email']=$email;
			$_SESSION['password']=$pass;
			header("location: data_entry.php");
		}
		else
		{
			echo "<script>alert('Incorrect credentials')</script>";
			echo "<script>location.href='login.php'</script>";	
		}
	}
	else
	{
		header("location: login.php");
	}
 ?>