import 'package:flutter/material.dart';
import 'package:flutternewapp/quotes.dart';
import 'package:flutternewapp/quote_card.dart';
  void main(){// From here execution of APP starts
runApp(    MaterialApp( home: MyApp(),),);
  }
class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    List<quotes> quote=[
     quotes( quote:'Hey nxaklsxc   dcv sd',author:'author'),
      quotes( quote:'Hey nxak lsxc   dcv sd',author:'author'),
      quotes( quote:'Hey nxaklsxc gfdsa  dcv sd',author:'author')
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(title: Text("Awesome Quotes",),backgroundColor: Colors.redAccent,),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:quote.map((e) {
return QuoteCard(quote:e,
delete:(){setState(() {
  quote.remove(e);
},
);
  } ,);
    }).toList(),
 ),
      ),
    );
  }
}

