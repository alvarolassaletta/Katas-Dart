/**La Cartera Digital (e-Wallet)"
Vamos a crear una función que gestione el dinero de una cuenta. El objetivo es que el saldo sea totalmente privado y solo se pueda modificar a través de la función que devuelve el closure.

Requisitos del reto:
Función Externa (crearCartera):

  Debe recibir un parámetro posicional opcional llamado saldoInicial (por defecto 0).

  Estado Privado: -> Una variable interna llamada saldo que se inicializa con el saldoInicial.

Función Interna (El Closure):

  Debe recibir un parámetro nombrado y obligatorio llamado monto.

  Debe recibir un parámetro nombrado opcional llamado concepto (por defecto "Sin concepto").

Lógica: Debe sumar el monto al saldo y mostrar el nuevo total. */

void main(){
  Function cartera = crearCartera(1000);
  
  cartera(monto:250.00,concepto:"Cena");
  cartera(monto:2500.00,concepto:"Nomina");
  cartera(monto:-999.99,concepto:"Compra ordenador");
  cartera(monto:10000.14, concepto: "Premio loteria");

/**Concepto:Cena, Cantidad: 250.0, Saldo total: 1250.0. 
Concepto:Nomina, Cantidad: 2500.0, Saldo total: 3750.0. 
Concepto:Compra ordenador, Cantidad: -999.99, Saldo total: 2750.01. 
Concepto:Premio loteria, Cantidad: 10000.14, Saldo total: 12750.15. */ 


}
     
     /*Function ahi en la declaracion indica el tipo de retorno, crear cartera deveulve una funcion*/
    // usar un parmentro posiconal opcional con vlaor por defecto 
Function crearCartera([double saldoInicial=0]){
  double saldo = saldoInicial;
    // la funcion anonima usa  parametros nombrados
  return ({required double monto,String concepto= "Sin concepto"}){
    saldo  +=monto;
    var buffer = StringBuffer()
    ..write("Concepto:$concepto, ")
    ..write("Cantidad: $monto, ")
    ..write("Saldo total: $saldo. ");

    print(buffer.toString());

  };

}
