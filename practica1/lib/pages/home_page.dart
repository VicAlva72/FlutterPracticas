

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       body: Column(
         children: [
             Container(
               width: double.infinity,
               height: 300.0,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/Volcan-Cotopaxi.jpg") 
                   )
                 ),
              ),
          SizedBox(height: 20.0),
          Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [  
                      Column
                      (
                        children: 
                        [                    
                          Text("Volcan Cotopaxi", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Latacunga - Ecuador", style: TextStyle(color: Colors.blueGrey[300])),
                        ],
                      ),
                   SizedBox(width: 120.0),
                    Column
                    (
                      children: 
                      [
                          Icon(Icons.star , color: Colors.red ),    
                      ],
                    ),
                  
                    Column
                   (
                     children: 
                     [
                       Text("5897 msnm"),     
                     ],
                   ),
                  
                    ],
                  )
                ),
                
                Container(
                  width: double.infinity,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [  
                      Column(children: [
                        Icon(Icons.call),
                        Text("CALL" ),
                         ],
                      ),
                     SizedBox(width: 40.0),
                      Column(children: [
                        Icon(Icons.arrow_circle_down_outlined),
                        Text("ROUTE" ),
                        ],
                      ),
                      SizedBox(width: 40.0),
                      Column(children: [
                        Icon(Icons.share),
                        Text("SHARE" ),
                        ],
                      ),

                    ],
                  )
                ),
                
                ]
              ),
            SizedBox(height: 20.0),
            Container(
              width: 350.0,
              height: 200.0,
              child: Text("El Cotopaxi es un estratovolcán activo que se encuentra en la ciudad de Latacunga, Provincia de Cotopaxi, República del Ecuador. Con una elevación de 5897 m s. n. m., es el segundo volcán más alto del país —sólo superado por el Chimborazo. Está situado a 33 km al noreste de la ciudad de Latacunga y a 50 km al sur de Quito. Su última gran erupción se remonta al 26 de junio de 1877", textAlign: TextAlign.justify,)
            ),
            
          ],
         )
          
    );
  }
}