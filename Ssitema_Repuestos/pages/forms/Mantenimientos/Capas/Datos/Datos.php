<?php
 
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);

class Mantenimientos
{
    private $servicio;
    private $db;

    //Conexion
    public function __construct() 
    {
        $this->db = new PDO('mysql:host=localhost;dbname=controlinventario', "root", "");
    }
    
     private function setNames() 
     {
        return $this->db->query("SET NAMES 'utf8'");
     }
//-------------------------------------------------------------------------------------------------------    
//Mantenimiento Clientes         
    function Clientes($Nombre,$Nit,$Direccion)
    {
        self::setNames();
        $inf = 0;
        
        try
        {
            $valida = "SELECT Nit_Cliente as Nit from tbl_cliente where Nit_Cliente='$Nit'";
            foreach ($this->db->query($valida) as $res)
            {
             $datos = $res['Nit']. "\t";
            
             if($Nit == $res['Nit'])
             {
                 echo "<script language='javascript'> alert('El Cliente ya se encuentra registrado'); window.location.href = '../../../mantenimientoclientes.php'; </script>";
             }
            
            $info = 1;
            }
            if($info == 0)
            {
            $sql = "INSERT INTO tbl_cliente(`Id_Cliente`, `Nombre_Cliente`, `Nit_Cliente`, `Direccion`, `Estado`) VALUES (NULL, '$Nombre', '$Nit','$Direccion', '1');";
            $result = $this->db->query($sql);
            echo "<script language='javascript'> alert('Cliente Registrado'); window.location.href = '../../../registrocliente.php'; </script>";
            }
        }
        catch (Exception $e)
        {
             echo "<script language='javascript'> alert('No se pudo registrar el cliente'); window.location.href = '../../../mantenimientoclientes.php'; </script>";
        }
    }
 // ----------------------------------------------------------------------------------------------------------------------------------   
//Mantenimiento Proveedores       
    function Proveedores($Nombre,$Nit,$Direccion)
    {
        self::setNames();
        $inf = 0;
        
        try
        {
            $valida = "SELECT Nit as Nit from tbl_proveedor where Nit='$Nit'";
            foreach ($this->db->query($valida) as $res)
            {
             $datos = $res['Nit']. "\t";
            
             if($Nit == $res['Nit'])
             {
                 echo "<script language='javascript'> alert('El Proveedor ya se encuentra registrado'); window.location.href = '../../../mantenimientoproveedores.php'; </script>";
             }
            
            $info = 1;
            }
        
            if($info == 0)
            {
           $sql = "INSERT INTO tbl_proveedor (`Id_Proveedor`, `Nombre`, `Nit`, `Direccion`, `Estado`) VALUES (NULL, '$Nombre', '$Nit','$Direccion', '1');";
            $result = $this->db->query($sql);
            echo "<script language='javascript'> alert('Proveedor Registrado'); window.location.href = '../../../registroproveedores.php'; </script>";
            }
        }
          catch (Exception $e)
        {
             echo "<script language='javascript'> alert('No se pudo Registrar el Proveedor'); window.location.href = '../../../mantenimientoproveedores.php'; </script>";
        }
        
    }
 // ----------------------------------------------------------------------------------------------------------------------------------     //Mantenimiento Tipo de Pago     
    function TipoPago($Nombre)
    {
        self::setNames();
        $inf = 0;
        
        try
        {
           $sql = "INSERT INTO tbl_tipo_pago (`Id_TipoPago`, `Nombre`, `Estado`) VALUES (NULL, '$Nombre', '1');";
          $result = $this->db->query($sql);
            echo "<script language='javascript'> alert('Tipo de Pago Guardado'); window.location.href = '../../../registrotipopago.php'; </script>";
        }
          catch (Exception $e)
        {
             echo "<script language='javascript'> alert('No se pudo Registrar el Tipo de Pago'); window.location.href = '../../../mantenimientotipopago.php'; </script>";
        }
        
    }
// ----------------------------------------------------------------------------------------------------------------------------------  
// ----------------------------------------------------------------------------------------------------------------------------------    //Mantenimiento Tipo de Repuesto     
    function TipoRepuesto($Nombre)
    {
        self::setNames();
        $inf = 0;
        
        try
        {
           $sql = "INSERT INTO `tbl_tiporepuesto` (`Id_Tiporepuesto`, `Descripcion`, `Estado`) VALUES (NULL, '$Nombre', '1');";
           $result = $this->db->query($sql);
            echo "<script language='javascript'> alert('Tipo de Repuesto Guardado'); window.location.href = '../../../registrotiporesp.php'; </script>";
        }
          catch (Exception $e)
        {
             echo "<script language='javascript'> alert('No se pudo Registrar el Tipo de Repuesto'); window.location.href = '../../../mantenimientotiporesp.php'; </script>";
        }
        
    }
 // ----------------------------------------------------------------------------------------------------------------------------------
   //Mantenimiento Tipo de Repuesto     
    function Usuario($Nombre,$Apellido,$Pass)
    {
        self::setNames();
        $inf = 0;
        
        try
        {
           $encrypt=sha1($Pass);
           $sql = "INSERT INTO tbl_usuarios (`Id_Usuario`, `Nombre_Usuario`, `Correo_Usuario`, `Pasword_Usuario`, `Estado`) VALUES (NULL, '$Nombre', '$Apellido', '$encrypt', '1');";
           $result = $this->db->query($sql);
            echo "<script language='javascript'> alert('Usuario Registrado'); window.location.href = '../../../registrousuario.php'; </script>";
        }
          catch (Exception $e)
        {
             echo "<script language='javascript'> alert('No se pudo Registrar el Usuario'); window.location.href = '../../../mantenimientousuario.php'; </script>";
        }
        
    }
 // ----------------------------------------------------------------------------------------------------------------------------------
     
    
}

?>
