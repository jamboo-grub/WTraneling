import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      appBar: AppBar(
        title: Text("${widget.list[widget.index]['name']}"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
      children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
        
          child: Center(
            child: Column(

              children: <Widget>[
                
             
                Container(
                  
                  child: Image.network(
                    widget.list[widget.index]['img'],
                    
                  ),
                ),

                Text(
                  widget.list[widget.index]['name'],
                  style: TextStyle(fontSize: 27),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  
                    child: Text(
                      widget.list[widget.index]['diskeripsi'],
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                  
                ),
              ],
            ),
          ),
        
      ),
      ],
      ),
    );
  }
}
