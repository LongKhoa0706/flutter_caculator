import 'package:flutter/material.dart';
import 'package:fluttercaculator/advance/provider.dart';
import 'package:provider/provider.dart';

class AdvanceFlutterCaculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>CaculatorProvider(),
      child: FlutterCaculatorWidge(),
    );
  }
}
class FlutterCaculatorWidge extends StatelessWidget {
  final t1 = TextEditingController();
  final t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Consumer<CaculatorProvider>(builder: (BuildContext context, caculatorprovider, Widget child) {
        return Column(
          children: <Widget>[
            Text(caculatorprovider.sum.toString(),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: FlatButton(onPressed: () =>caculatorprovider.doPlus(t1.text, t2.text),
                    child: Text("+"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: ()=>caculatorprovider.doMinus(t1.text, t2.text),
                    child: Text("-"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: ()=>caculatorprovider.doMul(t1.text, t2.text),
                    child: Text("*"),
                  ),
                ),
                Flexible(
                  child: FlatButton(onPressed: ()=>caculatorprovider.doDivision(t1.text, t2.text),
                    child: Text("/"),
                  ),
                ),
//                Flexible(
//                  child: FlatButton(onPressed: doClear,
//                    child: Text("Clear"),
//                  ),
//                ),
              ],
            ),

          ],
        );
      },

      ),
    );
  }
}

