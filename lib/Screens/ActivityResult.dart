import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityResultState extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => ActivityResult();
}

class ActivityResult extends State<ActivityResultState>
{

  String result="Result";


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
              onPressed: (){ },
            ),
          )
        ],
      ),
    );
  }
//Bottom Buttons End



}