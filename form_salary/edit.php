<?php
	include_once('connection.php');
	session_start();
		$id = $_GET['id'];
		$salary=$_GET['salary'];

		$sql = "UPDATE salary SET salary=$salary where id=$id";
		if($conn->query($sql)){
			echo "success";
			$_SESSION['success'] = 'Update Successfully';

			// $search="SELECT COUNT(con_id) AS total FROM `employee` WHERE con_id=$con1_id";
			// $query=mysqli_query($conn,$search);
			// $data=mysqli_fetch_assoc($query);
			// $change="UPDATE contractor SET tot_employee=".$data['total']." WHERE id=$con1_id";
			// $query2=mysqli_query($conn,$change);

			// $search="SELECT COUNT(con_id) AS total FROM `employee` WHERE con_id=$con_id";
			// $query=mysqli_query($conn,$search);
			// $data=mysqli_fetch_assoc($query);
			// $change="UPDATE contractor SET tot_employee=".$data['total']." WHERE id=$con_id";
			// $query2=mysqli_query($conn,$change);
		}

		else{
			$_SESSION['error'] = 'Something went wrong in updating member';
		}

?>