import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:go_router/go_router.dart';
import 'package:todo_application_1/Drawer/rate.dart';

import '../model/user.dart';

class MainDrawer extends ConsumerWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Builder(builder: (context) {
      return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(18),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: SizedBox(
                      height: 50,
                      child: Card(
                        child: Text.rich(
                          TextSpan(children: [
                            const WidgetSpan(
                              child: Icon(Icons.list,
                                  color: Colors.blue, size: 30),
                            ),
                            const TextSpan(text: ' To Do Tasks             '),
                            WidgetSpan(
                              child: IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                color: Colors.black,
                                onPressed: () => Navigator.pop(context),
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
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: SizedBox(
                      height: 50,
                      child: Card(
                        child: Text.rich(
                          TextSpan(children: [
                            const WidgetSpan(
                              child: Icon(Icons.celebration,
                                  color: Colors.blue, size: 30),
                            ),
                            const TextSpan(text: ' Special Days           '),
                            WidgetSpan(
                              child: IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                color: Colors.black,
                                onPressed: () => context.go('/'),
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
                  ),
                ],
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: SizedBox(
                height: 50,
                child: Card(
                  child: Text.rich(
                    TextSpan(children: [
                      const WidgetSpan(
                        child: Icon(Icons.backup_outlined,
                            color: Colors.grey, size: 30),
                      ),
                      const TextSpan(text: ' Back/Restore           '),
                      WidgetSpan(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.black,
                          onPressed: () => context.go('null'),
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
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: SizedBox(
                height: 50,
                child: Card(
                  child: Text.rich(
                    TextSpan(children: [
                      const WidgetSpan(
                        child: Icon(Icons.settings_outlined,
                            color: Colors.grey, size: 30),
                      ),
                      const TextSpan(text: ' Settings                   '),
                      WidgetSpan(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.black,
                          onPressed: () => context.go('null'),
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
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: SizedBox(
                height: 50,
                child: Card(
                  child: Text.rich(
                    TextSpan(children: [
                      const WidgetSpan(
                        child: Icon(Icons.bug_report_outlined,
                            color: Colors.grey, size: 30),
                      ),
                      const TextSpan(text: ' Report Bug              '),
                      WidgetSpan(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.black,
                          onPressed: () => context.go('/bug'),
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
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: SizedBox(
                height: 50,
                child: Card(
                  child: Text.rich(
                    TextSpan(children: [
                      const WidgetSpan(
                        child: Icon(Icons.thumb_up_alt_outlined,
                            color: Colors.grey, size: 30),
                      ),
                      const TextSpan(text: ' Rate Us                   '),
                      WidgetSpan(
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          color: Colors.black,
                          onPressed: () => showDialog(
                            context: context,
                            builder: (ctx) => const AlertDialog(
                              title: Rate(),
                            ),
                            barrierDismissible: false,
                          ),
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
            ),
            ListTile(
              title: TextButton(
                onPressed: () => context.go('/faq'),
                child: const Text(
                  ' USER GUIDE(FAQ)',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: () => context.go('/contact'),
                child: const Text(
                  'CONTACT US',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: () => context.go('/legal'),
                child: const Text(
                  ' LEGAL',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  ref.read(userProvider.notifier).logout();
                },
                // ignore: sort_child_properties_last
                child: const Text(
                  ' Logout',
                ),
                style: ElevatedButton.styleFrom(primary: Colors.red),
              ),
            ),
          ],
        ),
      );
    });
  }
}
