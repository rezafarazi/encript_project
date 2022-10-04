import 'package:encript_project/Screens/ActivityMain.dart';
import 'package:flutter/material.dart';

//Main Function Start
void main()
{
  runApp(MyApp());
}
//Main Function End

//Main Activity Class Start
class MyApp extends StatelessWidget
{

  //Class Main Function Start
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Encript Project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ActivityMainState(),
    );
  }
  //Class Main Function End

}
//Main Activity Class End