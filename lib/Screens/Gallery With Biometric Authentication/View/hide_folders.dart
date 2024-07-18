import 'package:flutter/material.dart';

class HideFoldersPage extends StatelessWidget {
  const HideFoldersPage({super.key});

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          leading: const Icon(
            Icons.menu,
          ),
          centerTitle: true,
          title: const Text(
            'Recent',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 4,
          actions: [
            Icon(Icons.search, size: width * 0.064),
            const SizedBox(width: 2),
            Icon(Icons.more_vert, size: width * 0.064),
            const SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              width * 0.04, height * 0.022, width * 0.04, height * 0.022),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.022,
              ),
              Wrap(
                  spacing: width * 0.026,
                  children: List.generate(
                    hideFoldarImages1.length,
                        (index) =>
                        Container(
                          height: height * 0.073,
                          width: width * 0.16,
                          margin: EdgeInsets.only(
                              bottom: 5,
                              top: (index != 0 &&
                                  index != 1 &&
                                  index != 2 &&
                                  index != 3 &&
                                  index != 4)
                                  ? height * 0.0062
                                  : 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(hideFoldarImages1[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                        ),
                  )),
              SizedBox(
                height: height * 0.022,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        fontSize: width * 0.05, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.022,
              ),
              Wrap(
                  spacing: width * 0.026,
                  children: List.generate(
                    hideFoldarImages2.length,
                        (index) =>
                        Container(
                          height: height * 0.073,
                          width: width * 0.16,
                          margin: EdgeInsets.only(
                              bottom: 5,
                              top: (index != 0 &&
                                  index != 1 &&
                                  index != 2 &&
                                  index != 3 &&
                                  index != 4)
                                  ? height * 0.0062
                                  : 0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(hideFoldarImages2[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                        ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

List hideFoldarImages2 = [
  'assets/images/GalleryImages/HideFolderImages2/1.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l2.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l3.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l4.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l5.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l6.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l7.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l8.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l9.jpg',
  'assets/images/GalleryImages/HideFolderImages2/l10.jpg',
  'assets/images/GalleryImages/HideFolderImages2/11.jpg',
  'assets/images/GalleryImages/HideFolderImages2/12.jpg',
  'assets/images/GalleryImages/HideFolderImages2/13.jpg',
  'assets/images/GalleryImages/HideFolderImages2/14.jpg',
  'assets/images/GalleryImages/HideFolderImages2/15.jpg',
];

List hideFoldarImages1 = [
  'assets/images/GalleryImages/HideFolderImages/1.jpg',
  'assets/images/GalleryImages/HideFolderImages/2.jpg',
  'assets/images/GalleryImages/HideFolderImages/3.jpg',
  'assets/images/GalleryImages/HideFolderImages/4.jpg',
  'assets/images/GalleryImages/HideFolderImages/5.jpg',
  'assets/images/GalleryImages/HideFolderImages/6.jpg',
  'assets/images/GalleryImages/HideFolderImages/7.jpg',
  'assets/images/GalleryImages/HideFolderImages/8.jpg',
  'assets/images/GalleryImages/HideFolderImages/9.jpg',
  'assets/images/GalleryImages/HideFolderImages/10.jpg',
  'assets/images/GalleryImages/HideFolderImages/11.jpg',
  'assets/images/GalleryImages/HideFolderImages/12.jpg',
  'assets/images/GalleryImages/HideFolderImages/13.jpg',
  'assets/images/GalleryImages/HideFolderImages/14.jpg',
  'assets/images/GalleryImages/HideFolderImages/15.jpg',
  'assets/images/GalleryImages/HideFolderImages/16.jpg',
  'assets/images/GalleryImages/HideFolderImages/17.jpg',
  'assets/images/GalleryImages/HideFolderImages/18.jpg',
  'assets/images/GalleryImages/HideFolderImages/19.jpg',
  'assets/images/GalleryImages/HideFolderImages/20.jpg'
];