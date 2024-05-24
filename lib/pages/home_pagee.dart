import 'package:flutter/material.dart';

class HomePagee extends StatefulWidget {
  const HomePagee({super.key});

  @override
  State<HomePagee> createState() => _HomePageeState();
}

class _HomePageeState extends State<HomePagee> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      //APPBAR
      appBar: AppBar(
        title: const Text("ID Card", 
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      //BODY
      body:  Padding(
        padding:  const EdgeInsets.fromLTRB(20,30,20,0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninja1.jpg'),
                radius: 40,
              ),
            ),

            const Divider(
              height: 60,
              color: Colors.grey,
            ),

            const Text("NAME",
            style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey,
              ),
            ),
           const SizedBox(height: 10,),
            const Text("Chun-Li",
            style: TextStyle(
                letterSpacing: 2,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            
            const SizedBox(height: 30,),
            
            const Text("CURRENT NINJA LEVEL",
            style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey,
              ),
            ),
           const SizedBox(height: 10,),
            Text('$ninjaLevel',
            style: const TextStyle(
                letterSpacing: 2,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),

            const SizedBox(height: 30,),

            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),

                SizedBox(width: 10,),

                Text("chun.li@thenetninja.gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel++;
          });
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.add,color: Colors.white,),
      ),

    );
  }
}