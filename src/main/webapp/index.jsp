<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<meta charset="utf-8">

<meta neme="author" content="Juan David Bohorquez">

<meta name="description" content="Ingrese o regístrese en la pagina Banco Divisas.">

<meta name="keywords" content="registro de usuario, formulario de registro, crear cuenta, registro en línea">

<meta name="viewport" content="width=device-width, initial-scale=1">

<head>

    <title> Login Banco el 😈Sinvergüenza </title>

    <link rel="icon" type="image/x-icon" href="./img/icon-divisas.svg">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="./css/styles.css">

    <link rel="stylesheet" href="./css/signin.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">

</head>
<body class="justify-content-center">

<div class="container">
    <div class="m-0 vh-100 row justify-content-center align-items-center ">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <img class="mb-4" src="./img/icon-divisas.svg" alt="Banco" width="100">
            <h2 class="mb-4">Login Banco Divisas</h2>
            <form action="#" method="post">
                <div class="form-group">
                    <label for="floatingInput">Usuario</label>
                    <i class="bi bi-file-person-fill"></i><input type="text" class="form-control" id="floatingInput" placeholder="Ingrese su Nombre de Usuario"  required autofocus
                           pattern="[A-Za-z0-9 ]{8,12}">
                </div>
                <div class="form-group">
                    <label for="floatingPassword">Contraseña</label>
                    <i class="bi bi-lock"></i><input  type="password" class="form-control" id="floatingPassword" placeholder="Ingrese su Contraseña" required pattern="[A-Za-z0-9 ]{8,12}"><br>

                    <button class="w-100 btn btn-lg btn-success" type="submit">Ingresar</button>
                </div>
                <div id="register">
                    <a href="registrationForm.jsp"> Registrarse </a>
                    <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados Banco Divisas
                        © <%=displayDate()%>
                    </p>

                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<%!
    public String displayDate(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
        Date date = Calendar.getInstance().getTime();
        return dateFormat.format(date);
    }
%>
</body>
</html>