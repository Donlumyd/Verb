import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  static String id = 'profilePage';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });

    @override
    Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('ProfilePage'),
       ),

       body: Center(
       child: (_image == null)
      ? Text('No image selected.')
          : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: getImage,
      tooltip: 'Pick Image',
      child: Icon(Icons.add_a_photo),
      ),
     );
    }
  }




}
