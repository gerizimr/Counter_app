import 'package:flutter/material.dart';
import 'package:animated_flip_counter/animated_flip_counter.dart';



class BonusScreen extends StatefulWidget {  @override
  State<BonusScreen> createState() => _BonusScreenState();           // automaticamente al pasar a statefulwidget, crea el estado
}

class _BonusScreenState extends State<BonusScreen> {
     // pasamos de statelesswidget a statefullwidget ya que necesitamos iteraccion en el boton
  int counter = 0;  
  // agregando contador, variable que podamos manipular
  @override
Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child:   AnimatedFlipCounter(
          duration: Duration(milliseconds: 500),
          prefix: 'Level  ',   // para que aparezca de forma lineal el texto
          value: counter,
          textStyle: TextStyle(fontSize: 60), // pass in a value like 2014
        )
    ),   
    floatingActionButton: _buttons(),      // con control .  selecciono extraer metodo
   ); // se pone un ; porque esta haciendo un return
  }

  Widget _buttons() {  // se pone Widget por si vamos agregar mas botones
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(   // para agregar un boton 
        child: Icon( Icons.add),                    // para agregarle el icono de mas
        onPressed: () {   
          //counter++; // para presionar el boton // agregando contador tambien se puede poner counter += 1;
          //print(counter); // imprimiendo el contador
          setState(() => counter++ ); // al pasar a statefullwidgets, puedo usar esta funcion para establecer el estado de la variable
        }
  ),
  SizedBox(height: 10,),    // es una caja vacia,  se puede colocar para dejar espacio entre iconos
  FloatingActionButton(   // para agregar un boton 
        child: Icon( Icons.remove),  // para agregarle el icono de menos
        backgroundColor: Colors.red,  // agregarle color al boton
        onPressed: () {   
          //if( counter > 0 ) counter --;  // se puede usar el if para que reduzca siempre que sea mayor a 0
          //setState(() {}); // al pasar a statefullwidgets, puedo usar esta funcion para establecer el estado de la variable
        if( counter > 0 ) {     // tambien podemos usar esta forma paa que el remove -- se reduzca solo si es >0 
          setState(() => counter --);            
          }
        }
      ),
  
  SizedBox(height: 10,),    // es una caja vacia,  se puede colocar para dejar espacio entre iconos
  FloatingActionButton(   // para agregar un boton 
        child: Icon( Icons.exposure_zero),   // para agregarle el icono de restablecer a cero
        backgroundColor: Colors.green,  // agregando color al boton
        onPressed: () {   
          setState(() => counter = 0 ); // al pasar a statefullwidgets, puedo usar esta funcion para establecer el estado de la variable
        }
  ),
      ],
    );
  }
}