import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'videoClass.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15, 70, 10, 0),
            child: Text("News Feed",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView(
                children: <Widget>[
                  VideoClass(
                    videoURL: 'https://www.youtube.com/watch?v=Lr-o3DEtqXA',
                    title: 'Breast Cancer Prevention Tips | Dr. Rushabh Kothari ',
                  ),
                  SizedBox(height: 18),
                  Card(
                    color: Colors.grey[700],
                      child: ListTile(
                        
                        title: Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                            child: Text('Dr K Robbins',
                                style: GoogleFonts.montserrat(
                                   color: Colors.grey[100],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))),
                        leading: CircleAvatar(
                            radius: 20,
                            child: Image.asset('lib/assets/person.png')),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Text('Laboris reprehenderit occaecat enim velit eu ut dolore laboris excepteur. In laborum laborum magna ea consequat consequat ea non nostrud anim officia irure. Mollit ad commodo labore excepteur labore duis. Est est sit do cillum culpa mollit nulla.',
                                  style: GoogleFonts.montserrat(
                                     color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Card(
                    color: Colors.grey[700],
                      child: ListTile(
                        
                        title: Padding(
                            padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                            child: Text('Dr C Ciyoni',
                                style: GoogleFonts.montserrat(
                                   color: Colors.grey[100],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ))),
                        leading: CircleAvatar(
                            radius: 20,
                            child: Image.asset('lib/assets/person.png')),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Text('Ea incididunt occaecat exercitation laboris id elit labore sunt incididunt exercitation quis. Voluptate exercitation excepteur voluptate proident adipisicing aute eu reprehenderit proident ex pariatur officia exercitation dolore. Excepteur laboris dolor labore magna adipisicing laboris laboris excepteur dolore ea proident culpa fugiat.',
                                  style: GoogleFonts.montserrat(
                                     color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                   VideoClass(
                    videoURL:
                        'https://www.youtube.com/watch?v=4Fb5mTjJfdc',
                    title: 'Foods that prevent cancer',
                  ),
                  SizedBox(height: 18),
                  VideoClass(
                    videoURL:
                        'https://www.youtube.com/watch?v=BMMkpBX52wI',
                    title: 'Understanding Breast Cancer & treatment options | Dr.Akshita Singh',
                  ),
                  
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 14)
        ],
      ),
    );
  }
}
