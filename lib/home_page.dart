import 'package:flutter/material.dart';
import 'package:tostudint/pages/arabic_page.dart';
import 'package:tostudint/pages/math_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
int index=0;



class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(
            width:200 ,
            child: ListView(
// Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
               Container(child: Center(child: Text('COURSES',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),decoration: BoxDecoration(color: Colors.blue),height: 57,),
                ListTile(
                  leading: Icon(Icons.home), title: Text("Arabic"),
                  onTap: () {
                    setState(() {
                      index=0;
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings), title: Text("math"),
                  onTap: () {
                    setState(() {
                      index=1;
                    });
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contacts), title: Text("Contact Us"),
                  onTap: () {
                    setState(() {
                      index=0;
                    });
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),


        appBar: AppBar(title: Text('Academy App'),toolbarHeight: 100,centerTitle: true,),
      body: screenCourese[index],
    ));
  }

  List<Widget>screenCourese=[
    ArabicPage(),
    MathPage()

  ];
}
