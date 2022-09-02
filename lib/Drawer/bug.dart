import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bug extends StatelessWidget {
  const Bug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Report Bug'),
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 150),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Center(
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: const Text(
                    'We need your help!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 30, right: 25),
          child: const Text(
            'We hate bugs,error,and crashes.if you find any,please let us known so that we fix them.Sending screenshots would REALLY help us as well. Thanks!',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15, left: 185, right: 185),
          height: 50,
          width: 50,
          child: ElevatedButton(
            onPressed: () => context.go('/'),
            // ignore: sort_child_properties_last
            child: const Text(
              'Report Bug',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(primary: Colors.grey),
          ),
        )
      ]),
    );
  }
}
