import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:wtraveling/ui/detail_destinasi_view.dart';


class Destinasi extends StatefulWidget {
  @override
  _DestinasiState createState() => _DestinasiState();
}

class _DestinasiState extends State<Destinasi> {
  Future<List> getData() async {
    final response =
        await http.get('https://jumbau.000webhostapp.com/index.php/destinasi/');
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(
          title: Text("WTraveling"),
          backgroundColor: Colors.lightBlueAccent,
        ),
      ),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? ItemList(
                  list: snapshot.data,
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list == null ? 0 : list.length,
      itemBuilder: (context, i) {
        return Container(
          padding: const EdgeInsets.all(6),
          child: GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) =>
                    DetailDestinasi(list: list, index: i))),
            child: Card(
              child: ListTile(
                title: Text("${list[i]['name']}"),
                leading: Image.network("${list[i]['img']}",
                    width: 80.0, ),
                subtitle: Text("${list[i]['lokasi']}",),
              ),
            ),
          ),
        );
      },
    );
  }
}
