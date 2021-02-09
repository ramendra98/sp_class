import 'package:flutter/material.dart';

import 'bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bloc = Bloc();
    return Scaffold(
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<Object>(
              stream: bloc.loginEmail,
              builder: (context, snapshot) {
                return TextFormField(
                  decoration: InputDecoration(
                    hintText: "name",
                    errorText: snapshot.error,
                  ),
                  onChanged: bloc.changeEmail,
                );
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
