import 'package:flutter/material.dart';

import 'main.dart';

class CampReadPage extends StatelessWidget {
  final int index;
  const CampReadPage({Key key, this.index}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Center(
      child: CampCardRead(campList: data[index]),
    );
  }
}

class CampCardRead extends StatelessWidget {
  const CampCardRead({Key key, this.campList}) : super(key: key);
  final Camp campList;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("By.u Camp"),
        centerTitle: true,
      ),
      body: new Container(
        child: Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                new Container(
                    padding: const EdgeInsets.all(0),
                    child: Image.network(campList.imglink)),
                new Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(campList.title,
                          style: Theme.of(context).textTheme.title),
                      Text(campList.location,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5))),
                      Text(campList.description),
                    ],
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
      ),
    );
  }
}
