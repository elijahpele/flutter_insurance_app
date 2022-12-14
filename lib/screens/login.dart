import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/umbrella_text.dart';
import 'home_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> _usernameFormFieldKey = GlobalKey();
  final GlobalKey<FormFieldState<String>> _passwordFormFieldKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  _notEmpty(String value) => value != null && value.isNotEmpty;

  get values => ({
        'username': _usernameFormFieldKey.currentState?.value,
        'password': _passwordFormFieldKey.currentState?.value
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
               UmbrellaText()
            ]),
        leading: const Icon(
          CupertinoIcons.umbrella_fill,
          color: Colors.red,
          size: 38.0,
        ),
        backgroundColor: Colors.grey[50],
        shadowColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Container(
                //height: 150.0,
                //width: 475.0,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                    top: 40, bottom: 20, left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: const Text(
                  'Login',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),

            /*
              child: Center(
                child: Image.asset('assets/images/brain.png'),
              ),
              */

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                key: _usernameFormFieldKey,
                controller: userNameController,
                decoration: const InputDecoration(
                    labelText: 'Username', border: OutlineInputBorder()),
                validator: (value) =>
                    _notEmpty(value!) ? null : 'Username is required',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                key: _passwordFormFieldKey,
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
                validator: (value) =>
                    _notEmpty(value!) ? null : 'Password is required',
              ),
            ),
            Builder(builder: (context) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                    child: const Text('Log In'),
                    onPressed: () async {
                      if (Form.of(context)!.validate()) {
                        //var web = WebService();
                        var name = userNameController.text;
                        var pin = passwordController.text;
                        /*
                      var authenticated = await web.loginAuthenticationFromJSON(
                          name, pin);
                      if (authenticated) {
                        //Pass Username and Pin to next screeen
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                QuizConfigure(name, pin)));
                      }

                       */
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Home()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('LoginFailed')));
                      }
                    }),
              );
            }),
            Builder(builder: (context) {
              return TextButton(
                // TextButton
                child: const Text('Reset'),
                onPressed: () => Form.of(context)?.reset(),
              );
            })
          ],
        ),
      ),
    );
  }
}
