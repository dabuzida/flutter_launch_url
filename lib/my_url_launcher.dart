import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrlLauncher extends StatefulWidget {
  const MyUrlLauncher({super.key});

  @override
  State<MyUrlLauncher> createState() => _MyUrlLauncherState();
}

class _MyUrlLauncherState extends State<MyUrlLauncher> {
  final Uri _url = Uri.parse('https://sentents.s3.usss-west-1.wasabisys.com/fpf53fhldj3nwgzi.ogg');
  // final Uri _url = Uri.parse('https://sentents.s3.us-west-1.wasabisys.com/fpf53fhldj3nwgzi.ogg');
  // final Uri _url = Uri.parse('https://flutter.dev');

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Text('재생: '),
              ElevatedButton(
                child: const Text('재생여부확인'),
                onPressed: () async {
                  // final bool canPlay = await canLaunchUrl(_url);
                  // print(canPlay);
                  // const String syncPath = 'assets/ko-KR-Standard-A.mp3';

                  // print(await launchUrl(_url));
                  print(await canLaunchUrl(_url));
                },
              )
            ],
          ),
          const SizedBox(height: 50),
          Row(
            children: <Widget>[
              const Text('파일 있는지 확인: '),
              ElevatedButton(
                child: const Text('Check'),
                onPressed: () async {
                  const String path = 'https://www.aradfgagfdafgdafgdafdg23423qwsdff23.com/';
                  // const String path = 'http://localhost:8769/assets/ko-KR-Standard-A.mp3';
                  // const String path = 'assets/ko-KR-Standard-A.mp3';
                  final Uri url = Uri.parse(path);
                  // print(url);
                  // final bool launch = await launchUrl(url, mode: LaunchMode.);
                  // // print(launch);
                  final bool canLaunch = await canLaunchUrl(url);
                  print(canLaunch);

// assets/ko-KR-Standard-A.mp3
// http://localhost:2229/assets/ko-KR-Standard-A.mp3

                  // const String path2 = 'assets/assets/ko-KR-Standard-A.mp3';
                  // const String path2 = 'http://localhost:2229/#/assets/assets/ko-KR-Standard-A.mp3';
                  // final Uri url2 = Uri.parse(path2);
                  // final bool result2 = await canLaunchUrl(url2);
                  // print(result2);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
