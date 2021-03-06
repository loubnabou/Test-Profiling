
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'import.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,

      home: new MyWidget(),
    );


  }

}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;  // pour eviter wahd l'erreur dyla mediaquery
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title : Text('Test Profiling'),
          backgroundColor: Color(0xFF5500b3),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Color(0xFF5500b3),
                      Color(0xFF8c3ce3),
                    ])
                ),

                child: Container(
                    child: Column(
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),//bach mayb9ach chkl mrb3
                          child: Padding(padding:EdgeInsets.all(8.0),// padding bach it9ad lina padding dyal image
                            child: Image.asset('Assets/images/logo-RAHMA.png',width:80 ,height:80 ,),//ndir tswira dyl logo image: AssetImage("Assets/images/logo-RAHMA.png"),
                          ),
                        ),
                        Padding(padding:EdgeInsets.all(8.0),// padding bach it9ad lina padding dyal image
                          child:Text('testprofiling@gmail.com',
                            style:
                            TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                            ),
                          ),
                        )
                      ],

                    )

                ),
              ),
              Menu(Icons.save_alt,'Importer',()=>importer()),
              Menu(Icons.launch,'Exporter',()=>{}),
              Menu(Icons.assignment_turned_in,'Tests',()=>{}),
              Menu(Icons.assignment,'Resultats',()=>{}),
              Menu(Icons.build,'Generer',()=>{}),
            ],
          ),
        ),
      ),

    );
  }
}

class Menu extends StatelessWidget{
  IconData icon;
  String text;
  Function onTap;
  Menu(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),

        child: InkWell(
          splashColor: Colors.deepOrange,
          onTap: (){Navigator
    .push(context, MaterialPageRoute(builder: (context)=>onTap(),
    ),
          );
          },
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon,
                    color: Color(0xFF7a34c5),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,

                        style: TextStyle(
                            fontFamily: 'RobotoMono',
                            fontSize: 16.0
                        ),
                      ),
                    )
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }

}