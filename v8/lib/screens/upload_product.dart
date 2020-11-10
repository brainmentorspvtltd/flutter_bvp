import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fk_appwend/db/dboperations.dart';
import 'package:fk_appwend/models/product.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadProduct extends StatefulWidget {
  FirebaseApp app;
  UploadProduct(FirebaseApp app) {
    this.app = app;
  }
  @override
  _UploadProductState createState() => _UploadProductState();
}

class _UploadProductState extends State<UploadProduct> {
  FirebaseStorage fbs;

  //FirebaseStorage(storageBucket: "gs://fkdemoapp-1bd12.appspot.com");

  _saveRecord() async {
    Product product = Product();
    print("DOWNLOAD URL IS $downloadURL");
    product.name = _nameCtrl.text;
    product.imagePath = downloadURL;
    product.price = double.parse(_priceCtrl.text);
    product.desc = _descCtrl.text;
    print("Product DETAIL IS $product");
    String result = await DbOperations.addProduct(product);
    setState(() {
      msg = result;
    });
  }

  loadFS() {
    fbs = FirebaseStorage.instanceFor(
        app: widget.app, bucket: "gs://fkdemoapp-1bd12.appspot.com");
  }

  @override
  initState() {
    super.initState();
    loadFS();
  }

  _createTxtField(String label, TextEditingController ctrl) {
    return TextField(
      decoration: InputDecoration(
          hintText: label,
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.add)),
      controller: ctrl,
    );
  }

  File imageFile;
  _openCameraOrGallery(String param) async {
    ImagePicker imagePicker = ImagePicker();
    PickedFile pickedFile =
        await imagePicker.getImage(source: ImageSource.camera);
    imageFile = File(pickedFile.path);
    print("Image Path is $imageFile");
    setState(() {});
  }

  String imagePath;
  String downloadURL;
  _uploadImage() {
    imagePath = "images/${DateTime.now()}.jpg";
    Reference ref = fbs.ref().child(imagePath);
    UploadTask uploadTask = ref.putFile(imageFile);
    uploadTask.then((TaskSnapshot tasksnapshot) async {
      downloadURL = await tasksnapshot.ref.getDownloadURL();
      setState(() {
        msg = "File Uploaded $downloadURL";
      });
    }).catchError((err) => setState(() {
          msg = "Error in Upload $err";
        }));
    if (uploadTask.snapshot.state == TaskState.success) {
      setState(() {
        msg = "File Uploaded ";
      });
    } else {
      msg = "File Not Uploaded....";
    }
  }

  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _priceCtrl = TextEditingController();
  TextEditingController _descCtrl = TextEditingController();
  String msg = "";
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Upload'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              msg,
              style: TextStyle(fontSize: 30),
            ),
            _createTxtField('Product Name', _nameCtrl),
            _createTxtField('Product desc', _descCtrl),
            _createTxtField('Product Price', _priceCtrl),
            Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.image,
                      size: 30,
                    ),
                    onPressed: () {
                      _openCameraOrGallery("");
                    }),
                RaisedButton(
                  onPressed: () {
                    _uploadImage();
                  },
                  child: Text('Upload Image'),
                )
              ],
            ),
            RaisedButton(
              onPressed: () {
                _saveRecord();
              },
              child: Text('Save '),
            ),
            Container(
              width: deviceSize.width,
              height: deviceSize.height / 2,
              child: imageFile == null
                  ? Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/600px-No_image_available.svg.png')
                  : Image.file(imageFile),
            )
          ],
        ),
      ),
    );
  }
}
