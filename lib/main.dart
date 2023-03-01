

import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  @override
  build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State createState() => HomeState();

}

class HomeState extends State{
  int contador = 0;

  void click(){
    setState(() {
      contador++;
    });
  }
  @override
  build(context){
    return Scaffold(
      appBar: AppBar(title: const Text("Contador"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("O contador vale $contador",
            style:const TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold
            ),
            
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:click ,
        child: const Icon(Icons.add),
      ),
    );
  }
}