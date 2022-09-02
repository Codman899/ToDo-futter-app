import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_application_1/model/user.dart';

import '../model/user.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: unused_local_variable
    final height = MediaQuery.of(context).size.height;
    // ^cause widget to rebuild automatically when user rotate phone
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final styles = theme.textTheme;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey, //Global key
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 225,
                      width: 510,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Lottie.network(
                          'https://assets7.lottiefiles.com/packages/lf20_ucbyrun5.json'),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Sign In',
                      style: styles.headlineLarge,
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter username";
                        } else {
                          return null;
                        }
                      },
                      // take input from users
                      keyboardType: TextInputType.emailAddress,
                      onChanged:
                          (value) {}, // apply condition only @ /.com format of email is accepted
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined),
                        labelText: 'Email',
                        hintText: 'Enter email',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter correct password";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          labelText: 'Password',
                          hintText: 'Enter password'),
                    ),
                    const SizedBox(height: 24),
                    MaterialButton(
                      color: scheme.primaryContainer,
                      padding: const EdgeInsets.all(20),
                      disabledColor: Colors.lightGreen,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ref.read(userProvider.notifier).login(
                                "myEmail",
                                "myPassword",
                              );
                        }
                      },
                      child: const Text('Sign In'),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 18),
                        ),
                        TextButton(
                            onPressed: () => context.go('/register'),
                            child: Text(
                              'Sign Up',
                              style: styles.button!.copyWith(
                                  fontSize: styles.bodyLarge!.fontSize),
                            ))
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
