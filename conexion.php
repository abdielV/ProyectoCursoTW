<?php 
    function conectConn(){//Devuelve la conexion a mysql
        $host = "localhost";
        $username = "root";
        $password= "";
        $db = "escprimaria";
        $conn = new mysqli($host,$username,$password,$db);
        return $conn;
    }

    function verifyConn($conn){//Devuelve 0 si hay un problema para conectarse a la BD y 1 en caso contrario
        if($conn -> connect_errno){
            return 0;
        }else{
            return 1;
        }
    }
?>