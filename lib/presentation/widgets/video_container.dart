
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_learnig_ui/constants/colors.dart';
import 'package:video_player/video_player.dart';
class VideoContainer extends StatefulWidget {
  const VideoContainer({super.key});

  @override
  State<VideoContainer> createState() => _VideoContainerState();
}

class _VideoContainerState extends State<VideoContainer> {
  final videoPlayerController = VideoPlayerController.network(
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
 ChewieController? chewieController;
init()async{ 
  await videoPlayerController.initialize();

 chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  autoPlay: true,
  looping: false,
);
setState(() {
  
});
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }
@override
void dispose() {
  videoPlayerController.dispose();
  chewieController!.dispose();
  chewieController!.pause();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: COLOR_CONST.background_color_dark,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height/4 ,
            child: 
         
            chewieController == null?const Center(
          child: CircularProgressIndicator()
            ):
        
            
            
            Chewie(
              controller: chewieController!,
            )
          ),
          SizedBox(height: 5.h,),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
      const Icon(Icons.skip_previous
      , 
        color: Colors.white
      ), 
      SizedBox(width: 5.w,), 
      
      const Text("Previous", 
      
      style: TextStyle(
        fontSize: 10,  fontWeight: FontWeight.w400, 
        color: Colors.white
      ),
      )
              ],
            ), 
      
          Row(
              mainAxisSize: MainAxisSize.min,
              children: [
      const Icon(Icons.subject_outlined, 
        color: Colors.white
      
      ), 
      SizedBox(width: 5.w,), 
      
      const Text("Subtitle", 
      
      style: TextStyle(
        fontSize: 10,  fontWeight: FontWeight.w400,   color: Colors.white
      ),)
              ],
            ), 
      
          
          
          
           Row(
              mainAxisSize: MainAxisSize.min,
              children: [
      const Icon(Icons.skip_next ,  color: Colors.white), 
      SizedBox(width: 5.w,), 
      
      const Text("Next", 
      
      style: TextStyle(
        fontSize: 10,  fontWeight: FontWeight.w400,  color: Colors.white
      ),)
              ],
            ), 
      
                ],
              ),
          ), 
          SizedBox(height: 5.h,)
        ],
      ),
    );
  }
}