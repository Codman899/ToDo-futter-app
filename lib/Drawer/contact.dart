import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Contact Us'),
        centerTitle: true,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20, left: 25),
            width: 500,
            height: 45,
            color: Colors.white,
            child: const Text(
              'For any help,reach out to us! We are happy to serve you.',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 75, 72, 72)),
            ),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 15, left: 25),
            child: SizedBox(
              //width: 600,
              height: 50,
              width: 600,
              child: Card(
                child: RichText(
                    text: const TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.mail_outline,
                    color: Colors.grey,
                  )),
                  TextSpan(
                    text: '     Email:support@todo.in',
                    style: TextStyle(fontSize: 18),
                  ),
                ])),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            color: Colors.white,
            child: SizedBox(
              height: 50,
              width: 600,
              child: Card(
                child: RichText(
                    text: const TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.call,
                    color: Colors.grey,
                  )),
                  TextSpan(
                    text: '     Customer Support Number: 123555454545',
                    style: TextStyle(fontSize: 18),
                  ),
                ])),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
