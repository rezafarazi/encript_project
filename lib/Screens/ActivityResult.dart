import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ActivityResultState extends StatefulWidget
{

  String value;
  String Keyy;
  String Opraion;

  ActivityResultState({
    required this.Opraion,
    required this.Keyy,
    required this.value,
  });


  @override
  State<StatefulWidget> createState() => ActivityResult(Opraion: this.Opraion,Keyy: this.Keyy,value: this.value);

}

class ActivityResult extends State<ActivityResultState>
{

  String result="Result";

  String value;
  String Keyy;
  String Opraion;

  ActivityResult({
    required this.Opraion,
    required this.Keyy,
    required this.value
  });


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      bottomNavigationBar: BottomButtons(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [

                TopAppBar(context)
                ,
                Text(result)

              ],
            )
        ),
      ),
    );
  }




  //TopBar Start
  Widget TopAppBar(BuildContext context)
  {
    return Container(
        height: 60,
        child: Stack(children:
        [
          Center(
            child: Image.asset('assets/images/logo.png',width: 50,height: 50,),
          )
          ,
          Positioned(
            left: 10,
            child: SizedBox(
              child: Center(
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left,color: Colors.green),
                  )
              ),
              height: 60,
              width: 50,
            )
          )
        ])
    );
  }
  //TopBar End


  //Bottom Buttons Start
  Widget BottomButtons(BuildContext context)
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green
              ),
              child: Text("Copy",style: TextStyle(color: Colors.white)),
              onPressed: ()async { 
                await Clipboard.setData(ClipboardData(text: result));
                
              },
            ),
          )
        ],
      ),
    );
  }
//Bottom Buttons End



}