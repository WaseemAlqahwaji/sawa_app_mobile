import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


Widget defaultAppItem({
  required String imagePath,
  required String appName,
  required Uri appLink,
}) =>
    SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 35.0,
            backgroundImage: AssetImage(imagePath),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 10.0,
              ),
              child: Text(
                appName,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              try {
                await launchUrl(appLink,mode: LaunchMode.externalApplication);
              } catch (error) {
                print(error);
              }
            },
            child: const Icon(
              Icons.download,
              size: 40.0,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
