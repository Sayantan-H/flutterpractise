import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {

  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text("COUNTER",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
          ),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),

        body:   Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("You have pressed the button this many times",
            style: TextStyle(
              color: Colors.grey[800],
              fontFamily: 'IndieFlower',
            ),
          ),

          const SizedBox(height: 5,),

            Text('$counter',
            style: TextStyle( 
              color: Colors.grey[800],
              fontSize: 35,
            ),
          ),
          
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        
    );
  }
}