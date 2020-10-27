<?php

include ("../Datos/Datos.php");

// Datos Mantenimiento CLientes
$Cl  = $_POST['cliente'];
$Nombre  = $_POST['Nombre'];
$Nit = $_POST['Nit'];
$Direccion  = $_POST['Direccion'];
// -------------------------------------------------------------------

//Datos Mantenimiento Proveedores
$prove  = $_POST['proveedor'];
$Nombre1  = $_POST['Nombre'];
$Nit1 = $_POST['Nit'];
$Direccion1  = $_POST['Direccion'];
// -------------------------------------------------------------------

//Datos Mantenimiento TipoPago
$Tpago  = $_POST['TPago'];
$Nombre2  = $_POST['Nombre'];
// -------------------------------------------------------------------

//Datos Mantenimiento TipoRepuesto
$TRep = $_POST['TRep'];
$Nombre3  = $_POST['Nombre'];
// -------------------------------------------------------------------

//Datos Mantenimiento Usuario
$user = $_POST['usuario'];
$Nombre4  = $_POST['Nombre'];
$Apellido  = $_POST['Apellido'];
$Pass  = $_POST['Clave'];
// -------------------------------------------------------------------

$action = '';
    if (($Cl != NULL) or ($prove != null) or ($Tpago != null) or ($TRep != null) or ($user != null))
    {
        $action = $Cl ;
        $action1 = $prove;
        $action2 = $Tpago;
        $action3 = $TRep;
        $action4 = $user;
        $global = $action.$action1.$action2.$action3.$action4;
       
        switch ($global)  
        {
            case 'Cliente' : 
                MantenmientoCliente($Nombre,$Nit,$Direccion); 
            break;
            case 'Proveedor' : 
                MantenmientoProveedor($Nombre1,$Nit1,$Direccion1); 
            break; 
            case 'Pago' : 
                MantenmientoTipoPago($Nombre2); 
            break; 
            case 'Repuesto' : 
                MantenmientoTipoRepuesto($Nombre3); 
            break; 
            case 'Usuario' : 
                MantenmientoUsuario($Nombre4,$Apellido,$Pass); 
            break; 
        }
    }

//Mantenimiento Clientes
function MantenmientoCliente($Nombre,$Nit,$Direccion) 
{
    $capa = new Mantenimientos();
    return $capa->Clientes($Nombre,$Nit,$Direccion);
}
//--------------------------------------------------------
//Mantenimiento Proveedores
function MantenmientoProveedor($Nombre1,$Nit1,$Direccion1) 
{
    $capa = new Mantenimientos();
    return $capa->Proveedores($Nombre1,$Nit1,$Direccion1);
}
//--------------------------------------------------------
//Mantenimiento TipoPago
function MantenmientoTipoPago($Nombre2) 
{
    $capa = new Mantenimientos();
    return $capa->TipoPago($Nombre2);
}
//--------------------------------------------------------
//Mantenimiento TipoPago
function MantenmientoTipoRepuesto($Nombre3) 
{
    $capa = new Mantenimientos();
    return $capa->TipoRepuesto($Nombre3);
}
//--------------------------------------------------------
//Mantenimiento TipoPago
function MantenmientoUsuario($Nombre4,$Apellido,$Pass) 
{
    $capa = new Mantenimientos();
    return $capa->Usuario($Nombre4,$Apellido,$Pass);
}
//--------------------------------------------------------
?>
