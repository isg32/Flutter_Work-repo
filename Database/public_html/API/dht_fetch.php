<?php
header("Access-Control_Allow_Origin: *");
header("Access-Control-Allow-Credentials: true");
header("Content-type: application/json;charset=utf-8"); 
header("Access-Control-Allow-Methods: GET");
include('db_config.php');


$response = array();


$checkQuery = "SELECT `DHT_ID`, `D_ID`, `TEMP`, `HUMIDITY`, `TIMESTAMP` FROM `DHT_TABLE` WHERE 1"; // tbl_dht table query


$result = mysqli_query($db_con, $checkQuery);
$numrow = mysqli_num_rows($result);


if($numrow == 0) {
    $response["error"] = TRUE;
    $response["message"] = "Sorry, no data found.";
    echo json_encode($response);
    exit;
}
else {
    $data = array();


    while($val = mysqli_fetch_assoc($result)) {
        $details['DHT_ID'] = $val['DHT_ID'];
        $details['D_ID'] = $val['D_ID']; // change the column name accordingly.
        $details['TEMP'] = $val['TEMP'];
        $details['HUMIDITY'] = $val['HUMIDITY'];
        $details['TIMESTAMP'] = $val['TIMESTAMP'];
        array_push($data, $details);
    }


    // Change the key values in the response array.
    $response["data"] = $data;
    $response["error"] = FALSE;
    $response["message"] = "Successfully fetched data.";
    echo json_encode($response);
    exit;
}
?>
