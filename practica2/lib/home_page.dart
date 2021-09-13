import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            width: 200,
            height: 5,
            child: Column(
              children: [
                Text(
                  "Victor Alvarez",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  "Let's upgrade your skill.",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            //padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            width: 60,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage("assets/imagen2.jpg"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            _inputText(),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categorias",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text("View all")
              ],
            ),
            SizedBox(height: 10.0),
            Container(
                width: double.infinity,
                height: 500, //ERROR
                //color: Colors.amber,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                  ),
                  children: [
                    _card1("Coding", "12 Courses", "assets/coding.jpg"),
                    _card1("Trading", "18 Courses", "assets/trading.jpg"),
                    _card1("Cooking", "8 Courses", "assets/coking.jpg"),
                    _card1("Marketing", "10 Courses", "assets/marketing.jpg"),
                    _card1(
                        "Computadora", "10 Courses", "assets/computadora.jpg"),
                    _card1("Software", "10 Courses", "assets/software.jpg")
                  ],
                ))
          ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "")
        ],
      ),
    );
  }

  Widget _card1(texto, texto1, path) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 200.0,
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.cover,
                  )),
                )),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Text(texto,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                  Text(texto1)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputText() {
    return TextField(
      decoration: InputDecoration(
          hintText: "Buscar Curso",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          prefixIcon: Icon(Icons.search)),
    );
  }
}
