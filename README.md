| Prueba para Desarrollador Backend |

API que cumpliese la función de registrar la información básica del usuario, un documento de identidad y un registro de contacto, realizando las validaciones pertinentes para evitar usuarios duplicados y almacenar de forma segura la contraseña. Se recomienda usar Postman.

Para registrar un usuario se debe ingresar mediante body(x-www-form-urlencoded) los siguientes campos: lastName (string), name (string), militar (bool; 1 o 0), date, temporal (bool; 1 o 0), username (string), password (string), email (string), email_verified (string), token (string), document (string), type_document (string), place_expedition (string), date_expedition (date). POST entry point -> localhost:4000/register

Para iniciar el proyecto:

1- Instalar dependencias con npm instal

2- Iniciar el proyecto con npm start que ocupará el puerto 4000.

Se recomienda usar la base de datos compartido en el proyecto.

¡¨¨¨DATO IMPORTANTE¨¨!

Se desarrollo el proyecto con Docker de manera local (uso de docker-compose), por lo que para poder ejecutar el proyecto desde otro dispositivo se deberán cambiar las credenciales y configuraciones en el archivo config.json ubicado en la carpeta config que esta dentro de la carpeta database. Adicionalmente, se agrega la propiedad "port" al archivo config.json para lograr enlazar la base de datos, por lo que esta propiedad puede llegar a afectar la ejecución del proyecto.