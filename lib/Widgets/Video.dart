import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class MyVideo extends StatelessWidget {
  static String myVideoId = 'PQSagzssvUQ';
  // the full url: https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA
  // it's an interesting video from NASA on Youtube

  // Initiate the Youtube player controller
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Customer Remarks'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(children: [
            Container(
              width: 200,
              height: 200,
              child: YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 150,
              height: 200,
              child: Image.asset("assets/sofaa.jpg"),
            )
          ]),
        ));
  }
}
