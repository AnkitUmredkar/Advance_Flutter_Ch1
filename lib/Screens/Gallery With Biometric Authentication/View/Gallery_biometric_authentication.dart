import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/galleryProvider.dart';

class GalleryBiometricAuthentication extends StatelessWidget {
  const GalleryBiometricAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    GalleryProvider galleryProvider =
    Provider.of<GalleryProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          leading: const Icon(
            Icons.menu,
          ),
          centerTitle: true,
          title: const Text(
            'Gallery',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 4,
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert, size: width * 0.08),
              itemBuilder: (context) =>
              [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Hide Folders',
                      style: TextStyle(fontSize: width * 0.042)),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Setting',
                      style: TextStyle(fontSize: width * 0.042)),
                ),
              ],
              onSelected: (item) async {
                if (item == 0) {
                  galleryProvider.localUserAuthentication(context);
                }
              },
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              width * 0.04, height * 0.022, width * 0.04, height * 0.022),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue.withOpacity(0.12)),
                    child: Row(
                      children: [
                        Text(
                          'Albums',
                          style: TextStyle(
                              fontSize: width * 0.038,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade700),
                        ),
                        Icon(Icons.arrow_drop_down, color: Colors.blue.shade700)
                      ],
                    ),
                  ),
                  const Spacer(),
                  Icon(Icons.search, size: width * 0.064),
                ],
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: width * 0.04,
                    children: List.generate(headings.length, (index) =>
                        Column(
                          children: [
                            Container(
                              height: height * 0.1225,
                              width: width * 0.27,
                              margin: EdgeInsets.only(bottom: 5,
                                  top: (index != 0 && index != 1 && index != 2)
                                      ? height * 0.022
                                      : 0),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(galleryImages[index]),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.blue),
                            ),
                            Text(
                              headings[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: width * 0.038),
                            ), Text(
                              galleryProvider.randomNumber().toString(),
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.bold,
                                  fontSize: width * 0.028),
                            ),
                          ],
                        ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List headings = [
  'Camera',
  'Family',
  'Facebook',
  'WhatsApp',
  'ScreenShot',
  'Instagram',
  'Download',
  'College',
  'Nature',
  'Animals',
  'Birds',
  'Car',
];

List galleryImages = [
  'assets/images/GalleryImages/1.jpg',
  'assets/images/GalleryImages/2.jpg',
  'assets/images/GalleryImages/3.jpg',
  'assets/images/GalleryImages/4.jpeg',
  'assets/images/GalleryImages/5.jpeg',
  'assets/images/GalleryImages/6.jpg',
  'assets/images/GalleryImages/7.jpeg',
  'assets/images/GalleryImages/8.jpeg',
  'assets/images/GalleryImages/9.jpg',
  'assets/images/GalleryImages/10.webp',
  'assets/images/GalleryImages/11.jpg',
  'assets/images/GalleryImages/12.jpg',
];
