import 'package:flutter/material.dart';
import 'package:myportofolio_mobile/screens/menu.dart';
import 'package:myportofolio_mobile/screens/project_form.dart';
import 'package:myportofolio_mobile/screens/artwork_form.dart';

class LeftDrawer extends StatelessWidget{
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color:Colors.red),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('My Portofolio', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.black),),
              SizedBox(height:10),
              Text('Explore personal projects, artworks, and experiences!', style:TextStyle(fontSize: 15, color:Colors.white, backgroundColor: Colors.black))],
            ),
          ),
          //Routing to Home Page
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
            },
          ),
          //Routing to Add Projects Page
          ListTile(
            leading: const Icon(Icons.add_circle_outlined),
            title: const Text('Add Project'),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>ProjectFormPage()));
            },
          ),

          ListTile(
            leading: const Icon(Icons.add_circle_outlined),
            title: const Text('Submit Artwork'),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>ArtworkForm()));
            },
          ),
        ]
      )
    );
  }
}

