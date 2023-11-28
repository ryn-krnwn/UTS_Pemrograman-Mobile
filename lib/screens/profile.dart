import 'package:flutter/material.dart';
import 'package:educationapps/screens/welcome_screen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.only(bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Profile',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 120,
                    height:120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                      image: AssetImage('images/img.jpg')
                    )
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Ryan Kurniawan',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text('( 21552011165 )', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)
                ],
              ),
            ),
              SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      child: 
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        title: Text('manage profil'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: Icon(Icons.settings,
                        color: Colors.blue,
                        ),
                        title: Text('Settings'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: Icon(Icons.book,
                        color: Colors.blue,
                        ),
                        title: Text('User Guide'),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: ListTile(
                        leading: IconButton(
                        icon: Icon(Icons.logout,color: Colors.red,),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => WelcomeScreen(),),);
            
                          },
                        color: Colors.red,
                        ),
                        title: Text('log Out'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
            
        ),
      ),
      
    );
  }
}