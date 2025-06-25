<?php
require '../Config/Config.php';

if (!isset($_SESSION)) {
    session_start();
}

if (isset($_POST['login'])) {
    $errMsg = '';

    $usuario = $_POST['usuario'];
    $clave = $_POST['clave']; // No encriptamos

    if ($usuario == '') {
        $errMsg = 'Digite su usuario';
    }
    if ($clave == '') {
        $errMsg = 'Digite su contraseña';
    }

    if ($errMsg == '') {
        try {
            $stmt = $connect->prepare('SELECT id, usuario, nombre, correo, clave, rol FROM usuarios WHERE usuario = :usuario');
            $stmt->execute([':usuario' => $usuario]);
            $data = $stmt->fetch();

            if ($data == false) {
                $errMsg = "Usuario $usuario no encontrado.";
            } else {
                if ($clave == $data->clave) {
                    $_SESSION['id'] = $data->id;
                    $_SESSION['nombre'] = $data->nombre;
                    $_SESSION['usuario'] = $data->usuario;
                    $_SESSION['correo'] = $data->correo;
                    $_SESSION['clave'] = $data->clave;
                    $_SESSION['rol'] = $data->rol;

                    if ($_SESSION['rol'] == 1) {
                        header('Location: admin/pages-admin.php');
                    } else if ($_SESSION['rol'] == 2) {
                        header('Location: panel-cliente/cliente.php');
                    }
                    exit;
                } else {
                    $errMsg = 'Contraseña incorrecta.';
                }
            }
        } catch (PDOException $e) {
            $errMsg = $e->getMessage();
        }
    }
}
?>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <title>Sistema Escolar</title>
    <link href="../Assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="../Assets/css/style.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 col-centered">
            <div class="login-panel">
                <form method="POST" autocomplete="off">
                    <h4 class="login-panel-title">Sistema Escolar UTA</h4>
                    <p class="login-panel-tagline">Para conectarse al sistema escolar es importante solicitar un usuario a la institución.</p>
                    <?php if (isset($errMsg)) {
                        echo '<div style="color:#FF0000;text-align:center;font-size:20px;">' . $errMsg . '</div>';
                    } ?>
                    <div class="login-panel-section">
                        <div class="form-group">
                            <div class="input-group margin-bottom-sm">
                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                <input class="form-control" name="usuario" required type="text" placeholder="Nombre del usuario" value="<?php echo isset($_POST['usuario']) ? $_POST['usuario'] : ''; ?>">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
                                <input class="form-control" name="clave" required type="password" placeholder="Contraseña">
                            </div>
                        </div>
                        <div class="checkbox">
                            <input type="checkbox" id="checkbox1">
                            <label for="checkbox1">Recuérdame</label>
                            <a href="#" class="pull-right">¿Olvidaste la contraseña?</a>
                        </div>
                    </div>
                    <div class="login-panel-section">
                        <button type="submit" name="login" class="btn btn-default">
                            <i class="fa fa-sign-in fa-fw"></i> Iniciar sesión
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="../Assets/js/jquery.min.js"></script>
<script src="../Assets/js/bootstrap.min.js"></script>
</body>
</html>
