<?php
error_reporting(E_ALL ^ E_NOTICE);
session_start();


  include 'pages/forms/Mantenimientos/Capas/Conexion/conexion.php';	

    $conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	if (!$conn) 
    {
        echo "Fallo en Conexion";
		die("Connection failed: " . mysqli_connect_error());
        
	}
		$correo=$_POST['Correo'];
		$pass=$_POST['Clave'];
		$encrypt=sha1($pass);

        $_SESSION['usuario'] = $correo;

		$sql = "SELECT Nombre_Usuario, Pasword_Usuario FROM tbl_usuarios where Correo_Usuario='$correo' and Pasword_Usuario='$encrypt'"; 
		$result = mysqli_query($conn,$sql);

if ($result->num_rows > 0) 
{
    while($row = $result->fetch_assoc()) 
    {
        echo " <script language='javascript'> window.location.href = 'inicio.php'; </script>";
    }
   
  }
else
{
    echo "<script language='javascript'> alert('El correo o la contraseña es incorrecta.'); window.location.href = 'index.php'; </script>";

}
?>

      