/*Crea una extensión llamada CalculosDinero sobre el tipo List<double>.

--Dentro de la extensión, añade un Getter llamado sumaTotal que devuelva la suma de todos los elementos de la lista.

--Añade un Método llamado aplicarIVA(double porcentaje) que devuelva una nueva lista con el porcentaje de IVA aplicado a cada producto.

--Crea otra extensión llamada FormateoMoneda sobre el tipo double que añada un método llamado aEuros(). Debe devolver un String con el símbolo € al final (ej: 25.5.aEuros() -> "25.50€").*/ 


//Extension sobre Lizt<double> para añadir dos metodos 
//Uno para calcular el total y otro para añadir el IVA
extension CalculosDinero on List<double> {

  // Método  para sumar todos los valores de la lista
  double getTotal(){
     return this.fold<double>(0, (acc,number) => acc + number); 
  }
  //Método para aplicar iva 
  //map no devuelve una Lis, sino un iterable. Por eso hay que convertir a List
  List<double> applyVat( double vat){
     return this.map((price)=> price +(price*vat)).toList();
  }
}

//Extension sobre double para añadir un metodo de formateo a String. 
extension FormateoMoneda on double {

  // Método para devolver un String en euros, limitando el numero de decimales a 2
  String  parseToEuros()=> "${this.toStringAsFixed(2)}€";
}


void main(){
  const double VAT= 0.15;
  List<double> itemPrices= [40.45, 33.2,12.8,45.68,67.9];

   double total= itemPrices.getTotal();
   print("Total sin IVA: ${total.parseToEuros()}");

   List<double> itemPricesWithVat= itemPrices.applyVat(VAT);
   total = itemPricesWithVat.getTotal();
   print("Total con IVA: ${total.parseToEuros()}");

   //output
   
   //Total sin IVA: 200.03€
   //Total con IVA: 230.03€

}