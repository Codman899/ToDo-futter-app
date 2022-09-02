import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
        title: const Text("User Guide(FAQ)", textAlign: TextAlign.start),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 5),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 660,
                  height: 75,
                  child: Card(
                    child: Text.rich(
                      TextSpan(children: [
                        const TextSpan(
                            text:
                                'App not working                                                         '),
                        WidgetSpan(
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            color: Colors.grey,
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text(
                                          "Please do follwing setting"),
                                      content: const Text(
                                        "Go into iManager => App Manager=>Autostartmanager=>allow'ToDo app'",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      actions: <Widget>[
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          // ignore: sort_child_properties_last
                                          child: const Text(
                                            "Cancel",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          // ignore: sort_child_properties_last
                                          child: const Text(
                                            "Got it",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    );
                                  });
                            },
                          ),
                        )
                      ]),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 70,
            color: Colors.white,
            child: Card(
              child: Text.rich(
                TextSpan(children: [
                  const TextSpan(
                      text:
                          'How can i add  new task?                                    '),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                        onPressed: () => context.go('null'),
                        child: const Text(
                          'Watch tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 70,
            color: Colors.white,
            child: Card(
              child: Text.rich(
                TextSpan(children: [
                  const TextSpan(
                      text:
                          'How do i enable/disable notification?               '),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                        onPressed: () => context.go('null'),
                        child: const Text(
                          'Watch tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 70,
            color: Colors.white,
            child: Card(
              child: Text.rich(
                TextSpan(children: [
                  const TextSpan(
                    text:
                        'How can i  Restore my information?                  ',
                  ),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                        onPressed: () => context.go('null'),
                        child: const Text(
                          'Watch tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 70,
            color: Colors.white,
            child: Card(
              child: Text.rich(
                TextSpan(children: [
                  const TextSpan(
                      text:
                          'How can i mark done to task?                             '),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                        onPressed: () => context.go('null'),
                        child: const Text(
                          'Watch tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 70,
            color: Colors.white,
            child: Card(
              child: Text.rich(
                TextSpan(children: [
                  const TextSpan(
                      text:
                          'Where i can see my tasks?                                   '),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                        onPressed: () => context.go('null'),
                        child: const Text(
                          'Watch tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            height: 70,
            color: Colors.white,
            child: Card(
              child: Text.rich(
                TextSpan(children: [
                  const TextSpan(
                      text:
                          'How can i delete Special Day?                             '),
                  WidgetSpan(
                    child: Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: TextButton(
                        onPressed: () => context.go('null'),
                        child: const Text(
                          'Watch tutorial',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ]),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
