import 'package:flutter/material.dart';
import 'package:myvideoo/video_items.dart';
import 'package:video_player/video_player.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Flutter Video Player Demo'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_6.mp4',
            ),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
            ),
            looping: false,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_3.mp4',
            ),
            looping: false,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/video_2.mp4',
            ),
            autoplay: true,looping: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.network(
                "https://lived2.lyricslive24.com/mp4regular/play/Q3ViT3NmVmNtN25hK21GR3J3eHJSZz09/-malayalam-comedy-status-video-Malayalam-whatsapp-status-.mp4"
            ),
            looping: true,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}