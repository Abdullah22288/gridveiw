import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   drawer: Drawer(
child: Container(
  color: Colors.grey,
  child: Column(
    children: [
      DrawerHeader(
          child: UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'
              ),
            ),

              accountName: Text('Md.Abdullah'),
              accountEmail: Text('Md.Abdullah@gmail.com')))
    ],
  ),
),

   ),
      appBar: AppBar(
        centerTitle: true,
        title:Text("GridView"),
        actions:
        [Icon(Icons.notifications,size: 30, )],
      ),

      body: GridView.count(crossAxisCount: 2,

        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
          child: Card(
            color: Colors.yellow,
            child: Stack(

              children: <Widget>[

                Center(
                  child: Icon(Icons.wifi,size: 50,color: Colors.white,),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 70),
                  child: Text('WiFi',style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
          child: Card(
            color: Colors.green,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.devices,size: 50,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 50),
                  child: Text('Connected',style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Card(
            color: Colors.purple,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.alarm,size: 50,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 80),
                  child: Text('Clock',style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Card(
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.person,size: 50,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 80),
                  child: Text('Friend',style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Card(
            color: Colors.cyan,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.messenger,size: 50,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 60),
                  child: Text('Messege',style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Card(
            color: Colors.brown,
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(Icons.my_location,size: 50,color: Colors.white,),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120,left: 50),
                  child: Text('Location',style: TextStyle(color: Colors.white,fontSize: 22),),
                ),
              ],
            ),
          ),
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      
    );
  }
}
