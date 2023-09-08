<?php
header('Content-Type: application/json');
include('db_config.php');


$response = array();




if(isset($_GET["waterLevel"]))
{
	  	  $senval = $_GET["waterLevel"];
	 	  $query = "INSERT INTO WL_TABLE(D_ID, SEN_VAL ,TIMESTAMP) VALUES ('1', $senval,CURRENT_TIMESTAMP())
";
	  $result = mysqli_query($db_con,$query);
	  	  if($result)
	  {


			  $response["error"] = FALSE;
			  $response["message"] = "Successfully added.";
			  echo json_encode($response);
			  exit;
	  }
	  else
	  {
		  
	  	  $response["error"] = TRUE;
		  $response["message"] = "Sorry not able to insert";
		  $response["errr"] = mysqli_error($db_con);
		  echo json_encode($response);
		  exit;
		  
	  }
}
  else
  {
	  //Invalid parameters
	  $response["error"] = TRUE;
	  $response["message"] = "Invalid Parameters";
	 
	  echo json_encode($response);
	  exit;
  }
?>
