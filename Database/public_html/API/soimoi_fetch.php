<?php
header('Content-Type: application/json');
include('db_config.php');

$response = array();

$checkQuery = "SELECT `SENS_ID`, `D_ID`, `SEN_VAL`, `TIMESTAMP` FROM `SOI_MOI_TABLE`"; // tbl_dht table query

$result = mysqli_query($db_con, $checkQuery);
$numrow = mysqli_num_rows($result);

if ($numrow == 0) {
    $response["error"] = true;
    $response["message"] = "Sorry, no data found.";
    echo json_encode($response);
    exit;
} else {
    $data = array();

    while ($val = mysqli_fetch_assoc($result)) {
        $details = array();
        $details['SENS_ID'] = $val['SENS_ID'];
        $details['D_ID'] = $val['D_ID']; // change the column name accordingly.
        $details['SEN_VAL'] = $val['SEN_VAL'];
        $details['TIMESTAMP'] = $val['TIMESTAMP'];
        array_push($data, $details);
    }

    // Create an associative array with "data" key
    $formattedData = array("data" => $data);

    // Move the file writing outside the loop 
    $fp = fopen('soimoi.json', 'w');
    fwrite($fp, json_encode($formattedData));
    fclose($fp);

    // Change the key values in the response array.
    $response["data"] = $data;
    $response["error"] = false;
    $response["message"] = "Successfully fetched data.";
    echo json_encode($response);
    exit;
}
?>
