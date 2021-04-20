<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"  integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Cliente nuevo</title>
</head>
<body>

<center>
    <div class="card o-hidden border-0 shadow-lg my-5 bg-transparent align-items-center">
        <form method="post" action="{{route("citas.agenda")}}">
            @csrf
            <h1 class="h5 text-dark mb-4 text-center">Nombre del cliente</h1>
            <div class="form-group">
                <input style="font-size: 1rem; color: black" type="text" class="form-control  form-control-user"
                       placeholder="Nombre" name="nombrecliente" required value="">
            </div>

            <h1 class="h5 text-dark mb-4 text-center">Tipo de coche</h1>
            <div class="form-group">
                <input style="font-size: 1rem; color: black" type="text" class="form-control  form-control-user"
                       placeholder="" name="coche" required>
            </div>

            <h1 class="h5 text-dark mb-4 text-center">Falla mecanica</h1>
            <div class="form-group">
                <input style="font-size: 1rem; color: black" type="text" class="form-control  form-control-user"
                       placeholder="" name="falla" required>
            </div>

            <h1 class="h5 text-dark mb-4 text-center">Día de entrega</h1>
            <div class="form-group">
                <input style="font-size: 1rem; color: black" type="text" class="form-control  form-control-user"
                       placeholder="" name="enterga" required >
            </div>


            <br>
            <br>
            <div>

                <input type="submit" value="Agendar cita" class="btn btn-outline-success">

            </div>

            <br>
            <br>
        </form>
    </div>
</center>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
</body>
</html>
