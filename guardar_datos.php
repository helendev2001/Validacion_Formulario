<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $cedula = $_POST['cedula'];
    $telefono = $_POST['telefono'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $salario = $_POST['salario'];
    $email = $_POST['email'];
    $sitio_web = $_POST['sitio_web'];
    $contrasena = $_POST['contrasena'];
    $fecha_nacimiento = date("Y-m-d", strtotime($fecha_nacimiento));
    $host = 'localhost';
    $dbname = 'validaciondb';
    $username = 'root'; 
    $password = ''; 

    
    $conn = new mysqli($host, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Error al conectar con la base de datos: " . $conn->connect_error);
    }  
    $sql = "INSERT INTO usuarios (nombre, apellido, cedula, telefono, fecha_nacimiento, salario, email, sitio_web, contrasena) VALUES ('$nombre', '$apellido', '$cedula', '$telefono', '$fecha_nacimiento', '$salario', '$email', '$sitio_web', '$contrasena')";

    if ($conn->query($sql) === TRUE) {
        
        $conn->close();

        
        header("Location: datos_enviados.php");
        exit();
    } else {
        echo "Error al guardar los datos: " . $conn->error;
    }

    
    $conn->close();
} else {
    echo "Error: Método no permitido.";
}
?>
