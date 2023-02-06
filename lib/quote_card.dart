import 'package:flutter/material.dart';
import 'package:flutternewapp/quotes.dart';

class QuoteCard extends StatelessWidget {
  final quotes quote;

  var delete;//final means this not gonna chamhnge over time;

  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(

      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Column(
        children: [
          Text("${quote.author}"),
          SizedBox(height: 15.0),
          Text("${quote.quote}"),
          ElevatedButton.icon(onPressed: delete,
            icon:Icon( Icons.delete),
            label: Text("Delete"),

          ),
        ],
      ),
    );
  }
}

