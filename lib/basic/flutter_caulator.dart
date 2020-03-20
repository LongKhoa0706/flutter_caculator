import 'package:flutter/material.dart';

class Caculator extends StatefulWidget {
  @override
  _CaculatorState createState() => _CaculatorState();
}

class _CaculatorState extends State<Caculator> {
  final t1 = TextEditingController();
  final t2 = TextEditingController();

  int num1 = 0,num2 = 0 , sum = 0;

  void doPlus(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      return sum = num1 + num2;
    });
  }
  void doClear (){
    setState(() {
      t1.clear();
      t2.clear();
      sum = 0;
    });
  }
  void doMinus(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      return sum = num1 - num2;
    });
  }
  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      return sum = num1 * num2;
    });
  }
  void doDision(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      return sum = num1 ~/ num2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: <Widget>[
            Text('$sum',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: FlatButton(onPressed: doPlus,
                    child: Text("+"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: doMinus,
                    child: Text("-"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: doMul,
                    child: Text("*"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: doDision,
                    child: Text("/"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: doClear,
                    child: Text("Clear"),
                  ),
                ),
              ],
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/advance');
              },
              child: Text("Advance"),
            )
          ],
        ),
      ),
    );
  }
}
