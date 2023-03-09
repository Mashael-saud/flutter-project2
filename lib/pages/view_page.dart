import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'DJwsKZ9-f10',
    params: const YoutubePlayerParams(showFullscreenButton: true),
    autoPlay: false,
  );

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: 400,
            child: YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
          ),
        ],
      ),

      // PageView(
      //   scrollDirection: Axis.horizontal,
      //   controller: controller,
      //   children: <Widget>[
      //     Center(
      //       child: Column(
      //         children: [
      //           Column(
      //             children: [
      //               // const Text(
      //               //   'الخريف',
      //               //   style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
      //               // ),

      //               Image.asset(
      //                 'asset/images/aut.jpg',
      //                 width: 500,
      //                 height: 857,
      //                 fit: BoxFit.cover,
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     Center(
      //       child: Column(
      //         children: [
      //           Expanded(
      //             child: Column(
      //               children: [
      //                 Image.asset(
      //                   'asset/images/wit.jpg',
      //                   width: 550,
      //                   height: 857,
      //                   fit: BoxFit.cover,
      //                 ),
      //                 // const Text(
      //                 //   'الشتاء',
      //                 //   style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
      //                 // ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Center(
      //       child: Column(
      //         children: [
      //           Column(
      //             children: [
      //               // Text(
      //               //   'الصيف',
      //               //   style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
      //               // ),
      //               Image.asset(
      //                 'asset/images/sum.jpg',
      //                 width: 550,
      //                 height: 857,
      //                 fit: BoxFit.cover,
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //     Center(
      //       child: Column(
      //         children: [
      //           Column(
      //             children: [
      //               // const Text(
      //               //   'الربيع',
      //               //   style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
      //               // ),
      //               Image.asset(
      //                 'asset/images/spr.jpg',
      //                 width: 550,
      //                 height: 857,
      //                 fit: BoxFit.cover,
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
