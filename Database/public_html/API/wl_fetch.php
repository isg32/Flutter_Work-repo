<?php
header('Content-Type: application/json');
include('db_config.php');


$response = array();


$checkQuery = "SELECT `SENS_ID`, `D_ID`, `SEN_VAL`, `TIMESTAMP` FROM `WL_TABLE` WHERE 1"; // tbl_dht table query


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
        $details['SENS_ID'] = $val['SENS_ID'];
        $details['D_ID'] = $val['D_ID']; // change the column name accordingly.
        $details['SEN_VAL'] = $val['SEN_VAL'];
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
