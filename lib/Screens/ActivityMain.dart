import 'package:encript_project/Screens/ActivityResult.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityMainState extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() => ActivityMain();

}

class ActivityMain extends State<ActivityMainState>
{


  var KeyTextBox=TextEditingController();
  var TextTextBox=TextEditingController();


  //Main Function Start
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
                EncriptKeyBox(context)
                ,
                TextBox(context)

              ],
            )
        ),
      ),
    );
  }
  //Main Function End


  //TopBar Start
  Widget TopAppBar(BuildContext context)
  {
    return Container(
      height: 60,
      child: Center(
        child: Image.asset('assets/images/logo.png',width: 50,height: 50,),
      )
    );
  }
  //TopBar End


  //Encript Key Box Start
  Widget EncriptKeyBox(BuildContext context)
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: TextField(
        controller:KeyTextBox,
        maxLength: 32,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Encript Key',
          hintText: 'Exmaple : my32lengthsupersecretnooneknows1 (32 Char Key)',
        ),
      ),
    );
  }
  //Encript Key Box End


  //Encript Key Box Start
  Widget TextBox(BuildContext context)
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height-150,
      padding: EdgeInsets.all(10),
      child: TextField(
        controller:TextTextBox,
        keyboardType: TextInputType.multiline,
        maxLines: 10,
        maxLength: 4096,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Value',
          hintText: 'Exmaple : abc65564cdscjkdscbdjs',
        ),
      ),
    );
  }
  //Encript Key Box End


  //Bottom Buttons Start
  Widget BottomButtons(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        children: [

          Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width/2-20,
            height: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green
              ),
              child: Text("Encript",style: TextStyle(color: Colors.white)),
              onPressed: (){ Encript_OnClick(context); },
            ),
          )
          ,
          Container(
            margin: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width/2-20,
            height: 60,
            child: TextButton(
              child: Text("Decript",style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red
              ),
              onPressed: (){ Decript_OnClick(context); },
            ),
          )

        ],
      ),
    );
  }
  //Bottom Buttons End



  /********************Events***************************/


  //OnClick Encript Button Event Start
  void Encript_OnClick(BuildContext context)
  {
    if(KeyTextBox.text.length == 32)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          ActivityResultState(
              Opraion: "ENC", Keyy: KeyTextBox.text, value: TextTextBox.text)));
    }
  }
  //OnClick Encript Button Event End

  //OnClick Decript Button Event Start
  void Decript_OnClick(BuildContext context)
  {
    if(KeyTextBox.text.length == 32) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>
          ActivityResultState(
              Opraion: "DEC", Keyy: KeyTextBox.text, value: TextTextBox.text)));
    }
  }
  //OnClick Decript Button Event End


}