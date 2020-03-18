import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' show get;
import 'ImageList.dart';
import 'ImageModel.dart';
import 'dart:convert';

 
class HomeScreen extends StatefulWidget {

  static final String id="HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i=0;

  List<ImageModel> image = []; 
  int counter=0;

  void fetchImage() async{

    counter++;
    
    final response = await get('https://jsonplaceholder.typicode.com/photos/$counter');

    final imageModel=ImageModel.fromJson(json.decode(response.body));

    setState(() {
      image.add(imageModel);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
        margin: EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: AssetImage("Images/pp.jpg"),
            ),
        ),

        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                 },
              );   
            },
          ),
        ],
      ),

      body: ImageList(images:image),

      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        highlightElevation: 10.0,
        elevation: 10.0,
        backgroundColor: Color(0xFFE76C6A),
        splashColor: Color(0xFFE76C44),
        child: Icon(FontAwesomeIcons.upload),

      ),

    );
  }
}




