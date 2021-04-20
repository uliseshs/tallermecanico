<!DOCTYPE html>
<html>
<head>
    <title>Usuarios registrados</title>
</head>
<body>

<table border="1">
    <tr>
        <th>Id de cliente</th>
        <th>Nombre</th>
        <th>Apellido paterno</th>
        <th>Apellido materno</th>
        <th>Numero de telefono</th>
        <th>Correo</th>
    </tr>

    @foreach($usuario as $dato)
        <tr>
            <td><a href={{route('agendar.cita')}}>{{$dato->id_cliente}}</a></td>
            <td>{{$dato->nombre}}</td>
            <td>{{$dato->apellidoPaterno}}</td>
            <td>{{$dato->apellidoMaterno}}</td>
            <td>{{$dato->numeroTelefono}}</td>
            <td>{{$dato->Correo}}</td>


   </tr>
    @endforeach

</table>
</body>
</html>
