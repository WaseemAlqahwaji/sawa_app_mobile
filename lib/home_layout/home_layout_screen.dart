import 'package:flutter/material.dart';
import 'package:sawa_applications/util/app_names.dart';
import 'package:sawa_applications/util/images_path.dart';

import '../components/components.dart';
import '../util/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sawa Company",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: defaultAppItem(
            imagePath: ImagesPaths.imagesPaths[index],
            appLink: UrlLauncher.urlLauncher[index],
            appName: AppNames.appsNames[index],
          ),
        ),
        separatorBuilder: (context, index) => Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
        itemCount: AppNames.appsNames.length,
      ),
    );
  }
}
