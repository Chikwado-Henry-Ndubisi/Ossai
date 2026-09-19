import 'package:flutter/material.dart';
class QuotePage extends StatefulWidget{
  @override State<QuotePage> createState()=> _QuotePageState();
}
class _QuotePageState extends State<QuotePage>{
  int quotesWatched=0;
  List<String> quotes=["You are strong mama","Your baby loves you","Every kick is love","God is with you"];
  @override Widget build(BuildContext context){
    return Scaffold(
      body: Column(children:[
        Expanded(child: ListView.builder(
          itemCount: 4,
          itemBuilder: (_,i)=> Card(child: ListTile(title: Text(quotes[i]), subtitle: Text("Source: ZenQuotes API"))))
        )),
        ElevatedButton(onPressed: (){
          // watch 10 rewarded ads
          quotesWatched+=4;
          // unlock ads
        }, child: Text("Watched 4 Quotes - Unlock 10 Ads"))
      ])
    );
  }
}
