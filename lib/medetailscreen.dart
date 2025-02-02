import 'package:flutter/material.dart';
import 'DATA/medata.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';


class ExerciseDetailScreen extends StatelessWidget {
  final exercisedetails;

  ExerciseDetailScreen(this.exercisedetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(exercisedetails.title, style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                exercisedetails.title,textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
            Image.asset(
              exercisedetails.imageAsset,
              width: 200, // Adjust the size as needed
              height: 200, // Adjust the size as needed
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Steps to Perform:",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ),
            for (var step in exercisedetails.steps)
              ListTile(
                title: Text(step,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal
                ),),
              ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Exercise Video: ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () => launchUrl(Uri.parse(exercisedetails.videoUrl)),
              child: Text(
                'Click here to open the detailed video',
                style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class VideoPlayer extends StatefulWidget {
  final String videoUrl;

  VideoPlayer({required this.videoUrl});

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final flutterWebviewPlugin = FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: WebviewScaffold(
        url: widget.videoUrl,
      ),
    );
  }
}


