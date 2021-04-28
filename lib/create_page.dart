import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  final FirebaseUser user;

  CreatePage(this.user);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  File _image;
  final picker = ImagePicker();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _bulidAppBar(),
      body: _bulidBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  _bulidAppBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            final firebaseStorageRef = FirebaseStorage.instance
                .ref()
                .child('post')
                .child('${DateTime.now().millisecondsSinceEpoch}.png');

            final task = firebaseStorageRef.putFile(
              _image, StorageMetadata(contentType: 'image/png'));
            
            task.onComplete.then((value) {
              var downloadUrl =  value.ref.getDownloadURL();

              downloadUrl.then((uri) {
                var doc = Firestore.instance.collection('post').document();
                doc.setData({
                  'id' : doc.documentID,
                  'photoUrl' : uri.toString(),
                  'contents' : textEditingController.text,
                  'email' : widget.user.email,
                  'displayName' : widget.user.displayName,
                  'userPhotoUrl' : widget.user.photoUrl
                }).then((value) => Navigator.pop(context));
              });
            });
          },
        )
      ],
    );
  }

  _bulidBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _image == null ? Text('No Image') : Image.file(_image),
          TextField(
            decoration: InputDecoration(hintText: '내용을 입력하세요'),
            controller: textEditingController,
          )
        ],
      ),
    );
  }

  Future _getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
}
