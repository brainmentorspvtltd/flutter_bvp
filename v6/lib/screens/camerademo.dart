import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraDemo extends StatefulWidget {
  @override
  _CameraDemoState createState() => _CameraDemoState();
}

class _CameraDemoState extends State<CameraDemo> {
  File imageFile;
  takePic() async {
    ImagePicker picker = ImagePicker();
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);
    //PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery);
    String filePath = pickedFile.path;

    setState(() {
      imageFile = File(filePath);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Demo'),
      ),
      body: Column(
        children: [
          Expanded(
              child: imageFile == null
                  ? Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/600px-No_image_available.svg.png')
                  : Container(
                      child: Image.file(imageFile),
                    )),
          Divider(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              takePic();
            },
            child: Text('Take Pic'),
          )
        ],
      ),
    );
  }
}
