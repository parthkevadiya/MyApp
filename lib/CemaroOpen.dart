
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Cam extends StatefulWidget {
  @override
  _CamState createState() => _CamState();
}

class _CamState extends State<Cam> {
  FileImage image;

  Future getimage() async {
    // ignore: deprecated_member_use
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    print(image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: getimage,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
