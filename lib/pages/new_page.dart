import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/quote.dart';
import 'package:flutter_application_1/pages/quote_card.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself everyone else is already taken',),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius',),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple',),
  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,

      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title:  const Text(
          "Ouote List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
            fontFamily: 'IndieFlower'
          ),
        ),
        centerTitle: true,
      ),

      body:  Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
        ),

      
    );
  }
}

