/*El Escenario: Sistema de Smart Home (Hogar Inteligente)
Imagina que estás programando el cerebro de una casa inteligente. Tienes diferentes tipos de dispositivos: Cámaras, Luces y Altavoces.

  Tus herramientas:
  -- Clase Base: DispositivoElectronico (Todos tienen un nombre y se pueden encender/apagar).

  --Mixin ConectividadWifi: Solo para dispositivos que pueden conectarse a internet.

  --Mixin ControlDeBrillo: Solo para dispositivos que emiten luz (aquí usarás el on).

  --Clase Camara: Es un dispositivo, tiene Wifi, pero NO tiene brillo.

  --Clase BombillaInteligente: Es un dispositivo, tiene Wifi y TIENE control de brillo.
  */


//Clase Base: DispositivoElectronico (Todos tienen un nombre y se pueden encender/apagar).
//Crea la clase abstracta DispositivoElectronico con un método switchEnergia().

class ElectronicDevice {
  String name; 
  bool isOn= false;
  
  ElectronicDevice(this.name);

  void turnOn () => this.isOn=true;
  void turnOff() => this.isOn = false; 

  String getName()=> this.name;
  bool getOnOffStatus ()=>  this.isOn; 

}

//Mixin ConectividadWifi: Solo para dispositivos que pueden conectarse a internet.
//Crea un mixin llamado ConectividadWifi que tenga un método conectarAlRouter().

/*La palabra reservada on indica que  ese mixin solo se puede utilziar por  la clase Electronic Device y que dentro del mixin se pueden utilizar los metodos de la Electronic Device */
mixin WifiConnectivity on ElectronicDevice{
  void  connectWifi()=>print("Dispositivo ${this.getName()} conectado al wifi");
}

// mixin llamado ControlDeBrillo restringido (on) para que solo pueda usarse en clases que hereden de 
//DispositivoElectronico. Añade un método ajustarIntensidad(int nivel).

mixin BrightnessAdapter on ElectronicDevice{
  
   void adjustIntensity(int level){
      print("Nivel de intensidad fijado en nivel $level en dispositivo ${this.getName()}");
   }
}

//Clase Camara: Es un dispositivo, tiene Wifi, pero NO tiene brillo.

/**Cuando una clase hereda de otra  y la clase padre tiene un constructor con argumentos,  en la clase hija 
 * el constructor debe tener un paramentro para el atributo y hay que utlizar super:()
 */
class Camara extends ElectronicDevice with  WifiConnectivity{
  String model; 
  Camara(String name, this.model ) :super(name);

  String getModel()=>this.model;
  
}

//Clase BombillaInteligente: Es un dispositivo, tiene Wifi y TIENE control de brillo
class SmartLightBulb extends ElectronicDevice with WifiConnectivity,BrightnessAdapter {
  String color;
  SmartLightBulb(String name,this.color): super (name);

  String getColor()=> this.color;
}

void main(){

  //--------------
  //  CAMARA
  //--------------

  //instancia de la clase camara
  Camara camaraObject=  new Camara("Mi primera camara", "Canon fx9000");
  //vamos a llamar a los metodos 

  print("Nombre de la cámara: ${camaraObject.getName()} Modelo: ${camaraObject.getModel()}");
  
  //encendemos la camara 
  camaraObject.turnOn();
  print("Camara ${camaraObject.getName()} encendida");

  //apagamos la camara 
  camaraObject.turnOff();
  print("Camara ${camaraObject.getName()} apagada");

  //comprobamos que esta apagada
  if(camaraObject.getOnOffStatus()){
    print("La camara esta encendida");
  }else{
    print("La camara esta apagada");
  }

  //Conectamos la camara a Internet 
  camaraObject.connectWifi();



  //--------------
  //  BOMBILLA
  //--------------

  SmartLightBulb smartBulb= new SmartLightBulb("Bombilla Despacho","Luz blanca ");

  //obtener el nombre
  print("Bombilla: ${smartBulb.getName()}");
  //obtener el color 
  print("Color de la bombilla: ${smartBulb.getColor()}");

  //encender la bombilla
  smartBulb.turnOn();

  //apagar la bombilla
  smartBulb.turnOff();

  //comprobar si esta encendida 
   if(smartBulb.getOnOffStatus()){
    print("La bombilla esta encendida");
   } else{
    print("La bombilla esta apagada");
   }

  //conectar la bombilla a internete 
   smartBulb.connectWifi();

   //ajustar intensidad

   smartBulb.adjustIntensity(3);



  
   



}