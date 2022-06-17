import 'package:flutter/material.dart';

void main()
{
  runApp(scoreapp());
}

class scoreapp extends StatelessWidget {
  const scoreapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Score App",
      home: scorehome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class scorehome extends StatefulWidget {
  const scorehome({Key? key}) : super(key: key);

  @override
  State<scorehome> createState() => _scorehomeState();
}

class _scorehomeState extends State<scorehome> {
  int num=0;

  void Increasenum()
  {
    setState(() {
      num++;
    });
  }

  void Decreasenum()
  {
    setState(() {
      num--;
    });
  }

  void resetnum()
  {
    setState(() {
      num=0;
         });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Score Changer"),
      ),

      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.restore,),onPressed: resetnum,
      ),
     body: Center(
       child: Column(
        children: [
         SizedBox(height: 50,),
         Text("Score is:", style: TextStyle(color: Colors.green, fontSize: 40, fontWeight: FontWeight.bold),),
         Text(num.toString(), style: TextStyle(color: Colors.green, fontSize: 100,fontWeight:FontWeight.bold),),
         SizedBox(height: 30,),

         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              child: Text("Increase", style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
              onPressed:Increasenum, 
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20.0),
                fixedSize: Size(150,70),
                elevation: 10,
                shape: StadiumBorder(),
              )
             ),
            SizedBox(width: 30,),
            ElevatedButton(child: Text("Decrease", style: TextStyle(color: Colors.white,fontSize:20,fontWeight:FontWeight.bold),),
            onPressed: Decreasenum,
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(20.0),
                fixedSize: Size(150,70),
                elevation: 10,
                shape: StadiumBorder(),) )
          ],)
        ],),
     ),
    );
   
  }
}