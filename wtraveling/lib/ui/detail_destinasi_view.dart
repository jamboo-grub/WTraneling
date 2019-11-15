
import 'package:flutter/material.dart';

class DetailDestinasi extends StatefulWidget {
  
  List list;
  int index;
  DetailDestinasi({this.index, this.list});
  @override
  _DetailDestinasiState createState() => _DetailDestinasiState();
}

class _DetailDestinasiState extends State<DetailDestinasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${widget.list[widget.index]['name']}"),),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Card(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.network(widget.list[widget.index]['img'], width: 100, height: 170,),
                Text(widget.list[widget.index]['name'], style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}