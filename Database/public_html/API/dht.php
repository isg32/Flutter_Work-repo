<?php
header('Content-Type: application/json');
include('db_config.php');


$response = array();




if(isset($_GET["temp"]) && isset($_GET["hum"]))
{
	  	  $temp = $_GET["temp"];
 		  $hum = $_GET["hum"];
	 	  $query = "INSERT INTO DHT_TABLE(D_ID, TEMP ,HUMIDITY ,TIMESTAMP) VALUES ('1', $temp, $hum,CURRENT_TIMESTAMP())
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
