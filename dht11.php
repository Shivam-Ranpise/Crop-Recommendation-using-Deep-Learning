<?php

$server = "localhost";
$username = "root";
$password = "";
$database = "SoilData";

$con = new mysqli($server, $username, $password, $database);
    if(!$con)
    {
        echo 'Database Connection Failed';
    }

    $temperature = $_GET["temperature"];
    $humidity = $_GET["humidity"];
    $moisture = $_GET["moisture"];
    $Nitrogen = $_GET["Nitrogen"];
    $Potassium = $_GET["Potassium"];
    $Phosphorous = $_GET["Phosphorous"];

    
    $query = "INSERT INTO dht11 (temperature, humidity, moisture, Nitrogen, Phosphorous, Potassium) VALUES ('$temperature', '$humidity', '$moisture', '$Nitrogen', '$Phosphorous', '$Potassium')";
    $result = mysqli_query($con,$query);
    echo "Record Inserted Succesfully!";


?>
