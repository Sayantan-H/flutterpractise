import 'package:flutter/material.dart';

class NinjaID extends StatefulWidget {
  const NinjaID({super.key});

  @override
  State<NinjaID> createState() => _NinjaIDState();
}

class _NinjaIDState extends State<NinjaID> {
  
  int ninjalevel=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Ninaja ID Card",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        ),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),

      body:  Padding(
        padding: const EdgeInsets.fromLTRB(30,40,30,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/ninja1.jpg'),
              ),
            ),

          Divider(
            height: 90,
            color: Colors.grey[800],
          ),

          const SizedBox(height: 10,),

          Text('NAME',
          style: TextStyle(
            color: Colors.grey[400],
            letterSpacing: 2,
            ),
          ),

          const Text('Chun-Li',
          style: TextStyle(
            color: Colors.amber,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            ),
          ),

          const SizedBox(height: 20,),

          Text('CURRENT NINJA LEVEL',
          style: TextStyle(
            color: Colors.grey[400],
            letterSpacing: 2,
            ),
          ),
          
          Text('$ninjalevel',
          style: const TextStyle(
            color: Colors.amber,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            ),
          ),

          const SizedBox(height: 20,),

          Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.grey[400],
              ),

              const SizedBox(width: 10,),

              Text("chun.li@thenetninja.co.uk",
              style: TextStyle(color: Colors.grey[400],
              letterSpacing: 1,
              ),
              )
            ],
          ),
          
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel++; 
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add,
        color: Colors.white,),
        ),
    );
  }
}