import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Globals.dart' as jsonLoader;

class Route extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: jsonLoader.Globals.loadlemida(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> userData) {
        if( userData.connectionState == ConnectionState.done){
        //  print(userData.data[jsonLoader.Globals.GetCurrSubSelected().toString() + "_Lemida"].length);
           for(var a in userData.data[jsonLoader.Globals.GetCurrSubSelected() + "_Lemida"])
             {
               print(a);
             }
        return new Scaffold(
                    backgroundColor: Color(int.parse("#f5f5f5".substring(1, 7), radix: 16) + 0xFF000000),
                      appBar: AppBar(backgroundColor: Color(int.parse("#ffc80d".substring(1, 7), radix: 16) + 0xFF000000),
                        actions: <Widget>
                        [
                          Container(padding: const EdgeInsets.all(10), child: Text(userData.data[jsonLoader.Globals.GetCurrSubSelected() + "_Lemida"][0]["title"].toString(),textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26,color: Colors.white),),),
                          Image.asset("assets/"+jsonLoader.Globals.GetCurrSubSelected() + ".png",width: MediaQuery.of(context).size.width/8,)
                        ],
                      ),   

        body:
        SizedBox.expand(
        child: Container(
          child: 

              ListView.builder(
                itemCount: userData.data[jsonLoader.Globals.GetCurrSubSelected() + "_Lemida"].length,
                itemBuilder: (BuildContext context, int index) 
                {
                 return getdata(userData.data[jsonLoader.Globals.GetCurrSubSelected() + "_Lemida"], index );
                },
              ),
            )
    ));
        }
        else
        {
          return Center(child: CircularProgressIndicator());//Container();
        }
      }
      );
  }
  Widget getdata(var str, int index)
  {
    return Column(
      children: <Widget>[
        Text(str[index]["data-name"].toString(),textAlign: TextAlign.right,style: TextStyle(fontSize: 25,fontWeight:FontWeight.w700)),
        Padding(padding: EdgeInsets.fromLTRB(15, 15, 15, 15), child: Text(str[index]["data"].toString(),textAlign: TextAlign.right,style: TextStyle(fontSize: 20)),),
       // Text(str[index]["data"].toString(),textAlign: TextAlign.right,style: TextStyle(fontSize: 20)),
        if(str[index] != "")
          Image.asset("assets/TohenPic/"+str[index]["img"],height: 400,width: 400,),
        SizedBox(height: 20),

      ],
    );
  } //ma kore tomi ya melech yesh lecha zain anak totach 
} // ze ben vehila (hala,,
