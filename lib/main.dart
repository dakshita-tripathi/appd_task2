import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'coin flip',
      home: Homepage()
    );}}


  class Homepage extends StatefulWidget {
    const Homepage({Key? key}) : super(key: key);

    @override
    _HomepageState createState() => _HomepageState();
  }

  class _HomepageState extends State<Homepage> {
    bool a=true;
    String xyz="head";
    String abc="tail";
    @override
    Widget build(BuildContext context) {
      return Scaffold(appBar: AppBar(
        centerTitle: true,
        title: const Text('flip the coin'),
      ),
        body: Center(
          child: Container(
              padding: EdgeInsets.fromLTRB(20,40,20,20),
            //color: Colors.brown,
            alignment: Alignment.center,


              child: Column (
                children:[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all
                          (width: 2, color: Colors.green)
                    ),

                  child: Text(a ? xyz:abc,
                    style: TextStyle(fontSize: 30)),),
                    Image(image: NetworkImage(
                    a ? "https://upload.wikimedia.org/wikipedia/commons/d/dd/2017-D_Roosevelt_dime_obverse_transparent.png":"https://i3.wp.com/fortunetellingplus.com/assets/img/coins/dime-tails.png"
                  ),),
                   ElevatedButton(onPressed: (){
                            a=!a;
                          setState(() {});
                  }, child:Text("flip coin"),),],
          /*if (a==1){
          image: NetworkImage()
          }
          else{
          image: NetworkImage()
          }
          }*/),
        ),),);
    }
  }
