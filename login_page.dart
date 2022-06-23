import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_dexperta/homescreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _build() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Dexperta Login',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: 20,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'email', border: OutlineInputBorder()),
                    ),
                    Container(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: 'password', border: OutlineInputBorder()),
                    ),
                    Container(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)))),
                        onPressed: () {
                          if (email == 'diego.14@gmail.com' &&
                              password == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('Entrada negada');
                          }
                        },
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              'entrar',
                              textAlign: TextAlign.center,
                            ))),
                    Container(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)))),
                            onPressed: () {},
                            child: Text('Google')),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)))),
                            onPressed: () {},
                            child: Text('Facebook')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color.fromARGB(255, 170, 25, 218),
          ),
          _build()
        ],
      ),
    );
  }
}
