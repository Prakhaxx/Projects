import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class StackImg extends StatefulWidget {
  const StackImg({super.key});

  @override
  State<StackImg> createState() => _StackImgState();
}

class _StackImgState extends State<StackImg> {
  File? _image;
  List<XFile>? images = [];

  Future<void> _getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> takePicture() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        images = [XFile(pickedImage.path)];
      });
    }
  }

  final List<File> _images1 = [];

  Future<void> _pickImages1() async {
    final picker = ImagePicker();
    List<XFile>? pickedFiles = await picker.pickMultiImage();
    List<File> selectedImages = [];
    for (var pickedFile in pickedFiles) {
      selectedImages.add(File(pickedFile.path));
    }
    setState(() {
      _images1.addAll(selectedImages);
    });
  }

  Widget _buildImageList1() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _images1.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.file(
            _images1[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Stacking'),
        actions: [
          FloatingActionButton(
            onPressed: _getImage,
            tooltip: 'getImage',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: takePicture,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child: const Icon(Icons.camera_alt),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _pickImages1,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add),
                  Text('Pick Images'),
                ],
              ),
            ),
            const SizedBox(height: 8),
            if (_image != null)
              Image.file(_image!), // Removed unnecessary null check
            const SizedBox(height: 8),
            if (images != null && images!.isNotEmpty)
              ...images!.map((XFile image) => Image.file(File(image.path))),
            const SizedBox(height: 8),
            if (_images1.isNotEmpty) _buildImageList1(),
          ],
        ),
      ),
    );
  }
}
