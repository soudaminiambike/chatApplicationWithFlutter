import 'package:flutter/material.dart';
import 'package:flutter_chatapp/UserListScreen.dart';
import 'package:flutter_chatapp/loginScreen.dart';

void main() async{
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}


class MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Demo',
      /*theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600]
      ),*/
      home: LoginScreen(),
//      home: BlocProvider(
//          bloc: ConfigBloc(),
//          child: SplashScreen()),
    );
  }

}
