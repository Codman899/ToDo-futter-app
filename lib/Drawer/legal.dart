import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Legal extends StatefulWidget {
  const Legal({Key? key}) : super(key: key);

  @override
  State<Legal> createState() => _LegalState();
}

class _LegalState extends State<Legal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text('Legal'),
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 5),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15, left: 5),
                child: const Text(
                  'Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 15),
          child: const Text(
            'We value the trust you place in us and recognize the importance of secure transactions and information privacy.the terms and conditions of this Privacy Policy, the Terms of Use and the applicable service/product terms and conditions, and agree to be governed by the laws of India including but not limited to the laws applicable to data protection and privacy. If you do not agree please do not use or access our Platform. ',
            style: TextStyle(fontSize: 17),
          ),
        )
      ]),
    );
  }
}
