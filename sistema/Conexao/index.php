<?php
$conn = new mysqli("localhost", "root", "", "testepro");

if (mysqli_connect_errno()) {
    die('Não foi possível conectar-se ao banco de dados: ' . 
         mysqli_connect_error());
    exit();
}

//echo "Success connection";

//mysqli_close($conn);
?>