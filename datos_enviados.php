<!DOCTYPE html>
<html>
<head>
    <title>Datos Enviados</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Datos Enviados desde el Formulario</h1>
    <?php  
    $host = 'localhost';
    $dbname = 'validaciondb';
    $username = 'root'; 
    $password = '';   
    $conn = new mysqli($host, $username, $password, $dbname);    
    if ($conn->connect_error) {
        die("Error al conectar con la base de datos: " . $conn->connect_error);
    }
    $sql = "SELECT * FROM usuarios";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {   
        echo "<table>";
        echo "<tr>";
        echo "<th>Nombre</th>";
        echo "<th>Apellido</th>";
        echo "<th>Cédula</th>";
        echo "<th>Teléfono</th>";
        echo "<th>Fecha de Nacimiento</th>";
        echo "<th>Salario</th>";
        echo "<th>Email</th>";
        echo "<th>Sitio Web</th>";
        echo "<th>Contraseña</th>";
        echo "</tr>";

        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["nombre"] . "</td>";
            echo "<td>" . $row["apellido"] . "</td>";
            echo "<td>" . $row["cedula"] . "</td>";
            echo "<td>" . $row["telefono"] . "</td>";
            echo "<td>" . $row["fecha_nacimiento"] . "</td>";
            echo "<td>" . $row["salario"] . "</td>";
            echo "<td>" . $row["email"] . "</td>";
            echo "<td>" . $row["sitio_web"] . "</td>";
            echo "<td>" . $row["contrasena"] . "</td>";
            echo "</tr>";
        }

        echo "</table>";
    } else {
        echo "No se encontraron datos.";
    } 
    $conn->close();
    ?>
</body>
</html>
