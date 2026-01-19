

/** 

El Escenario: "El Generador de Notificaciones"
Imagina que estás programando un sistema de alertas para una aplicación. Queremos una función externa que configure quién envía los mensajes, y que nos devuelva una función interna para enviar los mensajes reales.

Requisitos del código:
Función Externa (configuradorNotificaciones):

    Recibe un parámetro nombrado y obligatorio llamado remitente.

Función Interna (El Closure):

    Debe recibir un parámetro posicional obligatorio llamado mensaje.

    Debe recibir un parámetro opcional posicional llamado urgencia (un entero, por defecto 1).

Estado Privado:

La función externa debe tener una variable contadorMensajes que empiece en 0 y aumente cada vez que se envíe una notificación. */

void main(){
  final notificador = configurarNotificaciones(remitente:"Sistema de Alertas");

  notificador("Has cambiado la contraseña",2);
  notificador("Nuevo inicio de sesión detectado",3);
  notificador("Actualización disponible");
  notificador("Nuevo  número de telefono vinculador",3);

}


/*Function  es el tipo de retorno  */
Function configurarNotificaciones({required String remitente}){
  int mensajesEnviados = 0; 
  return (String mensaje,[int urgencia= 1]){
    mensajesEnviados++;
    print("De: $remitente");
    print("Mensaje: $mensaje"); 
    print("Urgencia: $urgencia");
    print("Total mensajes enviados: $mensajesEnviados");

  };

}