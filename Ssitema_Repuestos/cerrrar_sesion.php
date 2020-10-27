<?php

    session_start();
    $validar =  $_SESSION['usuario'];
     include 'pages/forms/Mantenimientos/Capas/Conexion/conexion.php';	

    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	if (!$conn) 
    {
		die("Connection failed: " . mysqli_connect_error());
    }


    session_destroy();
    header("location: index.php");


?>