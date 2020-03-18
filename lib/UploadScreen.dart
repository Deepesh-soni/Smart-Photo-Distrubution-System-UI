import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Constants.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:multi_image_picker/multi_image_picker.dart';



class UploadScreen extends StatelessWidget{

  static final String id="Upload_Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),

      bottomNavigationBar: BottomAppBar(
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              IconButton( 
                onPressed: () {},
                icon: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
                iconSize: 30.0,
              ),

              IconButton( 
                onPressed: () {},
                icon: Icon(
                  Icons.image,
                  color: Colors.white,
                ),
                iconSize: 30.0,
              ), 
            ],
          ),
        ),
        elevation: 28.0,
      )
    );
  }
}