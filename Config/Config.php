<?php
if (!isset($_SESSION)) { 
    session_start(); 
} 

// Define database
define('dbhost', 'localhost');
define('dbuser', 'root');
define('dbpass', '');
define('dbname', 'sistema_escolar');

// Connecting database
try {
    $connect = new PDO("mysql:host=".dbhost.";dbname=".dbname, dbuser, dbpass);
    $connect->query("SET NAMES utf8;");
    $connect->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $connect->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

    // ✅ Prueba de conexión
    // Solo para depuración, puedes quitarlo después
    echo "✅ Conexión exitosa a la base de datos: <strong>" . dbname . "</strong><br>";

} catch(PDOException $e) {
    echo "❌ Error de conexión: " . $e->getMessage();
    exit;
}

// Función para rutas absolutas
function base_url() {
    return "http://localhost/Sistema-escolar/";
}
?>
