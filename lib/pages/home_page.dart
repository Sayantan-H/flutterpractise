import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _selected=false;

  void toggleFavorite(){
    setState(() {
      _selected =!_selected;
    });
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text("Rough App", 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.white),
                  ),
          backgroundColor: Colors.grey[400],
          centerTitle: true,
        ),

        body: Card(
        child: ListTile(
          leading: Text('Favorite'),
          trailing: IconButton(onPressed: (){
            toggleFavorite();
          }, 
          icon: Icon(
            _selected ? Icons.favorite : Icons.favorite_outline,
            color: Colors.red,
          ),
        ),
      ), 


    ),
    );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Dummy App Bar',
//           style: TextStyle(
//             color: Colors.white
//           ),
//         ),
//         centerTitle: true,
//       ),

//       body: Card(
//         child: ListTile(
//           leading: Text('Mail me'),
//           trailing: IconButton(onPressed: (){
//             print("Mail sent");
//           }, icon: Icon(Icons.mail)),
//         ),
//       ),
//     );
//   }
// }