import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<QuoteList> {
  List<Quote> quotes = [ 
    Quote(text: 'Be yourself; everyone else is already taken.', author: 'Oscar Wilde'),
    Quote(text: 'Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.', author: 'Albert Einstein'),
    Quote(text: 'So many books, so little time.', author: 'Frank Zappa'),
    Quote(text: 'A room without books is like a body without a soul.', author: 'Marcus Tullius Cicero'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            }

            );
          }
          
          
          )).toList(),
    ));
  }
}




