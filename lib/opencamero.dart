import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OpenCamera extends StatefulWidget {
  @override
  _OpenCameraState createState() => _OpenCameraState();
}

class _OpenCameraState extends State<OpenCamera> {
  FileImage image;

  Future getimage() async {
    // ignore: deprecated_member_use
    final image = await ImagePicker.pickImage(source: ImageSource.camera);
    print(image);
  }

  @override
  void initState() {
    super.initState();
    getimage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
