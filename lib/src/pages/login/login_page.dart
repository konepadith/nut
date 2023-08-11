import 'package:flutter/material.dart';
import 'package:nut/src/pages/route.dart';

class LogingPage extends StatefulWidget {
  const LogingPage({super.key});

  @override
  State<LogingPage> createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  //ປະກາດຕົວປ່ຽນ
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  //ຄວບຄຸມເທັກ
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Form"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 14, right: 14, bottom: 8),
          // const EdgeInsets.all(8),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ..._buildTextFields(),
                  SizedBox(
                    height: 32,
                  ),
                  ..._buildButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleClickLogin() {
    // print(
    //     "CMDev:Login with (${_usernameController.text}),(${_passwordController.text}) ");
    Navigator.pushNamed(context, AppRoute.home);
  }

  void _handleClickReset() {
    _usernameController.text = "";
    _passwordController.text = "";
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _usernameController,
        decoration: InputDecoration(labelText: "Username"),
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: "Password"),
      )
    ];
  }

  _buildButton() {
    return [
      ElevatedButton(
        onPressed: _handleClickLogin,
        // onPressed: () {
        //   print("Login");
        // },
        child: Text("Signin"),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: OutlinedButton(
          onPressed: _handleClickRegister,
          // onPressed: () {
          //   print("Login");
          // },
          child: Text("Register"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: OutlinedButton(
          onPressed: _handleClickReset,
          // onPressed: () {
          //   print("Login");
          // },
          child: Text("Reset"),
        ),
      )
    ];
  }

  void _handleClickRegister() {
    Navigator.pushNamed(context, AppRoute.register);
  }
}
